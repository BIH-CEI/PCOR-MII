# DEM Leichtigkeit Unterstützung (6-stufig) (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: DEM Leichtigkeit Unterstützung (6-stufig) (Codes) (Experimentell) 

 
Skala zur erlebten Leichtigkeit, Unterstützung zu erhalten (WHODIS1/WHODIS2). 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DemLeichtigkeit6VS](ValueSet-dem-leichtigkeit-6-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-06-15T14:42:41+00:00",
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
