# ERQ-S Unterdrückung — Beispiel-Score - PCOR-MII Implementation Guide v0.3.0

## Example Observation: ERQ-S Unterdrückung — Beispiel-Score

-------

**English**

-------

Profile: [MII PR PRO Score Instance](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pros@2026.7.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance)

**status**: Final

**category**: Survey

**code**: ERQ-S Expressive Suppression Subscale Score (3-21)

**subject**: [Anonymous Patient Female, DoB: 1985-03-12](Patient-pcor-mii-exa-patient.md)

**effective**: 2026-06-18 09:00:00+0200

**performer**: [Anonymous Patient Female, DoB: 1985-03-12](Patient-pcor-mii-exa-patient.md)

**value**: 19 Punkte (Details: UCUM code1 = '1')

**derivedFrom**: [Response to Questionnaire '->ERQ-S — Emotion Regulation Questionnaire, Kurzform (6 Items)' about '->Anonymous Patient Female, DoB: 1985-03-12'](QuestionnaireResponse-ERQ6Response.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ErqsSuppressionObservation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-instance"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-score-catalogue",
      "code" : "erq-s-suppression",
      "display" : "ERQ-S Expressive Suppression Subscale Score (3-21)"
    }]
  },
  "subject" : {
    "reference" : "Patient/pcor-mii-exa-patient"
  },
  "effectiveDateTime" : "2026-06-18T09:00:00+02:00",
  "performer" : [{
    "reference" : "Patient/pcor-mii-exa-patient"
  }],
  "valueQuantity" : {
    "value" : 19,
    "unit" : "Punkte",
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/ERQ6Response"
  }]
}

```
