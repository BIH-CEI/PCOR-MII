# DEM Leichtigkeit Unterstützung (6-stufig) - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Leichtigkeit Unterstützung (6-stufig) (Experimental) 

 
Leichtigkeit, Unterstützung zu erhalten (WHODIS1/2). 

 **References** 

* [DEM — Demographics & Medical History](Questionnaire-DEM.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "dem-leichtigkeit-6-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-leichtigkeit-6-vs",
  "version" : "0.1.0",
  "name" : "DemLeichtigkeit6VS",
  "title" : "DEM Leichtigkeit Unterstützung (6-stufig)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-15T15:11:11+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Leichtigkeit, Unterstützung zu erhalten (WHODIS1/2).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-leichtigkeit-6"
    }]
  }
}

```
