# DEM Ja/Nein/Nicht zutreffend - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Ja/Nein/Nicht zutreffend (Experimentell) 

 
Ja/Nein/Nicht zutreffend (Q_MONMED) – Subset von DemAntwortCS. 

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
  "id" : "dem-ja-nein-nz-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein-nz-vs",
  "version" : "0.1.0",
  "name" : "DemJaNeinNzVS",
  "title" : "DEM Ja/Nein/Nicht zutreffend",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T12:55:32+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Ja/Nein/Nicht zutreffend (Q_MONMED) – Subset von DemAntwortCS.",
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
        "code" : "nicht-zutreffend",
        "display" : "Nicht zutreffend"
      }]
    }]
  }
}

```
