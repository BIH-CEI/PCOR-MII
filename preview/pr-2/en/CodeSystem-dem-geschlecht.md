# DEM Geschlecht (Selbstbeschreibung) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: DEM Geschlecht (Selbstbeschreibung) (Experimental) 

 
Selbstbeschriebenes Geschlecht (Q_SEX). HINWEIS: Im MII-Kontext bevorzugt an das MII-Person-Modul (Geschlecht / gender-amtlich-de) angleichen. 

This Code system is referenced in the definition of the following value sets:

* [DemGeschlechtVS](ValueSet-dem-geschlecht-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-geschlecht",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht",
  "version" : "0.1.0",
  "name" : "DemGeschlechtCS",
  "title" : "DEM Geschlecht (Selbstbeschreibung)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-15T15:11:11+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Selbstbeschriebenes Geschlecht (Q_SEX). HINWEIS: Im MII-Kontext bevorzugt an das MII-Person-Modul (Geschlecht / gender-amtlich-de) angleichen.",
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
    "code" : "weiblich",
    "display" : "Weiblich"
  },
  {
    "code" : "maennlich",
    "display" : "Männlich"
  },
  {
    "code" : "nicht-binaer",
    "display" : "Nicht-binär"
  },
  {
    "code" : "andere",
    "display" : "Andere"
  },
  {
    "code" : "keine-angabe",
    "display" : "Möchte ich nicht sagen"
  }]
}

```
