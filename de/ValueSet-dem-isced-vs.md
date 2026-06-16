# DEM Bildungsabschluss (ISCED) - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Bildungsabschluss (ISCED) (Experimentell) 

 
Höchster Bildungsabschluss (Q_ISCED). 

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
  "id" : "dem-isced-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-isced-vs",
  "version" : "0.1.0",
  "name" : "DemIscedVS",
  "title" : "DEM Bildungsabschluss (ISCED)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T13:23:35+00:00",
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
