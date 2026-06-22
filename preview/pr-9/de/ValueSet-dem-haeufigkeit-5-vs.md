# DEM Häufigkeit (5-stufig) - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Häufigkeit (5-stufig) (Experimentell) 

 
5-stufige Häufigkeitsskala (MONMEAL/MONRENT/MONBILLS). 

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
  "id" : "dem-haeufigkeit-5-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-haeufigkeit-5-vs",
  "version" : "0.1.0",
  "name" : "DemHaeufigkeit5VS",
  "title" : "DEM Häufigkeit (5-stufig)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-22T13:30:31+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "5-stufige Häufigkeitsskala (MONMEAL/MONRENT/MONBILLS).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5"
    }]
  }
}

```
