# DEM Ja/Nein/Keine Angabe - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Ja/Nein/Keine Angabe (Experimental) 

 
Ja/Nein/Möchte ich nicht sagen (Q_GENDERID) – Subset von DemAntwortCS. 

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
  "id" : "dem-ja-nein-ka-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein-ka-vs",
  "version" : "0.1.0",
  "name" : "DemJaNeinKaVS",
  "title" : "DEM Ja/Nein/Keine Angabe",
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
  "description" : "Ja/Nein/Möchte ich nicht sagen (Q_GENDERID) – Subset von DemAntwortCS.",
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
      },
      {
        "code" : "keine-angabe",
        "display" : "Möchte ich nicht sagen"
      }]
    }]
  }
}

```
