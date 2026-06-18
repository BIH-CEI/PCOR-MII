# DEM Leichtigkeit Unterstützung (6-stufig) (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: DEM Leichtigkeit Unterstützung (6-stufig) (Codes) (Experimental) 

 
Skala zur erlebten Leichtigkeit, Unterstützung zu erhalten (WHODIS1/WHODIS2). 

This Code system is referenced in the definition of the following value sets:

* [DemLeichtigkeit6VS](ValueSet-dem-leichtigkeit-6-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-leichtigkeit-6",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6",
  "version" : "0.1.0",
  "name" : "DemLeichtigkeit6CS",
  "title" : "DEM Leichtigkeit Unterstützung (6-stufig) (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-18T09:13:00+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Skala zur erlebten Leichtigkeit, Unterstützung zu erhalten (WHODIS1/WHODIS2).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "sehr-einfach",
    "display" : "Sehr einfach"
  },
  {
    "code" : "einfach",
    "display" : "Einfach"
  },
  {
    "code" : "weder-noch",
    "display" : "Weder einfach noch schwierig"
  },
  {
    "code" : "schwierig",
    "display" : "Schwierig"
  },
  {
    "code" : "sehr-schwierig",
    "display" : "Sehr schwierig"
  },
  {
    "code" : "nicht-zutreffend",
    "display" : "Nicht zutreffend"
  }]
}

```
