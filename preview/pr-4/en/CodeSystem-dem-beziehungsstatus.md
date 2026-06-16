# DEM Beziehungsstatus (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: DEM Beziehungsstatus (Codes) (Experimental) 

 
Partnerschaftsstatus (GIPS04). 

This Code system is referenced in the definition of the following value sets:

* [DemBeziehungsstatusVS](ValueSet-dem-beziehungsstatus-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-beziehungsstatus",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-beziehungsstatus",
  "version" : "0.1.0",
  "name" : "DemBeziehungsstatusCS",
  "title" : "DEM Beziehungsstatus (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T12:25:01+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Partnerschaftsstatus (GIPS04).",
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
    "code" : "keine-feste",
    "display" : "Keine feste Partnerschaft"
  },
  {
    "code" : "feste",
    "display" : "Feste Partnerschaft"
  }]
}

```
