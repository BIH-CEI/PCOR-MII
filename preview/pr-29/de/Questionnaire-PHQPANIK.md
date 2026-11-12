# PHQ-D Panik-Block — Angst-/Panikattacken (PHQ 3a–3d) - PCOR-MII Implementation Guide v0.9.0

## Questionnaire: PHQ-D Panik-Block — Angst-/Panikattacken (PHQ 3a–3d) (Experimentell) 

*  [Baumansicht](#tabs-tree) 
*  [Beispielanzeige](#tabs-sample) 
*  [Formularlogik](#tabs-logic) 

### Diesen Fragebogen testen

### Antworten zu diesem Fragebogen

Es sind derzeit keine QuestionnaireResponse-Instanzen für diesen Fragebogen in diesem IG definiert.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "PHQPANIK",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire"]
  },
  "language" : "en",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "extension" : [{
      "url" : "displayable",
      "valueBoolean" : true
    },
    {
      "url" : "collectable",
      "valueBoolean" : true
    },
    {
      "url" : "calculatable",
      "valueBoolean" : false
    },
    {
      "url" : "extractable",
      "valueBoolean" : false
    },
    {
      "url" : "domainAligned",
      "valueBoolean" : false
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
    "valueMarkdown" : "**Designentscheidungen (ADR-012):** (1) **In PCOR-MII gepflegt, nicht im MII-PRO-Modul** — der Block wird nur in PSS erhoben, das Modul führt kein Artefakt; eine Modul-Fassung wurde bewusst hierher verschoben. Nimmt das Modul den Block später auf, ersetzt die Upstream-Referenz diese Instanz. (2) **linkIds im PHQ-D-Block-Namespace** (`phq-phq3a`–`phq-phq3d`) statt der Dictionary-Variablen: Der Block gehört zur PHQ-Familie, deren Items im Modul diesen Namespace tragen ([PHQ](PHQ.html)); so ist bei einer Übernahme keine linkId-Migration nötig. Die Dictionary-Variable steht in `item.code` gegen [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) (ADR-011). (3) **Englisch primär** (ADR-005): Wortlaut des Brief PHQ (Pfizer), deutsche Fassung PHQ-D als `translation`. (4) **Sprungregel als `enableWhen`**: 3b–3d nur bei 3a = ja — so das Originalformular; das Dictionary nennt keine Bedingung. (5) **Kein Score:** Der PHQ definiert für den Block keinen Summenwert, sondern den Algorithmus *Paniksyndrom = 3a–3d alle ja UND ≥ 4 von 4a–4k ja*; ohne die Symptomliste ist nur die Screening-Stufe ableitbar, und Auswertung ist nach ADR-004 nicht Gegenstand dieses IG. (6) **Keine LOINC-/SNOMED-Codes** bekannt; nur der lokale Katalogcode `phq-panik`. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/PHQPANIK",
  "version" : "0.9.0",
  "name" : "PHQPANIK",
  "title" : "PHQ-D Panik-Block — Angst-/Panikattacken (PHQ 3a–3d)",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-11-05",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Die vier Ja/Nein-Screeningfragen zu Angst- und Panikattacken des Patient Health Questionnaire (PHQ, Block 3a–3d; Spitzer, Kroenke & Williams 1999), deutsche Fassung PHQ-D (Löwe et al. 2002), 4-Wochen-Recall. Englisch primär, Deutsch als `translation`. linkIds im PHQ-D-Block-Namespace (`phq-phq3a`–`phq-phq3d`), Dictionary-Variablen `phq3a`–`phq3d` in `item.code`. Sprungregel des Formulars als `enableWhen` (3b–3d nur bei 3a = ja). Kein Score-Item: Der PHQ-Algorithmus für das Paniksyndrom braucht zusätzlich die hier nicht erhobene Symptomliste 4a–4k. In PCOR-MII gepflegt, weil das MII-PRO-Modul kein Artefakt dafür führt (ADR-012).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Patient Health Questionnaire (PHQ) © Pfizer Inc., entwickelt von Robert L. Spitzer, Janet B.W. Williams, Kurt Kroenke und Kolleg:innen (Spitzer et al., JAMA 1999, doi:10.1001/jama.282.18.1737). Frei verfügbar — keine Genehmigung für Reproduktion, Übersetzung, Darstellung oder Nutzung erforderlich (phqscreeners.com). Deutsche Fassung: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002). Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Nur der PCOR-MII-eigene FHIR-Inhalt (Struktur, linkIds, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "phq-panik",
    "display" : "PHQ-D Panik-Block"
  }],
  "item" : [{
    "linkId" : "phq-panik-intro",
    "text" : "Questions about anxiety.",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Fragen zum Thema \"Angst\""
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "display"
  },
  {
    "linkId" : "phq-phq3a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "phq3a"
    }],
    "prefix" : "a",
    "text" : "In the last 4 weeks, have you had an anxiety attack — suddenly feeling fear or panic?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Hatten Sie in den letzten 4 Wochen eine Angstattacke (plötzliches Gefühl der Furcht oder Panik?)"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    }]
  },
  {
    "linkId" : "phq-phq3b",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "phq3b"
    }],
    "prefix" : "b",
    "text" : "Has this ever happened before?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Ist dies bereits früher einmal vorgekommen?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "enableWhen" : [{
      "question" : "phq-phq3a",
      "operator" : "=",
      "answerCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001"
      }
    }],
    "answerOption" : [{
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    }]
  },
  {
    "linkId" : "phq-phq3c",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "phq3c"
    }],
    "prefix" : "c",
    "text" : "Do some of these attacks come suddenly out of the blue — that is, in situations where you don't expect to be nervous or uncomfortable?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Treten manche dieser Anfälle völlig unerwartet auf - d.h. in Situationen, in denen Sie nicht damit rechnen, dass Sie angespannt oder beunruhigt reagieren?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "enableWhen" : [{
      "question" : "phq-phq3a",
      "operator" : "=",
      "answerCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001"
      }
    }],
    "answerOption" : [{
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    }]
  },
  {
    "linkId" : "phq-phq3d",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "phq3d"
    }],
    "prefix" : "d",
    "text" : "Do these attacks bother you a lot or are you worried about having another attack?",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "de"
        },
        {
          "url" : "content",
          "valueString" : "Empfinden Sie diese Anfälle als stark beeinträchtigend, und/oder haben Sie Angst vor erneuten Anfällen?"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "type" : "choice",
    "enableWhen" : [{
      "question" : "phq-phq3a",
      "operator" : "=",
      "answerCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001"
      }
    }],
    "answerOption" : [{
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001",
        "display" : "Yes"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373067005",
        "display" : "No"
      }
    }]
  }]
}

```
