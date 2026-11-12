# BAASIS — Adhärenz gegenüber immunsuppressiver Medikation (NTx, metadata-only) - PCOR-MII Implementation Guide v0.9.0

## Questionnaire: BAASIS — Adhärenz gegenüber immunsuppressiver Medikation (NTx, metadata-only) (Experimental) 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

There are currently no QuestionnaireResponse instances for this Questionnaire defined in this IG.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "BAASIS",
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
    "valueMarkdown" : "**Designentscheidungen:** (1) **Metadata-only** nach dem Muster des [WAI](WAI.html): Struktur, `linkId`s, Typen und Bedingungen sind abgebildet; Item-Texte sind neutrale Labels, Antwortstufen neutral benannt (Rechteinhaber Universität Basel, Veröffentlichung der Items nicht erlaubt, jedes Zentrum braucht eine eigene Lizenzvereinbarung). (2) **Kein Gesamtscore:** Die offizielle Auswertung bewertet die drei Phasen der ABC-Taxonomie getrennt — Implementierungsproblem bei „ja“ in 1A, 1B, 2 oder 3, Nicht-Persistenz bei „ja“ in 4, Nicht-Initiierung bei „ja“ in 5 und „nein“ in 5_a; nur dokumentiert, nicht als Ausdruck ausgeliefert. Der PCOR-MII-Auslöser für den ABQ („ja“ in 1A, 2, 3 oder 4) entspricht Implementierungs- oder Persistenzproblem. (3) **Bedingungen:** 1A_a bei 1A = ja, 1B bei 1A = ja, 1B_a bei 1B = ja, 2_a bei 2 = ja, 5_a bei 5 = ja; Items 1A–3 blicken 4 Wochen zurück, 4 und 5 ein Jahr. (4) **Item 5 ist seit der Version 2020 offizieller Bestandteil** (Initiierung), kein PCOR-MII-Zusatz. (5) **Zwei Häufigkeitsskalen:** 1A_a/1B_a zählen Ereignisse, 2_a ist laut Dictionary eine Raten-Skala und hat deshalb ein eigenes ValueSet; die offizielle Erläuterung nennt für alle drei dieselben Anzahl-Kategorien, die Abweichung ist gegen den lizenzierten deutschen Bogen zu prüfen. (6) **Keine Instrumenten-Codes:** Recherche in LOINC 2.83 und SNOMED CT (2026-11-05) ohne Treffer; LOINC 71799-1 ist ein generisches Adhärenz-Konzept, kein BAASIS-Panel. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/BAASIS",
  "version" : "0.9.0",
  "name" : "BAASIS",
  "title" : "BAASIS — Adhärenz gegenüber immunsuppressiver Medikation (NTx, metadata-only)",
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
  "description" : "Basel Assessment of Adherence to Immunosuppressive Medications Scale, 10 Variablen aus dem NTx-Dictionary (Kategorie TCH), Fassung Written self-report der Version 2021 mit den drei Phasen der ABC-Taxonomie: Implementierung (1A, 1B, 2, 3), Persistenz (4), Initiierung (5, 5_a). **Metadata-only:** Struktur, `linkId`s, Typen und Bedingungen sind abgebildet, Itemwortlaut und Antwortbezeichnungen bewusst nicht (Rechteinhaber Universität Basel). Kein Gesamtscore; die drei Phasen werden getrennt bewertet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "METADATA-ONLY: BAASIS © Universität Basel. Diese Instanz bildet ausschließlich Struktur, linkIds, Typen und Bedingungen ab. Item-Texte sind neutrale, selbst formulierte Labels, die Antwortstufen sind neutral benannt (Stufe 1-5). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt; wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Bezug: https://baasis.nursing.unibas.ch/how-to-obtain (Erlaubnis je Projekt; Publikationen zitieren Denhaerynck et al. 2023, Haupenthal et al. 2025 und die Website; Nutzung verpflichtet zur Datenweitergabe für das Validierungsprojekt der Uni Basel). Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "baasis",
    "display" : "BAASIS"
  }],
  "item" : [{
    "linkId" : "BAASIS1A",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "BAASIS1A"
    }],
    "text" : "Erfasst: Auslassen einer Dosis der immunsuppressiven Medikation in den letzten 4 Wochen (Konstrukt Einnahme-Adhärenz).",
    "type" : "choice",
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
    "linkId" : "BAASIS1A_a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "BAASIS1A_a"
    }],
    "text" : "Erfasst: Häufigkeit des Auslassens in den letzten 4 Wochen, 5 Stufen (nur bei 1A = ja).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "BAASIS1A",
      "operator" : "=",
      "answerCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/baasis-haeufigkeit-5-vs"
  },
  {
    "linkId" : "BAASIS1B",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "BAASIS1B"
    }],
    "text" : "Erfasst: Auslassen von zwei oder mehr aufeinanderfolgenden Dosen in den letzten 4 Wochen (nur bei 1A = ja).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "BAASIS1A",
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
    "linkId" : "BAASIS1B_a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "BAASIS1B_a"
    }],
    "text" : "Erfasst: Häufigkeit des mehrfachen Auslassens in Folge, 5 Stufen (nur bei 1B = ja).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "BAASIS1B",
      "operator" : "=",
      "answerCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/baasis-haeufigkeit-5-vs"
  },
  {
    "linkId" : "BAASIS2",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "BAASIS2"
    }],
    "text" : "Erfasst: Abweichung vom vorgesehenen Einnahmezeitpunkt um mehr als zwei Stunden in den letzten 4 Wochen (Konstrukt Timing-Adhärenz).",
    "type" : "choice",
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
    "linkId" : "BAASIS2_a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "BAASIS2_a"
    }],
    "text" : "Erfasst: Häufigkeit der Zeitabweichung in den letzten 4 Wochen, 5 Stufen als Raten-Skala (nur bei 2 = ja).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "BAASIS2",
      "operator" : "=",
      "answerCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "373066001"
      }
    }],
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/baasis-haeufigkeit-zeit-5-vs"
  },
  {
    "linkId" : "BAASIS3",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "BAASIS3"
    }],
    "text" : "Erfasst: eigenmächtige Änderung der verordneten Dosis in den letzten 4 Wochen (Konstrukt Dosis-Adhärenz).",
    "type" : "choice",
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
    "linkId" : "BAASIS4",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "BAASIS4"
    }],
    "text" : "Erfasst: eigenmächtiges Absetzen eines immunsuppressiven Medikaments im letzten Jahr (Konstrukt Persistenz).",
    "type" : "choice",
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
    "linkId" : "BAASIS5",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "BAASIS5"
    }],
    "text" : "Erfasst: Neuverordnung eines neuen Medikaments im letzten Jahr (Eingangsfrage zur Initiierung, Item 5 seit Version 2020).",
    "type" : "choice",
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
    "linkId" : "BAASIS5_a",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "BAASIS5_a"
    }],
    "text" : "Erfasst: Einlösen der Neuverordnung und Beginn der Einnahme (nur bei 5 = ja; Konstrukt Initiierung — „nein“ bedeutet Nicht-Initiierung).",
    "type" : "choice",
    "enableWhen" : [{
      "question" : "BAASIS5",
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
