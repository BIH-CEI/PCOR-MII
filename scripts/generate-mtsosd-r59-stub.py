#!/usr/bin/env python3
"""Erzeugt input/fsh/Questionnaires/MTSOSD-R59.fsh (metadata-only, NTx).

Aufruf (aus dem Repo-Root):  python3 scripts/generate-mtsosd-r59-stub.py

Struktur laut PCOR-MII Item Level Dictionary, Blatt "NTx", Variablen MTSOSDR59_*:
Symptome 01-59 mit je zwei Variablen (Auftreten NN, Belastung NNa), Symptom 27
geschlechtsspezifisch (_male/_female), Symptome 60-62 Freitext mit eigener Belastung.
Kein Itemwortlaut: alle Texte sind neutral. Ausgabe ist deterministisch (flach, ohne Gruppen).
"""
from pathlib import Path

OUT = Path(__file__).resolve().parent.parent / "input/fsh/Questionnaires/MTSOSD-R59.fsh"
BASE = "https://bih-cei.github.io/PCOR-MII"
TS = "2026-11-05T00:00:00Z"

HEADER = '''// ─────────────────────────────────────────────────────────────────────────────
// MTSOSD-R59 — Symptomfragebogen zur Symptomlast (59 Symptome + 3 Freitext), Entität NTx
// GENERIERT durch scripts/generate-mtsosd-r59-stub.py — nicht von Hand ändern.
// Quelle: PCOR Item Level Dictionary, Blatt NTx (Kategorie MSE), Variablen
// MTSOSDR59_01 … MTSOSDR59_62a (126 Variablen).
//
// ⚠️ METADATA-ONLY. Rechteinhaber ist die KU Leuven (Kontakt: joke.willems@kuleuven.be).
//    Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist
//    nicht erlaubt; wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei, jedes
//    Zentrum benötigt eine eigene Lizenzvereinbarung. Diese Instanz bildet daher NUR
//    Struktur, linkIds, Typen, Wertebereiche und Bedingungen ab:
//      - Item-Texte sind NEUTRALE Labels ("Erfasst: …"), KEIN Originalwortlaut.
//      - Auftreten-Antworten heißen neutral "Stufe 0" … "Stufe 4" (ordinalValue 0-4).
//    Muster: WAI.fsh und UKHD-EDP.fsh im selben Verzeichnis. Die wortgleiche Vollversion
//    kommt nie in dieses Package, sondern über die berechtigte Bezugsquelle.
//
// STRUKTUR: je Symptom zwei Items — Auftreten (choice, 5 Stufen, MtsosdR59Auftreten5VS)
//   und Belastung (integer, Suffix "a"). Belastung nur anzeigen, wenn Auftreten != Stufe 0.
//   Zeitraum laut Dictionary: letzte 4 Wochen. Symptome 60-62 sind Freitext (type text);
//   ihre Belastung erscheint, sobald ein Text vorliegt (das Dictionary formuliert die
//   Bedingung dort unscharf).
//
// BEDINGUNGEN: Symptom 27 ist geschlechtsspezifisch (_male / _female). Die Steuerung über
//   das Geschlecht (Q_SEX) ist eine Cross-Questionnaire-Bedingung und hier NICHT als
//   enableWhen modelliert, sondern vom aufrufenden Prozess zu leisten.
//
// OFFEN: Die Stufenzahl der visuellen Belastungsskala ist im Dictionary NICHT dokumentiert
//   (leeres Bild-Blatt). Die Belastung ist deshalb als integer ohne min/max modelliert.
//
// SCORING: Kein Score ausgeliefert. Summen über Auftreten bzw. Belastung existieren in der
//   Literatur, ihre Definition ist hier nicht verifiziert (calculatable = false).
//
// Terminologie-Recherche: nicht durchgeführt — Terminologie-MCP in der Session nicht
//   verfügbar. Es sind keine LOINC-/SNOMED-Instrumentencodes verifiziert; Questionnaire.code
//   trägt nur den PCOR-Katalogcode.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: MtsosdR59Auftreten5CS
Id: mtsosd-r59-auftreten-5
Title: "MTSOSD-R59 Auftreten 5-stufig (Codes)"
Description: "Neutral benannte 5-stufige Auftretensskala des MTSOSD-R59 (Stufe 0 bis Stufe 4). METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. Stufe 0 = Symptom nicht aufgetreten. ordinalValue-Property je Konzept (0-4) ermöglicht eine spätere Auswertung."
* ^url = "BASE/CodeSystem/mtsosd-r59-auftreten-5"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerischer Ordinalwert (0-4); 0 = Symptom nicht aufgetreten."
* ^property[=].type = #decimal
'''.replace("BASE", BASE)

for i in range(5):
    HEADER += f'* #stufe-{i} "Stufe {i}"\n  * ^property[+].code = #ordinalValue\n  * ^property[=].valueDecimal = {i}\n'

HEADER += f'''
ValueSet: MtsosdR59Auftreten5VS
Id: mtsosd-r59-auftreten-5-vs
Title: "MTSOSD-R59 Auftreten 5-stufig"
Description: "Neutral benannte 5-stufige Auftretensskala des MTSOSD-R59 (Stufe 0 bis Stufe 4). Metadata-only, siehe MtsosdR59Auftreten5CS."
* ^url = "{BASE}/ValueSet/mtsosd-r59-auftreten-5-vs"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system MtsosdR59Auftreten5CS
* ^expansion.timestamp = "{TS}"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "{BASE}/CodeSystem/mtsosd-r59-auftreten-5|0.3.0"
'''
for i in range(5):
    p = "[0]" if i == 0 else "[+]"
    HEADER += f'* ^expansion.contains{p}.system = "{BASE}/CodeSystem/mtsosd-r59-auftreten-5"\n'
    HEADER += f'* ^expansion.contains[=].code = #stufe-{i}\n* ^expansion.contains[=].display = "Stufe {i}"\n'

HEADER += f'''
// ─────────────────────────────────────────────────────────────────────────────
// MTSOSD-R59 — Questionnaire (metadata-only)
// ─────────────────────────────────────────────────────────────────────────────

Instance: MTSOSDR59
InstanceOf: Questionnaire
Usage: #definition
Title: "MTSOSD-R59 — Symptomlast, 59 Symptome und 3 Freitext (NTx, metadata-only)"
Description: "Symptomfragebogen mit 59 Symptomen und 3 Freitext-Symptomen aus dem NTx-Dictionary (Kategorie MSE). **Metadata-only:** Struktur, `linkId`s, Typen, Wertebereiche und Bedingungen sind abgebildet, Itemwortlaut und Antwortbezeichnungen bewusst nicht (Rechteinhaber KU Leuven). Je Symptom Auftreten (5 Stufen) und Belastung. Kein Score."
// Selbstauskunfts-PRO -> MII-PRO-Profil (nicht ISiKFormularDefinition, die nur für Nicht-PRO-Bögen gilt).
* meta.profile = $mii-pro-questionnaire
* url = "{BASE}/Questionnaire/MTSOSDR59"
* name = "MTSOSDR59"
* language = #de
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#mtsosd-r59 "MTSOSD-R59"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-11-05"
* publisher = "BIH-CEI"
* copyright = "METADATA-ONLY: MTSOSD-R59 © KU Leuven. Diese Instanz bildet ausschließlich Struktur, linkIds, Typen, Wertebereiche und Bedingungen ab. Item-Texte sind neutrale, selbst formulierte Labels, die Antwortstufen sind neutral benannt (Stufe 0-4). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt; wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Bezug: Kontakt joke.willems@kuleuven.be. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."
// Vom MII-PRO-Profil gefordert: capabilities-Extension (1..1). Metadata-only -> nichts davon nutzbar.
* extension[+].url = $mii-pro-capabilities
* extension[=].extension[+].url = "displayable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "collectable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "calculatable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "extractable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "domainAligned"
* extension[=].extension[=].valueBoolean = false
// Designentscheidungen maschinenlesbar
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen:** (1) **Metadata-only** nach dem Muster des [WAI](WAI.html): Struktur, `linkId`s, Typen, Wertebereiche und Bedingungen sind abgebildet; Item-Texte sind neutrale Labels, Antwortstufen neutral benannt (Rechteinhaber KU Leuven, Veröffentlichung der Items nicht erlaubt, jedes Zentrum braucht eine eigene Lizenzvereinbarung). (2) **Kein Score:** Summen über Auftreten oder Belastung sind nicht verifiziert; `ordinalValue` 0-4 ist gesetzt, damit eine spätere Auswertung möglich bleibt. (3) **Belastung** (Suffix `a`) erscheint nur bei Auftreten ungleich Stufe 0, bei Freitext sobald ein Text vorliegt; die Stufenzahl der visuellen Skala ist im Dictionary nicht dokumentiert und daher nicht begrenzt. (4) **Symptom 27** ist geschlechtsspezifisch; die Steuerung über Q_SEX ist eine Cross-Questionnaire-Bedingung und nicht als `enableWhen` modelliert. (5) **Keine Instrumenten-Codes verifiziert** (Terminologie-Recherche nicht durchgeführt). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
'''

ids = []
for n in range(1, 60):
    if n == 27:
        ids += [("27_male", "27 (männlich)", "choice"), ("27_female", "27 (weiblich)", "choice")]
    else:
        ids.append((f"{n:02d}", f"{n:02d}", "choice"))
for n in (60, 61, 62):
    ids.append((f"{n}", f"{n} (Freitext)", "text"))

lines = []
for suf, label, kind in ids:
    vid = f"MTSOSDR59_{suf}"
    bel = f"MTSOSDR59_{suf.split('_')[0]}a" + (f"_{suf.split('_')[1]}" if "_" in suf else "")
    lines += ["", "* item[+]", f'  * linkId = "{vid}"', f"  * code[+] = PcorItemDictionaryCS#{vid}"]
    if kind == "choice":
        lines += [f'  * text = "Erfasst: Auftreten von Symptom {label} (5 Stufen, Zeitraum 4 Wochen)."',
                  "  * type = #choice", "  * answerValueSet = Canonical(MtsosdR59Auftreten5VS)"]
    else:
        lines += [f'  * text = "Erfasst: Freitext-Angabe eines weiteren Symptoms ({label.split()[0]})."', "  * type = #text"]
    lines += ["* item[+]", f'  * linkId = "{bel}"', f"  * code[+] = PcorItemDictionaryCS#{bel}",
              f'  * text = "Erfasst: Belastung durch Symptom {label}."', "  * type = #integer",
              "  // Stufenzahl der visuellen Skala im Dictionary nicht dokumentiert -> kein min/max",
              "  * enableWhen[+]", f'    * question = "{vid}"']
    if kind == "choice":
        lines += ["    * operator = #!=", "    * answerCoding = MtsosdR59Auftreten5CS#stufe-0"]
    else:
        lines += ["    * operator = #exists", "    * answerBoolean = true"]

OUT.write_text(HEADER + "\n".join(lines) + "\n", encoding="utf-8")
print(f"wrote {OUT}: {len(ids)*2} items")
