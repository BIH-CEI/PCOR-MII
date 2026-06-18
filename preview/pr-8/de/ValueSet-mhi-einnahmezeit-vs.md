# MHI Einnahmezeitpunkt Medikament - PCOR-MII Implementation Guide v0.1.0

## ValueSet: MHI Einnahmezeitpunkt Medikament (Experimentell) 

 
Tageszeit der Medikamenteneinnahme (medi_02_time). 

 **References** 

* [MHI — Medical History](Questionnaire-MHI.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mhi-einnahmezeit-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-einnahmezeit-vs",
  "version" : "0.1.0",
  "name" : "MhiEinnahmezeitVS",
  "title" : "MHI Einnahmezeitpunkt Medikament",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-18T08:19:43+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Tageszeit der Medikamenteneinnahme (medi_02_time).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-einnahmezeit"
    }]
  }
}

```
