# OPD-SFK: Dictionary-Variablen-IDs (linkIds bis 0.3.0) → FHIR-linkIds (OPD-SF-Itemnummern) - PCOR-MII Implementation Guide v0.3.0

## ConceptMap: OPD-SFK: Dictionary-Variablen-IDs (linkIds bis 0.3.0) → FHIR-linkIds (OPD-SF-Itemnummern) (Experimental) 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "pcor-cm-opd-sfk-linkids",
  "url" : "https://bih-cei.github.io/PCOR-MII/ConceptMap/pcor-cm-opd-sfk-linkids",
  "version" : "0.3.0",
  "name" : "PcorCmOpdSfkLinkIds",
  "title" : "OPD-SFK: Dictionary-Variablen-IDs (linkIds bis 0.3.0) → FHIR-linkIds (OPD-SF-Itemnummern)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-05",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Bildet die Variablen-IDs des PCOR-MII Item Level Dictionary (OPDSFK01–OPDSFK12, zugleich die linkIds des Questionnaire OPDSFK bis Version 0.3.0) auf die linkIds des OPD-SFK-Questionnaire ab, die den Itemnummern der OPD-SF-Langform entsprechen (Ehrenthal et al. 2015, Tabelle 2).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Lesehilfe für die Übernahme von Studiendaten unter den Dictionary-Variablennamen und Migrationstabelle für QuestionnaireResponses gegen OPDSFK|0.3.0.",
  "group" : [{
    "source" : "https://bih-cei.github.io/PCOR-MII/linkid/item-level-dictionary/OPD-SFK",
    "target" : "https://bih-cei.github.io/PCOR-MII/linkid/Questionnaire/OPDSFK",
    "element" : [{
      "code" : "OPDSFK01",
      "display" : "Dictionary OPDSFK01 — Ich erlebe mich manchmal wie eine fremde Person.",
      "target" : [{
        "code" : "opdsf3",
        "display" : "OPD-SFK-Item 1 = OPD-SF-Item 3 (Selbstwahrnehmung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK02",
      "display" : "Dictionary OPDSFK02 — Wenn ich viel über mich nachdenke, gerate ich eher in Ver …",
      "target" : [{
        "code" : "opdsf27",
        "display" : "OPD-SFK-Item 2 = OPD-SF-Item 27 (Selbstwahrnehmung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK03",
      "display" : "Dictionary OPDSFK03 — Wenn man andere zu nahe an sich heran lässt, kann das gef …",
      "target" : [{
        "code" : "opdsf32",
        "display" : "OPD-SFK-Item 3 = OPD-SF-Item 32 (Beziehungsmodell)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK04",
      "display" : "Dictionary OPDSFK04 — Ich kann mich anderen oft schwer verständlich machen.",
      "target" : [{
        "code" : "opdsf81",
        "display" : "OPD-SFK-Item 4 = OPD-SF-Item 81 (Kontaktgestaltung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK05",
      "display" : "Dictionary OPDSFK05 — In mir herrscht oft ein solches Gefühlschaos, dass ich es …",
      "target" : [{
        "code" : "opdsf41",
        "display" : "OPD-SFK-Item 5 = OPD-SF-Item 41 (Selbstwahrnehmung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK06",
      "display" : "Dictionary OPDSFK06 — Ich schätze manchmal falsch ein, wie mein Verhalten auf a …",
      "target" : [{
        "code" : "opdsf49",
        "display" : "OPD-SFK-Item 6 = OPD-SF-Item 49 (Kontaktgestaltung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK07",
      "display" : "Dictionary OPDSFK07 — Wenn andere viel über mich wissen, fühle ich mich oft irg …",
      "target" : [{
        "code" : "opdsf50",
        "display" : "OPD-SFK-Item 7 = OPD-SF-Item 50 (Beziehungsmodell)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK08",
      "display" : "Dictionary OPDSFK08 — Meine Gefühle sind manchmal so intensiv, dass ich Angst b …",
      "target" : [{
        "code" : "opdsf73",
        "display" : "OPD-SFK-Item 8 = OPD-SF-Item 73 (Selbstwahrnehmung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK09",
      "display" : "Dictionary OPDSFK09 — Ich bin schon sehr verletzt worden, weil ich mich in eine …",
      "target" : [{
        "code" : "opdsf78",
        "display" : "OPD-SFK-Item 9 = OPD-SF-Item 78 (Beziehungsmodell)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK10",
      "display" : "Dictionary OPDSFK10 — Es fällt mir schwer, zu anderen Kontakt aufzunehmen.",
      "target" : [{
        "code" : "opdsf79",
        "display" : "OPD-SFK-Item 10 = OPD-SF-Item 79 (Kontaktgestaltung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK11",
      "display" : "Dictionary OPDSFK11 — Ich habe kein gutes Selbstbewusstsein.",
      "target" : [{
        "code" : "opdsf40",
        "display" : "OPD-SFK-Item 11 = OPD-SF-Item 40 (Kontaktgestaltung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK12",
      "display" : "Dictionary OPDSFK12 — Meine Erfahrung ist: Wenn man Menschen zu sehr vertraut, …",
      "target" : [{
        "code" : "opdsf90",
        "display" : "OPD-SFK-Item 12 = OPD-SF-Item 90 (Beziehungsmodell)",
        "equivalence" : "equal"
      }]
    }]
  },
  {
    "source" : "https://bih-cei.github.io/PCOR-MII/linkid/Questionnaire/OPDSFK/0.3.0",
    "target" : "https://bih-cei.github.io/PCOR-MII/linkid/Questionnaire/OPDSFK",
    "element" : [{
      "code" : "OPDSFK01",
      "display" : "Dictionary OPDSFK01 — Ich erlebe mich manchmal wie eine fremde Person.",
      "target" : [{
        "code" : "opdsf3",
        "display" : "OPD-SFK-Item 1 = OPD-SF-Item 3 (Selbstwahrnehmung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK02",
      "display" : "Dictionary OPDSFK02 — Wenn ich viel über mich nachdenke, gerate ich eher in Ver …",
      "target" : [{
        "code" : "opdsf27",
        "display" : "OPD-SFK-Item 2 = OPD-SF-Item 27 (Selbstwahrnehmung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK03",
      "display" : "Dictionary OPDSFK03 — Wenn man andere zu nahe an sich heran lässt, kann das gef …",
      "target" : [{
        "code" : "opdsf32",
        "display" : "OPD-SFK-Item 3 = OPD-SF-Item 32 (Beziehungsmodell)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK04",
      "display" : "Dictionary OPDSFK04 — Ich kann mich anderen oft schwer verständlich machen.",
      "target" : [{
        "code" : "opdsf81",
        "display" : "OPD-SFK-Item 4 = OPD-SF-Item 81 (Kontaktgestaltung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK05",
      "display" : "Dictionary OPDSFK05 — In mir herrscht oft ein solches Gefühlschaos, dass ich es …",
      "target" : [{
        "code" : "opdsf41",
        "display" : "OPD-SFK-Item 5 = OPD-SF-Item 41 (Selbstwahrnehmung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK06",
      "display" : "Dictionary OPDSFK06 — Ich schätze manchmal falsch ein, wie mein Verhalten auf a …",
      "target" : [{
        "code" : "opdsf49",
        "display" : "OPD-SFK-Item 6 = OPD-SF-Item 49 (Kontaktgestaltung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK07",
      "display" : "Dictionary OPDSFK07 — Wenn andere viel über mich wissen, fühle ich mich oft irg …",
      "target" : [{
        "code" : "opdsf50",
        "display" : "OPD-SFK-Item 7 = OPD-SF-Item 50 (Beziehungsmodell)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK08",
      "display" : "Dictionary OPDSFK08 — Meine Gefühle sind manchmal so intensiv, dass ich Angst b …",
      "target" : [{
        "code" : "opdsf73",
        "display" : "OPD-SFK-Item 8 = OPD-SF-Item 73 (Selbstwahrnehmung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK09",
      "display" : "Dictionary OPDSFK09 — Ich bin schon sehr verletzt worden, weil ich mich in eine …",
      "target" : [{
        "code" : "opdsf78",
        "display" : "OPD-SFK-Item 9 = OPD-SF-Item 78 (Beziehungsmodell)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK10",
      "display" : "Dictionary OPDSFK10 — Es fällt mir schwer, zu anderen Kontakt aufzunehmen.",
      "target" : [{
        "code" : "opdsf79",
        "display" : "OPD-SFK-Item 10 = OPD-SF-Item 79 (Kontaktgestaltung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK11",
      "display" : "Dictionary OPDSFK11 — Ich habe kein gutes Selbstbewusstsein.",
      "target" : [{
        "code" : "opdsf40",
        "display" : "OPD-SFK-Item 11 = OPD-SF-Item 40 (Kontaktgestaltung)",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "OPDSFK12",
      "display" : "Dictionary OPDSFK12 — Meine Erfahrung ist: Wenn man Menschen zu sehr vertraut, …",
      "target" : [{
        "code" : "opdsf90",
        "display" : "OPD-SFK-Item 12 = OPD-SF-Item 90 (Beziehungsmodell)",
        "equivalence" : "equal"
      }]
    }]
  }]
}

```
