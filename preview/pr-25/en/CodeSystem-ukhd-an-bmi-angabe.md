# UKHD-AN Niedrigster BMI — Angabe-Status (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: UKHD-AN Niedrigster BMI — Angabe-Status (Codes) (Experimental) 

This Code system is referenced in the definition of the following value sets:

* [UKHD-AN Niedrigster BMI — Angabe-Status](ValueSet-ukhd-an-bmi-angabe-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ukhd-an-bmi-angabe",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-bmi-angabe",
  "version" : "0.3.0",
  "name" : "UkhdAnBmiAngabeCS",
  "title" : "UKHD-AN Niedrigster BMI — Angabe-Status (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-04T14:58:31+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Angabe-Status für den niedrigsten BMI (`lowBMI`): Wert wird angegeben oder „weiß ich nicht“. Der Zahlenwert steht im Hilfsitem `lowBMI-wert`.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "1",
    "display" : "BMI-Wert"
  },
  {
    "code" : "2",
    "display" : "weiß ich nicht"
  }]
}

```
