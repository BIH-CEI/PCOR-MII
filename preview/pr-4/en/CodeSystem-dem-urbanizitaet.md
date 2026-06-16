# DEM Urbanizität (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: DEM Urbanizität (Codes) (Experimental) 

 
Beschreibung des Wohnorts (Q_OECDLITii). 

This Code system is referenced in the definition of the following value sets:

* [DemUrbanizitaetVS](ValueSet-dem-urbanizitaet-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-urbanizitaet",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-urbanizitaet",
  "version" : "0.1.0",
  "name" : "DemUrbanizitaetCS",
  "title" : "DEM Urbanizität (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T11:11:33+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Beschreibung des Wohnorts (Q_OECDLITii).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "stadt",
    "display" : "Stadt"
  },
  {
    "code" : "dorf-vorort",
    "display" : "Dorf oder Vorort"
  },
  {
    "code" : "laendlich",
    "display" : "Ländliche Region"
  },
  {
    "code" : "weiss-nicht",
    "display" : "Ich weiss es nicht"
  }]
}

```
