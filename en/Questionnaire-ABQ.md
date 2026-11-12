# ABQ — Adherence Barriers Questionnaire (NTx, metadata-only) - PCOR-MII Implementation Guide v0.9.0

## Questionnaire: ABQ — Adherence Barriers Questionnaire (NTx, metadata-only) (Experimental) 

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
  "id" : "ABQ",
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
      "valueBoolean" : true
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
    "valueMarkdown" : "**Designentscheidungen:** (1) **Metadata-only** nach dem Muster des [WAI](WAI.html): Struktur, `linkId`s, Typen und Wertebereiche sind abgebildet; Item-Texte sind neutrale Labels, Antwortstufen neutral benannt (Veröffentlichung der Items nicht erlaubt, jedes Zentrum braucht eine eigene Lizenzvereinbarung, Bezugsweg zu klären). (2) **Summenscore 16-64** über `itemWeight` 1-4 und `.weight().sum()` (Muster OPD-SFK); höhere Werte bedeuten mehr Adhärenzbarrieren. **Offen:** Die Polung ist nicht gegen das Originalinstrument verifiziert; keine Cut-offs. (3) **Cross-Questionnaire-Bedingung:** Der ABQ wird nur erhoben, wenn BAASIS1A, BAASIS2, BAASIS3 oder BAASIS4 = ja; nur dokumentiert, nicht als `enableWhen` modelliert. Für ABQ_01 nennt das Dictionary nur BAASIS1A, vermutlich eine Inkonsistenz. (4) **Keine Instrumenten-Codes verifiziert** (Terminologie-Recherche nicht durchgeführt). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/variable",
    "valueExpression" : {
      "name" : "abqSumme",
      "language" : "text/fhirpath",
      "expression" : "%resource.item.where(linkId.matches('^ABQ_(0[1-9]|1[0-6])$')).answer.value.weight().sum()"
    }
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/ABQ",
  "version" : "0.9.0",
  "name" : "ABQ",
  "title" : "ABQ — Adherence Barriers Questionnaire (NTx, metadata-only)",
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
  "description" : "Adherence Barriers Questionnaire, 16 Items aus dem NTx-Dictionary (Kategorie TCH). **Metadata-only:** Struktur, `linkId`s, Typen und Wertebereiche sind abgebildet, Itemwortlaut und Antwortbezeichnungen bewusst nicht. Summenscore 16-64 über `itemWeight`; die Polung ist nicht gegen das Original verifiziert. Wird nur bei Hinweis auf Nonadhärenz im BAASIS erhoben.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "METADATA-ONLY: ABQ © Müller S, Kohlmann T, Wilke T (2015), Adherence Barriers Questionnaire. Diese Instanz bildet ausschließlich Struktur, linkIds, Typen und Wertebereiche ab. Item-Texte sind neutrale, selbst formulierte Labels, die Antwortstufen sind neutral benannt (Stufe 1-4). Eine Veröffentlichung der konkreten Items einschließlich Antwortmöglichkeiten ist nicht erlaubt; wissenschaftliche Nutzung ohne Pharma-Beteiligung ist kostenfrei; jedes Zentrum benötigt eine eigene Lizenzvereinbarung. Bezugsweg: zu klären. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "abq",
    "display" : "ABQ"
  }],
  "item" : [{
    "linkId" : "ABQ_01",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_01"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 01 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_02",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_02"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 02 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_03",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_03"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 03 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_04",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_04"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 04 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_05",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_05"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 05 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_06",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_06"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 06 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_07",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_07"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 07 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_08",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_08"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 08 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_09",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_09"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 09 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_10",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_10"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 10 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_11",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_11"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 11 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_12",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_12"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 12 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_13",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_13"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 13 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_14",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_14"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 14 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_15",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_15"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 15 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "linkId" : "ABQ_16",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "ABQ_16"
    }],
    "text" : "Erfasst: Barriere der Medikamenteneinnahme, Item 16 (4 Stufen).",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression" : {
        "name" : "abqSumme",
        "language" : "text/fhirpath",
        "expression" : "%abqSumme"
      }
    }],
    "linkId" : "abq-summe",
    "text" : "ABQ Summenscore (16-64, höhere Werte = mehr Adhärenzbarrieren; Polung nicht verifiziert)",
    "type" : "decimal",
    "readOnly" : true
  }]
}

```
