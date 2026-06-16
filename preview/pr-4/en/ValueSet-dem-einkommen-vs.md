# DEM Haushaltseinkommen - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Haushaltseinkommen (Experimental) 

 
Einkommensbänder (Q_OECDLIT7a). 

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
  "id" : "dem-einkommen-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-einkommen-vs",
  "version" : "0.1.0",
  "name" : "DemEinkommenVS",
  "title" : "DEM Haushaltseinkommen",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T12:48:01+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Einkommensbänder (Q_OECDLIT7a).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen"
    }]
  }
}

```
