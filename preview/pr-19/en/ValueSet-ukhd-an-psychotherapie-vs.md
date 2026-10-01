# UKHD-AN Psychotherapeutische Behandlung, frueher/aktuell - PCOR-MII Implementation Guide v0.3.0

## ValueSet: UKHD-AN Psychotherapeutische Behandlung, frueher/aktuell (Experimental) 

 
Drei Zeitbezüge der psychotherapeutischen Behandlung (`bdkm15`). 

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
  "id" : "ukhd-an-psychotherapie-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-psychotherapie-vs",
  "version" : "0.3.0",
  "name" : "UkhdAnPsychotherapieVS",
  "title" : "UKHD-AN Psychotherapeutische Behandlung, frueher/aktuell",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T10:29:40+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Drei Zeitbezüge der psychotherapeutischen Behandlung (`bdkm15`).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-psychotherapie"
    }]
  }
}

```
