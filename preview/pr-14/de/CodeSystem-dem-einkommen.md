# DEM Haushaltseinkommen (Bänder) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: DEM Haushaltseinkommen (Bänder) (Experimentell) 

 
Netto-Haushaltseinkommen in Kategorien (Q_OECDLIT7a). EUR-Bänder nach IW Köln (Institut der deutschen Wirtschaft, Niehues/Stockhausen). 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DEM Haushaltseinkommen](ValueSet-dem-einkommen-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-einkommen",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-einkommen",
  "version" : "0.3.0",
  "name" : "DemEinkommenCS",
  "title" : "DEM Haushaltseinkommen (Bänder)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-30T09:36:19+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Netto-Haushaltseinkommen in Kategorien (Q_OECDLIT7a). EUR-Bänder nach IW Köln (Institut der deutschen Wirtschaft, Niehues/Stockhausen).",
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
    "code" : "band-niedrig",
    "display" : "Up to €2,300 a month",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Bis zu 2.300 € pro Monat"
    }]
  },
  {
    "code" : "band-mittel",
    "display" : "Between €2,300 and €5,200 a month",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Zwischen 2.300 € und 5.200 € pro Monat"
    }]
  },
  {
    "code" : "band-hoch",
    "display" : "€5,200 a month or more",
    "designation" : [{
      "language" : "de-CH",
      "value" : "5.200 € pro Monat oder mehr"
    }]
  },
  {
    "code" : "weiss-nicht",
    "display" : "Don't know",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Ich weiss es nicht"
    }]
  },
  {
    "code" : "keine-angabe",
    "display" : "Prefer not to say",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Möchte ich nicht sagen"
    }]
  }]
}

```
