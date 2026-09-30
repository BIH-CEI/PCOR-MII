# ERQ-S Neubewertung (Cognitive Reappraisal) - PCOR-MII Implementation Guide v0.3.0

## ObservationDefinition: ERQ-S Neubewertung (Cognitive Reappraisal) 

-------

**English**

-------

Profile: [MII PR PRO Score Blueprint / Template](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pros@2026.7.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

**category**: Survey

**code**: ERQ-S Cognitive Reappraisal Subscale Score (3-21)

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | 1 | 0 |

### QualifiedIntervals

| | | |
| :--- | :--- | :--- |
| - | **Category** | **Range** |
| * | absolute range | 3-21 |



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "PcorObsDefErqsReappraisal",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint"]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-score-catalogue",
      "code" : "erq-s-reappraisal",
      "display" : "ERQ-S Cognitive Reappraisal Subscale Score (3-21)"
    }]
  },
  "permittedDataType" : ["Quantity"],
  "multipleResultsAllowed" : false,
  "quantitativeDetails" : {
    "unit" : {
      "coding" : [{
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }]
    },
    "decimalPrecision" : 0
  },
  "qualifiedInterval" : [{
    "category" : "absolute",
    "range" : {
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-score-score-health-correlation",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/measure-improvement-notation",
            "code" : "increase"
          }],
          "text" : "Higher score indicates more frequent use of cognitive reappraisal, which is associated with better well-being"
        }
      }],
      "low" : {
        "value" : 3
      },
      "high" : {
        "value" : 21
      }
    }
  }]
}

```
