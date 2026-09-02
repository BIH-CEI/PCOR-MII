# MHI Einnahmezeitpunkt Medikament (Codes) - PCOR-MII Implementation Guide v0.2.0

## CodeSystem: MHI Einnahmezeitpunkt Medikament (Codes) (Experimentell) 

 
Tageszeit der Medikamenteneinnahme (medi_02_time). 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MHI Einnahmezeitpunkt Medikament](ValueSet-mhi-einnahmezeit-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mhi-einnahmezeit",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-einnahmezeit",
  "version" : "0.2.0",
  "name" : "MhiEinnahmezeitCS",
  "title" : "MHI Einnahmezeitpunkt Medikament (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-02T06:40:48+00:00",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "0",
    "display" : "morgens"
  },
  {
    "code" : "1",
    "display" : "mittags"
  },
  {
    "code" : "2",
    "display" : "abends"
  },
  {
    "code" : "3",
    "display" : "nachts"
  },
  {
    "code" : "4",
    "display" : "bei Bedarf"
  }]
}

```
