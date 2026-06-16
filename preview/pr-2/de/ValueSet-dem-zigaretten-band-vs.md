# DEM Zigaretten pro Tag - PCOR-MII Implementation Guide v0.1.0

## ValueSet: DEM Zigaretten pro Tag (Experimentell) 

 
Zigaretten/Tag in Bändern (GIPS57b). 

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
  "id" : "dem-zigaretten-band-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-zigaretten-band-vs",
  "version" : "0.1.0",
  "name" : "DemZigarettenBandVS",
  "title" : "DEM Zigaretten pro Tag",
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
  "description" : "Zigaretten/Tag in Bändern (GIPS57b).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-zigaretten-band"
    }]
  }
}

```
