# MHI Einnahmezeitpunkt Medikament (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: MHI Einnahmezeitpunkt Medikament (Codes) (Experimental) 

 
Tageszeit der Medikamenteneinnahme (medi_02_time). 

This Code system is referenced in the definition of the following value sets:

* [MhiEinnahmezeitVS](ValueSet-mhi-einnahmezeit-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mhi-einnahmezeit",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-einnahmezeit",
  "version" : "0.1.0",
  "name" : "MhiEinnahmezeitCS",
  "title" : "MHI Einnahmezeitpunkt Medikament (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-22T13:30:33+00:00",
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
