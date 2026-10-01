# UKHD-AN Dauer der Essstoerung — Einheit/Angabe-Status - PCOR-MII Implementation Guide v0.3.0

## ValueSet: UKHD-AN Dauer der Essstoerung — Einheit/Angabe-Status (Experimental) 

 
Einheit bzw. Angabe-Status für die Dauer der Essstörung (`AN_biography`). 

 **References** 

* [UKHD-ANB — Essstörungsanamnese (UKHD-Zusatzitems AN)](Questionnaire-UKHDANB.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ukhd-an-dauer-angabe-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-dauer-angabe-vs",
  "version" : "0.3.0",
  "name" : "UkhdAnDauerAngabeVS",
  "title" : "UKHD-AN Dauer der Essstoerung — Einheit/Angabe-Status",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T12:55:11+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Einheit bzw. Angabe-Status für die Dauer der Essstörung (`AN_biography`).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe"
    }]
  }
}

```
