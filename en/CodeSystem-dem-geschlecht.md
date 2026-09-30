# DEM Geschlecht (Selbstbeschreibung) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: DEM Geschlecht (Selbstbeschreibung) (Experimental) 

 
Selbstbeschriebenes Geschlecht (Q_SEX). HINWEIS: Im MII-Kontext bevorzugt an das MII-Person-Modul (Geschlecht / gender-amtlich-de) angleichen. 

This Code system is referenced in the definition of the following value sets:

* [DEM Geschlecht](ValueSet-dem-geschlecht-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-geschlecht",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-geschlecht",
  "version" : "0.3.0",
  "name" : "DemGeschlechtCS",
  "title" : "DEM Geschlecht (Selbstbeschreibung)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-30T19:54:40+00:00",
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
    "display" : "Female",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Weiblich"
    }]
  },
  {
    "code" : "maennlich",
    "display" : "Male",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Männlich"
    }]
  },
  {
    "code" : "nicht-binaer",
    "display" : "Non-binary",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nicht-binär"
    }]
  },
  {
    "code" : "andere",
    "display" : "Other",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Andere"
    }]
  },
  {
    "code" : "keine-angabe",
    "display" : "Prefer not to say",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Möchte ich nicht sagen"
    }]
  }]
}

```
