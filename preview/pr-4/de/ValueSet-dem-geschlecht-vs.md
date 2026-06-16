# DEM Geschlecht - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Geschlecht (Experimentell) 

 
Selbstbeschriebenes Geschlecht (Q_SEX). 

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
  "id" : "dem-geschlecht-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-geschlecht-vs",
  "version" : "0.1.0",
  "name" : "DemGeschlechtVS",
  "title" : "DEM Geschlecht",
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
  "description" : "Selbstbeschriebenes Geschlecht (Q_SEX).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht"
    }]
  }
}

```
