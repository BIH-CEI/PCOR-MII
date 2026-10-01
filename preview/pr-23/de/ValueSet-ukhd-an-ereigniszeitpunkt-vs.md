# UKHD-AN Ereignis vor oder nach Beginn der Essstoerung - PCOR-MII Implementation Guide v0.3.0

## ValueSet: UKHD-AN Ereignis vor oder nach Beginn der Essstoerung (Experimentell) 

 
Zeitliche Lage des Ereignisses relativ zu den ersten Anzeichen der Essstörung (`traumaspecific2`, `traumaspecific4`, `traumaspecific6`). 

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
  "id" : "ukhd-an-ereigniszeitpunkt-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-ereigniszeitpunkt-vs",
  "version" : "0.3.0",
  "name" : "UkhdAnEreigniszeitpunktVS",
  "title" : "UKHD-AN Ereignis vor oder nach Beginn der Essstoerung",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T14:08:38+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Zeitliche Lage des Ereignisses relativ zu den ersten Anzeichen der Essstörung (`traumaspecific2`, `traumaspecific4`, `traumaspecific6`).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereigniszeitpunkt"
    }]
  }
}

```
