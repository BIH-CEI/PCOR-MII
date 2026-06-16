# DEM Rentenstatus - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Rentenstatus (Experimentell) 

 
Rentenstatus (GIPS10). 

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
  "id" : "dem-rentenstatus-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-rentenstatus-vs",
  "version" : "0.1.0",
  "name" : "DemRentenstatusVS",
  "title" : "DEM Rentenstatus",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T08:59:54+00:00",
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
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-rentenstatus"
    }]
  }
}

```
