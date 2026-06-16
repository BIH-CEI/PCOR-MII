# DEM Beziehungsstatus - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Beziehungsstatus (Experimentell) 

 
Partnerschaftsstatus (GIPS04). 

 **References** 

* [DEM — Demographics & Medical History](Questionnaire-DEM.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dem-beziehungsstatus-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-beziehungsstatus-vs",
  "version" : "0.1.0",
  "name" : "DemBeziehungsstatusVS",
  "title" : "DEM Beziehungsstatus",
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
  "description" : "Partnerschaftsstatus (GIPS04).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-beziehungsstatus"
    }]
  }
}

```
