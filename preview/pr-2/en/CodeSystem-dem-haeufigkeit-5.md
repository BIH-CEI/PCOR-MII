# DEM Häufigkeit (5-stufig) (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: DEM Häufigkeit (5-stufig) (Codes) (Experimental) 

 
5-stufige Häufigkeitsskala für finanzielle Sorgen (MONMEAL/MONRENT/MONBILLS). Quelle: Commonwealth Fund 2017. 

This Code system is referenced in the definition of the following value sets:

* [DemHaeufigkeit5VS](ValueSet-dem-haeufigkeit-5-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-06-15T14:42:41+00:00",
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
