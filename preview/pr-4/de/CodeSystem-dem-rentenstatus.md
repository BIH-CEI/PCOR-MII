# DEM Rentenstatus (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: DEM Rentenstatus (Codes) (Experimentell) 

 
Rentenstatus (GIPS10). 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DemRentenstatusVS](ValueSet-dem-rentenstatus-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-rentenstatus",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-rentenstatus",
  "version" : "0.1.0",
  "name" : "DemRentenstatusCS",
  "title" : "DEM Rentenstatus (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T12:20:50+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Rentenstatus (GIPS10).",
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
    "code" : "keine",
    "display" : "Keine Rente"
  },
  {
    "code" : "laufend",
    "display" : "Laufendes Rentenverfahren"
  },
  {
    "code" : "auf-zeit",
    "display" : "Rente auf Zeit"
  },
  {
    "code" : "auf-dauer",
    "display" : "Rente auf Dauer"
  }]
}

```
