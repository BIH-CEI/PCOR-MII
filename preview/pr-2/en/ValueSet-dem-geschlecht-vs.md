# DEM Geschlecht - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Geschlecht (Experimental) 

 
Selbstbeschriebenes Geschlecht (Q_SEX). 

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
  "id" : "dem-geschlecht-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-geschlecht-vs",
  "version" : "0.1.0",
  "name" : "DemGeschlechtVS",
  "title" : "DEM Geschlecht",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T07:48:16+00:00",
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
