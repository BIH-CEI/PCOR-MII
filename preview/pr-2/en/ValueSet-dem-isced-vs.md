# DEM Bildungsabschluss (ISCED) - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Bildungsabschluss (ISCED) (Experimental) 

 
Höchster Bildungsabschluss (Q_ISCED). 

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
  "id" : "dem-isced-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-isced-vs",
  "version" : "0.1.0",
  "name" : "DemIscedVS",
  "title" : "DEM Bildungsabschluss (ISCED)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T08:08:12+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Höchster Bildungsabschluss (Q_ISCED).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-isced-de"
    }]
  }
}

```
