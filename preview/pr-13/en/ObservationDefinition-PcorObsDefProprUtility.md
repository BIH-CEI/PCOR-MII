# PROPr — PROMIS-Preference Utility Score - PCOR-MII Implementation Guide v0.3.0

## ObservationDefinition: PROPr — PROMIS-Preference Utility Score 

-------

**English**

-------

Profile: [MII PR PRO Score Blueprint / Template](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.pros@2026.7.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint)

**category**: Survey

**code**: PROMIS-Preference (PROPr) Utility Score

**permittedDataType**: Quantity

**multipleResultsAllowed**: false

### QuantitativeDetails

| | | |
| :--- | :--- | :--- |
| - | **Unit** | **DecimalPrecision** |
| * | 1 | 3 |

### QualifiedIntervals

| | | |
| :--- | :--- | :--- |
| - | **Category** | **Range** |
| * | absolute range | -0.022-1 |



## Resource Content

```json
{
  "resourceType" : "ObservationDefinition",
  "id" : "PcorObsDefProprUtility",
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
      "code" : "promis-propr-utility",
      "display" : "PROMIS-Preference (PROPr) Utility Score"
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
    "decimalPrecision" : 3
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
          "text" : "Higher score indicates better health status"
        }
      }],
      "low" : {
        "value" : -0.022
      },
      "high" : {
        "value" : 1
      }
    }
  }]
}

```
