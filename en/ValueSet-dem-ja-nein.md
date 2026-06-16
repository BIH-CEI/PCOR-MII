# DEM Ja/Nein - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Ja/Nein (Experimental) 

 
Ja/Nein (Subset von DemAntwortCS). SNOMED-Mapping: ja=373066001 (Yes), nein=373067005 (No). 

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
  "id" : "dem-ja-nein",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein",
  "version" : "0.1.0",
  "name" : "DemJaNeinVS",
  "title" : "DEM Ja/Nein",
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
  "description" : "Ja/Nein (Subset von DemAntwortCS). SNOMED-Mapping: ja=373066001 (Yes), nein=373067005 (No).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
      "concept" : [{
        "code" : "ja",
        "display" : "Ja"
      },
      {
        "code" : "nein",
        "display" : "Nein"
      }]
    }]
  }
}

```
