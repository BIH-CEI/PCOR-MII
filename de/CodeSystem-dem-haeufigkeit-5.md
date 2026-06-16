# DEM Häufigkeit (5-stufig) (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: DEM Häufigkeit (5-stufig) (Codes) (Experimentell) 

 
5-stufige Häufigkeitsskala für finanzielle Sorgen (MONMEAL/MONRENT/MONBILLS). Quelle: Commonwealth Fund 2017. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DemHaeufigkeit5VS](ValueSet-dem-haeufigkeit-5-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-haeufigkeit-5",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-haeufigkeit-5",
  "version" : "0.1.0",
  "name" : "DemHaeufigkeit5CS",
  "title" : "DEM Häufigkeit (5-stufig) (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T09:03:15+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "5-stufige Häufigkeitsskala für finanzielle Sorgen (MONMEAL/MONRENT/MONBILLS). Quelle: Commonwealth Fund 2017.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "staendig",
    "display" : "Ständig"
  },
  {
    "code" : "meistens",
    "display" : "Meistens"
  },
  {
    "code" : "manchmal",
    "display" : "Manchmal"
  },
  {
    "code" : "selten",
    "display" : "Selten"
  },
  {
    "code" : "nie",
    "display" : "Nie"
  }]
}

```
