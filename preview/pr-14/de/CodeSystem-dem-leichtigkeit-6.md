# DEM Leichtigkeit Unterstützung (6-stufig) (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: DEM Leichtigkeit Unterstützung (6-stufig) (Codes) (Experimentell) 

 
Skala zur erlebten Leichtigkeit, Unterstützung zu erhalten (WHODIS1/WHODIS2). 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DEM Leichtigkeit Unterstützung (6-stufig)](ValueSet-dem-leichtigkeit-6-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-leichtigkeit-6",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6",
  "version" : "0.3.0",
  "name" : "DemLeichtigkeit6CS",
  "title" : "DEM Leichtigkeit Unterstützung (6-stufig) (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-30T09:23:41+00:00",
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
    "display" : "Very easy",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Sehr einfach"
    }]
  },
  {
    "code" : "einfach",
    "display" : "Easy",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Einfach"
    }]
  },
  {
    "code" : "weder-noch",
    "display" : "Neither easy nor difficult",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Weder einfach noch schwierig"
    }]
  },
  {
    "code" : "schwierig",
    "display" : "Difficult",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Schwierig"
    }]
  },
  {
    "code" : "sehr-schwierig",
    "display" : "Very difficult",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Sehr schwierig"
    }]
  },
  {
    "code" : "nicht-zutreffend",
    "display" : "Not applicable",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Nicht zutreffend"
    }]
  }]
}

```
