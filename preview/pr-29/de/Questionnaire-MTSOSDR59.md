# MTSOSD-R59 — Symptomlast, 59 Symptome und 3 Freitext (NTx, metadata-only) - PCOR-MII Implementation Guide v0.9.0

## Questionnaire: MTSOSD-R59 — Symptomlast, 59 Symptome und 3 Freitext (NTx, metadata-only) (Experimentell) 

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
  "id" : "MTSOSDR59",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire"]
  },
  "language" : "de-DE",
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
      "valueBoolean" : false
    },
    {
      "url" : "collectable",
      "valueBoolean" : false
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
    "valueMarkdown" : "**Designentscheidungen:** (1) **Metadata-only** nach dem Muster des [WAI](WAI.html): Struktur, `linkId`s, Typen, Wertebereiche und Bedingungen sind abgebildet; Item-Texte sind neutrale Labels, Antwortstufen neutral benannt (Rechteinhaber KU Leuven, Veröffentlichung der Items nicht erlaubt, jedes Zentrum braucht eine eigene Lizenzvereinbarung). (2) **Kein Score, bewusst:** Die Originalpublikation (Dobbels et al. 2008) hält eine Summe über die Items für nicht gerechtfertigt und sieht als einzig korrekte Auswertung die Ridit-Analyse vor, ein kohortenrelatives Maß 0–1 je Item, das erst aus einer Stichprobe entsteht und daher nicht als Ausdruck am Bogen stehen kann; `itemWeight` 0-4 ist gesetzt für Deskription und als Eingabe der Ridit-Berechnung. (3) **Belastung** (Suffix `a`) erscheint nur bei Auftreten ungleich Stufe 0, bei Freitext sobald ein Text vorliegt; die Skala ist laut Blatt *Visual Scale MTSOSD-R59* eine Linie mit den Stufen 0–4 und entspricht der Originalskala, modelliert als eigene neutral benannte Fünfer-Skala mit `itemWeight` 0–4. (4) **Symptom 27** ist geschlechtsspezifisch; die Steuerung über Q_SEX ist eine Cross-Questionnaire-Bedingung und nicht als `enableWhen` modelliert. (5) **Keine Instrumenten-Codes:** Recherche in LOINC 2.83 und SNOMED CT (2026-11-05) ohne Treffer für das Instrument. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/MTSOSDR59",
  "version" : "0.9.0",
  "name" : "MTSOSDR59",
  "title" : "MTSOSD-R59 — Symptomlast, 59 Symptome und 3 Freitext (NTx, metadata-only)",
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
  "description" : "Symptomfragebogen mit 59 Symptomen und 3 Freitext-Symptomen aus dem NTx-Dictionary (Kategorie MSE). **Metadata-only:** Struktur, `linkId`s, Typen, Wertebereiche und Bedingungen sind abgebildet, Itemwortlaut und Antwortbezeichnungen bewusst nicht (Rechteinhaber KU Leuven). Je Symptom Auftreten (5 Stufen) und Belastung (5 Stufen, Skala 0-4 laut Blatt Visual Scale MTSOSD-R59). Kein Score.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "METADATA-ONLY: MTSOSD-R59 © KU Leuven. Diese Instanz bildet ausschließlich Struktur, linkIds, Typen, Wertebereiche und Bedingungen ab. Item-Texte sind neutrale, selbst formulierte Labels, die Antwortstufen sind neutral benannt (Stufe 0-4). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt; wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Bezug: Kontakt joke.willems@kuleuven.be. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "mtsosd-r59",
    "display" : "MTSOSD-R59"
  }],
  "item" : [{
    "linkId" : "MTSOSDR59_01",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_01"
    }],
    "text" : "Erfasst: Auftreten von Symptom 01 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_01a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_01a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 01 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_01",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_02",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_02"
    }],
    "text" : "Erfasst: Auftreten von Symptom 02 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_02a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_02a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 02 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_02",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_03",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_03"
    }],
    "text" : "Erfasst: Auftreten von Symptom 03 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_03a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_03a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 03 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_03",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_04",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_04"
    }],
    "text" : "Erfasst: Auftreten von Symptom 04 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_04a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_04a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 04 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_04",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_05",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_05"
    }],
    "text" : "Erfasst: Auftreten von Symptom 05 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_05a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_05a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 05 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_05",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_06",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_06"
    }],
    "text" : "Erfasst: Auftreten von Symptom 06 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_06a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_06a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 06 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_06",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_07",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_07"
    }],
    "text" : "Erfasst: Auftreten von Symptom 07 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_07a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_07a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 07 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_07",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_08",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_08"
    }],
    "text" : "Erfasst: Auftreten von Symptom 08 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_08a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_08a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 08 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_08",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_09",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_09"
    }],
    "text" : "Erfasst: Auftreten von Symptom 09 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_09a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_09a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 09 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_09",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_10",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_10"
    }],
    "text" : "Erfasst: Auftreten von Symptom 10 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_10a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_10a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 10 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_10",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_11",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_11"
    }],
    "text" : "Erfasst: Auftreten von Symptom 11 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_11a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_11a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 11 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_11",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_12",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_12"
    }],
    "text" : "Erfasst: Auftreten von Symptom 12 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_12a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_12a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 12 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_12",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_13",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_13"
    }],
    "text" : "Erfasst: Auftreten von Symptom 13 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_13a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_13a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 13 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_13",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_14",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_14"
    }],
    "text" : "Erfasst: Auftreten von Symptom 14 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_14a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_14a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 14 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_14",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_15",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_15"
    }],
    "text" : "Erfasst: Auftreten von Symptom 15 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_15a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_15a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 15 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_15",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_16",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_16"
    }],
    "text" : "Erfasst: Auftreten von Symptom 16 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_16a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_16a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 16 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_16",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_17",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_17"
    }],
    "text" : "Erfasst: Auftreten von Symptom 17 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_17a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_17a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 17 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_17",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_18",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_18"
    }],
    "text" : "Erfasst: Auftreten von Symptom 18 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_18a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_18a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 18 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_18",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_19",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_19"
    }],
    "text" : "Erfasst: Auftreten von Symptom 19 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_19a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_19a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 19 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_19",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_20",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_20"
    }],
    "text" : "Erfasst: Auftreten von Symptom 20 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_20a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_20a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 20 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_20",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_21",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_21"
    }],
    "text" : "Erfasst: Auftreten von Symptom 21 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_21a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_21a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 21 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_21",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_22",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_22"
    }],
    "text" : "Erfasst: Auftreten von Symptom 22 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_22a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_22a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 22 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_22",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_23",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_23"
    }],
    "text" : "Erfasst: Auftreten von Symptom 23 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_23a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_23a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 23 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_23",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_24",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_24"
    }],
    "text" : "Erfasst: Auftreten von Symptom 24 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_24a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_24a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 24 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_24",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_25",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_25"
    }],
    "text" : "Erfasst: Auftreten von Symptom 25 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_25a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_25a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 25 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_25",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_26",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_26"
    }],
    "text" : "Erfasst: Auftreten von Symptom 26 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_26a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_26a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 26 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_26",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_27_male",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_27_male"
    }],
    "text" : "Erfasst: Auftreten von Symptom 27 (männlich) (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_27a_male",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_27a_male"
    }],
    "text" : "Erfasst: Belastung durch Symptom 27 (männlich) (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_27_male",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_27_female",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_27_female"
    }],
    "text" : "Erfasst: Auftreten von Symptom 27 (weiblich) (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_27a_female",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_27a_female"
    }],
    "text" : "Erfasst: Belastung durch Symptom 27 (weiblich) (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_27_female",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_28",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_28"
    }],
    "text" : "Erfasst: Auftreten von Symptom 28 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_28a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_28a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 28 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_28",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_29",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_29"
    }],
    "text" : "Erfasst: Auftreten von Symptom 29 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_29a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_29a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 29 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_29",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_30",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_30"
    }],
    "text" : "Erfasst: Auftreten von Symptom 30 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_30a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_30a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 30 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_30",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_31",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_31"
    }],
    "text" : "Erfasst: Auftreten von Symptom 31 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_31a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_31a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 31 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_31",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_32",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_32"
    }],
    "text" : "Erfasst: Auftreten von Symptom 32 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_32a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_32a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 32 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_32",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_33",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_33"
    }],
    "text" : "Erfasst: Auftreten von Symptom 33 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_33a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_33a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 33 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_33",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_34",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_34"
    }],
    "text" : "Erfasst: Auftreten von Symptom 34 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_34a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_34a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 34 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_34",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_35",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_35"
    }],
    "text" : "Erfasst: Auftreten von Symptom 35 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_35a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_35a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 35 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_35",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_36",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_36"
    }],
    "text" : "Erfasst: Auftreten von Symptom 36 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_36a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_36a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 36 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_36",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_37",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_37"
    }],
    "text" : "Erfasst: Auftreten von Symptom 37 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_37a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_37a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 37 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_37",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_38",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_38"
    }],
    "text" : "Erfasst: Auftreten von Symptom 38 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_38a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_38a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 38 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_38",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_39",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_39"
    }],
    "text" : "Erfasst: Auftreten von Symptom 39 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_39a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_39a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 39 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_39",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_40",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_40"
    }],
    "text" : "Erfasst: Auftreten von Symptom 40 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_40a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_40a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 40 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_40",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_41",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_41"
    }],
    "text" : "Erfasst: Auftreten von Symptom 41 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_41a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_41a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 41 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_41",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_42",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_42"
    }],
    "text" : "Erfasst: Auftreten von Symptom 42 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_42a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_42a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 42 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_42",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_43",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_43"
    }],
    "text" : "Erfasst: Auftreten von Symptom 43 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_43a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_43a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 43 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_43",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_44",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_44"
    }],
    "text" : "Erfasst: Auftreten von Symptom 44 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_44a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_44a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 44 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_44",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_45",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_45"
    }],
    "text" : "Erfasst: Auftreten von Symptom 45 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_45a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_45a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 45 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_45",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_46",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_46"
    }],
    "text" : "Erfasst: Auftreten von Symptom 46 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_46a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_46a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 46 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_46",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_47",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_47"
    }],
    "text" : "Erfasst: Auftreten von Symptom 47 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_47a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_47a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 47 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_47",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_48",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_48"
    }],
    "text" : "Erfasst: Auftreten von Symptom 48 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_48a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_48a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 48 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_48",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_49",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_49"
    }],
    "text" : "Erfasst: Auftreten von Symptom 49 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_49a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_49a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 49 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_49",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_50",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_50"
    }],
    "text" : "Erfasst: Auftreten von Symptom 50 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_50a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_50a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 50 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_50",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_51",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_51"
    }],
    "text" : "Erfasst: Auftreten von Symptom 51 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_51a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_51a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 51 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_51",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_52",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_52"
    }],
    "text" : "Erfasst: Auftreten von Symptom 52 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_52a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_52a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 52 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_52",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_53",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_53"
    }],
    "text" : "Erfasst: Auftreten von Symptom 53 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_53a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_53a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 53 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_53",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_54",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_54"
    }],
    "text" : "Erfasst: Auftreten von Symptom 54 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_54a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_54a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 54 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_54",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_55",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_55"
    }],
    "text" : "Erfasst: Auftreten von Symptom 55 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_55a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_55a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 55 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_55",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_56",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_56"
    }],
    "text" : "Erfasst: Auftreten von Symptom 56 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_56a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_56a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 56 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_56",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_57",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_57"
    }],
    "text" : "Erfasst: Auftreten von Symptom 57 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_57a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_57a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 57 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_57",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_58",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_58"
    }],
    "text" : "Erfasst: Auftreten von Symptom 58 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_58a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_58a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 58 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_58",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_59",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_59"
    }],
    "text" : "Erfasst: Auftreten von Symptom 59 (5 Stufen, Zeitraum 4 Wochen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-auftreten-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_59a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_59a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 59 (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_59",
      "operator" : "!=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
        "code" : "stufe-0"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_60",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_60"
    }],
    "text" : "Erfasst: Freitext-Angabe eines weiteren Symptoms (60).",
    "type" : "text"
  },
  {
    "linkId" : "MTSOSDR59_60a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_60a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 60 (Freitext) (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_60",
      "operator" : "exists",
      "answerBoolean" : true
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_61",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_61"
    }],
    "text" : "Erfasst: Freitext-Angabe eines weiteren Symptoms (61).",
    "type" : "text"
  },
  {
    "linkId" : "MTSOSDR59_61a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_61a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 61 (Freitext) (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_61",
      "operator" : "exists",
      "answerBoolean" : true
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  },
  {
    "linkId" : "MTSOSDR59_62",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_62"
    }],
    "text" : "Erfasst: Freitext-Angabe eines weiteren Symptoms (62).",
    "type" : "text"
  },
  {
    "linkId" : "MTSOSDR59_62a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "MTSOSDR59_62a"
    }],
    "text" : "Erfasst: Belastung durch Symptom 62 (Freitext) (5 Stufen, 0 = keine Belastung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "MTSOSDR59_62",
      "operator" : "exists",
      "answerBoolean" : true
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs"
  }]
}

```
