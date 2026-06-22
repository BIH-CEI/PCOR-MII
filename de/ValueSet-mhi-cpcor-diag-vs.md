# MHI Diagnosegruppe (CPCOR) - PCOR-MII Implementation Guide v0.1.0

## ValueSet: MHI Diagnosegruppe (CPCOR) (Experimentell) 

 
Diagnosegruppe zur Selbstzuordnung (CPCOR-DIAG). 

 **References** 

* [MHI — Medical History](Questionnaire-MHI.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mhi-cpcor-diag-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-cpcor-diag-vs",
  "version" : "0.1.0",
  "name" : "MhiCpcorDiagVS",
  "title" : "MHI Diagnosegruppe (CPCOR)",
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
  "description" : "Diagnosegruppe zur Selbstzuordnung (CPCOR-DIAG).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-cpcor-diag"
    }]
  }
}

```
