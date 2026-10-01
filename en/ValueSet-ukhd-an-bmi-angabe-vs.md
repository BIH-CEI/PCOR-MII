# UKHD-AN Niedrigster BMI — Angabe-Status - PCOR-MII Implementation Guide v0.3.0

## ValueSet: UKHD-AN Niedrigster BMI — Angabe-Status (Experimental) 

 
Angabe-Status für den niedrigsten BMI (`lowBMI`). 

 **References** 

* [UKHD-AN — Standortspezifische AN-Zusatzitems (Universitätsklinikum Heidelberg)](Questionnaire-UKHDAN.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ukhd-an-bmi-angabe-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-bmi-angabe-vs",
  "version" : "0.3.0",
  "name" : "UkhdAnBmiAngabeVS",
  "title" : "UKHD-AN Niedrigster BMI — Angabe-Status",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T11:25:55+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Angabe-Status für den niedrigsten BMI (`lowBMI`).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-bmi-angabe"
    }]
  }
}

```
