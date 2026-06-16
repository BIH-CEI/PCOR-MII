#!/usr/bin/env python3
"""
Render DE/EN translation tables for PROMIS Questionnaires from the MII PRO-Modul dependency.

For each configured Questionnaire, walks items and answer options, extracts both English source
texts and German translations (from the FHIR translation extension OR from raw text-field heuristic),
and writes a Markdown table between AUTO-TRANSLATION-TABLE markers in the corresponding pagecontent file.

Idempotent: re-runs replace the section between markers, leaving the rest of the page untouched.

Usage:
    python3 scripts/render-promis-translations.py
"""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path
from typing import Optional, Tuple, List, Dict, Any

# ─── Configuration ───────────────────────────────────────────────────────────

REPO = Path(__file__).resolve().parent.parent

# Which PROMIS Questionnaires to render. Maps:
#   resource id in MII PRO-Modul  →  target pagecontent file in PCOR-MII
QUESTIONNAIRES = {
    "mii-qst-pro-promis-29": "PROMIS-29.md",
    "mii-qst-pro-promis-16": "PROMIS-16.md",
    "mii-qst-pro-promis-cognitive-function-sf4a": "PROMIS-Cognitive-Function.md",
}

DEPENDENCY_PACKAGE = "de.medizininformatikinitiative.kerndatensatz.pros"

BEGIN_MARKER = "<!-- BEGIN AUTO-TRANSLATION-TABLE -->"
END_MARKER = "<!-- END AUTO-TRANSLATION-TABLE -->"

TRANSLATION_EXT = "http://hl7.org/fhir/StructureDefinition/translation"

# Heuristic markers for German text (used as fallback when items have DE directly in text-field)
DE_HINT_RE = re.compile(
    r"\b(Ich|Mein|Meine|Wie|Was|Sind|Hatten|Können|Welche|Sehr|Nicht|fühlte|gefühlt|war|haben|sich|"
    r"den|der|die|das|nach|bei|mit|Stunden?|Tagen?|Sie|nicht|über|ähnlich|während|musste|nur|"
    r"erschöpft|schlecht|kaum|ziemlich)\b"
)

# ─── Helpers ─────────────────────────────────────────────────────────────────

def get_translation(elem_underscore, lang):
    """Read translation extension content for given lang code from a primitive's _underscore dict."""
    if not elem_underscore:
        return None
    for ext in elem_underscore.get("extension", []):
        if ext.get("url") != TRANSLATION_EXT:
            continue
        sub_lang = next(
            (e["valueCode"] for e in ext.get("extension", []) if e["url"] == "lang"), None
        )
        sub_content = next(
            (e["valueString"] for e in ext.get("extension", []) if e["url"] == "content"), None
        )
        if sub_lang == lang:
            return sub_content
    return None


def looks_german(s):
    return bool(s and DE_HINT_RE.search(s))


def label_pair(text, underscore):
    """Return (en, de) given a primitive text and its sibling _-extensions dict."""
    de_via_ext = get_translation(underscore, "de")
    en_via_ext = get_translation(underscore, "en")
    if de_via_ext:
        return text or None, de_via_ext
    if en_via_ext:
        return en_via_ext, text or None
    if not text:
        return None, None
    if looks_german(text):
        return None, text
    return text, None


def is_score_helper(item: dict) -> bool:
    """Score raw/tscore items are calculation helpers, not original questionnaire items."""
    lid = item.get("linkId", "")
    return any(k in lid for k in ("tscore", "-raw", "-score"))


def md_cell(s):
    return (s or "").replace("|", "\\|").replace("\n", " ").strip()


# ─── Locate dependency package ───────────────────────────────────────────────

def read_dependency_version():
    """Parse sushi-config.yaml to get the PRO-Modul dependency version."""
    cfg = (REPO / "sushi-config.yaml").read_text(encoding="utf-8")
    m = re.search(rf"{re.escape(DEPENDENCY_PACKAGE)}:\s*([\S]+)", cfg)
    if not m:
        sys.exit(f"ERROR: dependency {DEPENDENCY_PACKAGE} not found in sushi-config.yaml")
    return m.group(1)


def find_questionnaire(resource_id, version):
    """Find the Questionnaire JSON in the FHIR package cache."""
    cache = Path.home() / ".fhir" / "packages"
    pkg_dir = cache / f"{DEPENDENCY_PACKAGE}#{version}" / "package"
    candidate = pkg_dir / f"Questionnaire-{resource_id}.json"
    if candidate.exists():
        return candidate
    # Older packages had an examples subdir
    candidate = pkg_dir / "examples" / f"Questionnaire-{resource_id}.json"
    if candidate.exists():
        return candidate
    return None


# ─── Render a single Questionnaire ───────────────────────────────────────────

def render_questionnaire(q):
    """Produce the markdown section (between markers) for a Questionnaire."""
    lines = []
    lines.append(f"_Auto-generiert aus `{q.get('id')}` v{q.get('version')} ({DEPENDENCY_PACKAGE})._")
    lines.append("")
    lines.append(
        "Wo Translation-Extensions auf den `text`-Feldern fehlen, wird die Sprache der Quelle "
        "über eine Heuristik bestimmt — leere EN-Spalten weisen auf upstream noch ausstehende "
        "EN/DE-Architektur-Migration hin."
    )

    def emit_item_row(it):
        lid = it.get("linkId", "")
        code = ""
        if it.get("code"):
            code = it["code"][0].get("code", "")
        en, de = label_pair(it.get("text", ""), it.get("_text"))

        lines.append("")
        lines.append("| linkId | LOINC | English | Deutsch |")
        lines.append("|---|---|---|---|")
        lines.append(f"| `{lid}` | {code} | {md_cell(en)} | {md_cell(de)} |")

        opts = it.get("answerOption", [])
        if opts:
            lines.append("")
            lines.append("**Antwortoptionen:**")
            lines.append("")
            lines.append("| Code | English | Deutsch | Ordinal |")
            lines.append("|---|---|---|---|")
            for opt in opts:
                vc = opt.get("valueCoding", {})
                code = vc.get("code", "")
                disp_text = vc.get("display", "")
                disp_underscore = vc.get("_display")
                opt_en, opt_de = label_pair(disp_text, disp_underscore)
                ord_val = ""
                for ext in opt.get("extension", []):
                    if ext.get("url", "").endswith("/ordinalValue"):
                        ord_val = str(ext.get("valueDecimal", ""))
                lines.append(
                    f"| {code} | {md_cell(opt_en)} | {md_cell(opt_de)} | {ord_val} |"
                )

    def render(items):
        for it in items:
            if it.get("type") == "display" or is_score_helper(it):
                continue
            if it.get("type") == "group":
                en, de = label_pair(it.get("text", ""), it.get("_text"))
                title = de or en or it.get("linkId", "")
                lines.append("")
                lines.append(f"### {title}")
                lines.append("")
                lines.append(f"_Sektion `{it.get('linkId', '')}`_")
                if it.get("item"):
                    render(it["item"])
            else:
                emit_item_row(it)

    render(q.get("item", []))
    return "\n".join(lines)


def update_page(page_path, generated):
    """Replace content between BEGIN/END markers in the page file."""
    text = page_path.read_text(encoding="utf-8")
    block = f"{BEGIN_MARKER}\n\n{generated}\n\n{END_MARKER}"
    pattern = re.compile(
        re.escape(BEGIN_MARKER) + r".*?" + re.escape(END_MARKER), re.DOTALL
    )
    if pattern.search(text):
        new_text = pattern.sub(block, text)
    else:
        # No markers yet: append at end
        new_text = text.rstrip() + "\n\n" + block + "\n"
    if new_text != text:
        page_path.write_text(new_text, encoding="utf-8")
        print(f"  updated {page_path.relative_to(REPO)}")
    else:
        print(f"  unchanged {page_path.relative_to(REPO)}")


# ─── Main ────────────────────────────────────────────────────────────────────

def main():
    version = read_dependency_version()
    print(f"PRO-Modul dependency version: {version}")
    pagecontent = REPO / "input" / "pagecontent"

    for resource_id, page_name in QUESTIONNAIRES.items():
        target = pagecontent / page_name
        if not target.exists():
            print(f"  SKIP {resource_id}: target page {page_name} not found")
            continue
        q_path = find_questionnaire(resource_id, version)
        if not q_path:
            print(f"  SKIP {resource_id}: not in package cache (run `fhir restore` first)")
            continue
        print(f"  rendering {resource_id} → {page_name}")
        q = json.loads(q_path.read_text(encoding="utf-8"))
        generated = render_questionnaire(q)
        update_page(target, generated)


if __name__ == "__main__":
    main()
