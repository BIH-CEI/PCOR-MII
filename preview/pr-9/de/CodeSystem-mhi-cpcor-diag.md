# MHI Diagnosegruppe (CPCOR) (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: MHI Diagnosegruppe (CPCOR) (Codes) (Experimentell) 

 
Diagnosegruppe zur Selbstzuordnung (CPCOR-DIAG). 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MhiCpcorDiagVS](ValueSet-mhi-cpcor-diag-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mhi-cpcor-diag",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-cpcor-diag",
  "version" : "0.1.0",
  "name" : "MhiCpcorDiagCS",
  "title" : "MHI Diagnosegruppe (CPCOR) (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-22T13:30:31+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Diagnosegruppe zur Selbstzuordnung (CPCOR-DIAG).",
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
    "code" : "1",
    "display" : "Essstörung"
  },
  {
    "code" : "2",
    "display" : "Nierenerkrankung"
  },
  {
    "code" : "3",
    "display" : "Nierenspender"
  },
  {
    "code" : "4",
    "display" : "Anhaltende körperliche Beschwerden"
  }]
}

```
