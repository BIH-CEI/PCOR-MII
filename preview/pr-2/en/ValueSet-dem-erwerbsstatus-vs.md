# DEM Erwerbsstatus - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Erwerbsstatus (Experimental) 

 
Aktuelle Arbeitssituation (Q_OECDLIT5a). 

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
  "id" : "dem-erwerbsstatus-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-erwerbsstatus-vs",
  "version" : "0.1.0",
  "name" : "DemErwerbsstatusVS",
  "title" : "DEM Erwerbsstatus",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T07:24:54+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Aktuelle Arbeitssituation (Q_OECDLIT5a).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-erwerbsstatus"
    }]
  }
}

```
