# UKHD-AN Dauer der Essstoerung — Einheit/Angabe-Status (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: UKHD-AN Dauer der Essstoerung — Einheit/Angabe-Status (Codes) (Experimental) 

This Code system is referenced in the definition of the following value sets:

* [UKHD-AN Dauer der Essstoerung — Einheit/Angabe-Status](ValueSet-ukhd-an-dauer-angabe-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ukhd-an-dauer-angabe",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe",
  "version" : "0.3.0",
  "name" : "UkhdAnDauerAngabeCS",
  "title" : "UKHD-AN Dauer der Essstoerung — Einheit/Angabe-Status (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-06T08:15:19+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Einheit bzw. Angabe-Status für die Dauer der Essstörung (`AN_biography`): Monate, Jahre oder „weiß ich nicht“. Der Zahlenwert steht im Hilfsitem `AN_biography-wert`.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "1",
    "display" : "seit … Monaten"
  },
  {
    "code" : "2",
    "display" : "seit … Jahren"
  },
  {
    "code" : "3",
    "display" : "weiß ich nicht"
  }]
}

```
