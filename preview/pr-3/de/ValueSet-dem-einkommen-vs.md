# DEM Haushaltseinkommen - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Haushaltseinkommen (Experimentell) 

 
Einkommensbänder (Q_OECDLIT7a). 

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
  "id" : "dem-einkommen-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-einkommen-vs",
  "version" : "0.1.0",
  "name" : "DemEinkommenVS",
  "title" : "DEM Haushaltseinkommen",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-15T14:38:33+00:00",
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
