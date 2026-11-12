# UKHD-AN Ereignis einmalig oder wiederholt - PCOR-MII Implementation Guide v0.9.0

## ValueSet: UKHD-AN Ereignis einmalig oder wiederholt (Experimentell) 

 **References** 

* [ACE + Zeitangaben — Belastende Kindheitserfahrungen (PCOR-MII-Komposit)](Questionnaire-ACE.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ukhd-an-ereignishaeufigkeit-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-ereignishaeufigkeit-vs",
  "version" : "0.9.0",
  "name" : "UkhdAnEreignishaeufigkeitVS",
  "title" : "UKHD-AN Ereignis einmalig oder wiederholt",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-12T18:10:53+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Einmaliges oder wiederholtes Ereignis (`traumaspecific1`, `traumaspecific3`, `traumaspecific5`).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereignishaeufigkeit"
    }]
  }
}

```
