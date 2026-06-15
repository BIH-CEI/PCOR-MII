# DEM Zigaretten pro Tag (Bänder) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: DEM Zigaretten pro Tag (Bänder) (Experimentell) 

 
Anzahl Zigaretten pro Tag in Bändern (GIPS57b). 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DemZigarettenBandVS](ValueSet-dem-zigaretten-band-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-zigaretten-band",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-zigaretten-band",
  "version" : "0.1.0",
  "name" : "DemZigarettenBandCS",
  "title" : "DEM Zigaretten pro Tag (Bänder)",
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
  "description" : "Anzahl Zigaretten pro Tag in Bändern (GIPS57b).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "b1",
    "display" : "1-10"
  },
  {
    "code" : "b2",
    "display" : "11-20"
  },
  {
    "code" : "b3",
    "display" : "21-30"
  },
  {
    "code" : "b4",
    "display" : "> 30"
  }]
}

```
