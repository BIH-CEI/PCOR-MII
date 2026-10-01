# DEM Urbanizität (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: DEM Urbanizität (Codes) (Experimental) 

 
Beschreibung des Wohnorts (Q_OECDLITii). 

This Code system is referenced in the definition of the following value sets:

* [DEM Urbanizität](ValueSet-dem-urbanizitaet-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-urbanizitaet",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-urbanizitaet",
  "version" : "0.3.0",
  "name" : "DemUrbanizitaetCS",
  "title" : "DEM Urbanizität (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T14:41:41+00:00",
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
    "display" : "City",
    "designation" : [{
      "language" : "de",
      "value" : "Stadt"
    }]
  },
  {
    "code" : "dorf-vorort",
    "display" : "Town or suburb",
    "designation" : [{
      "language" : "de",
      "value" : "Dorf oder Vorort"
    }]
  },
  {
    "code" : "laendlich",
    "display" : "Rural area",
    "designation" : [{
      "language" : "de",
      "value" : "Ländliche Region"
    }]
  },
  {
    "code" : "weiss-nicht",
    "display" : "Don't know",
    "designation" : [{
      "language" : "de",
      "value" : "Ich weiss es nicht"
    }]
  }]
}

```
