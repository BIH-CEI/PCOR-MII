# DEM Haushaltseinkommen (Bänder) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: DEM Haushaltseinkommen (Bänder) (Experimental) 

 
Netto-Haushaltseinkommen in Kategorien (Q_OECDLIT7a). Die ursprüngliche deutsche Übersetzung liegt in de-CH vor (Schweizer PaRIS-Fassung, Bänder bis CHF 3630 / zwischen CHF 3630 und CHF 6050 / ab CHF 6050 pro Monat). Für PCOR-MII sind die Bänder auf deutsche Gehaltsdaten angepasst: EUR-Terzile nach IW Köln (Institut der deutschen Wirtschaft, Niehues/Stockhausen). Das ist KEINE Währungsumrechnung, sondern eine eigenständige Skala — CHF 3630 entspräche grob 3.800 EUR, nicht 2.300 EUR. Weil der Wortlaut damit deutsch und nicht schweizerisch ist, tragen die Designations hier de-DE; die übrigen DEM-Antwortskalen behalten ihren Schweizer Wortlaut nach ADR-005 bewusst bei. 

This Code system is referenced in the definition of the following value sets:

* [DEM Haushaltseinkommen](ValueSet-dem-einkommen-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-10-01T14:39:18+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Netto-Haushaltseinkommen in Kategorien (Q_OECDLIT7a). Die ursprüngliche deutsche Übersetzung liegt in de-CH vor (Schweizer PaRIS-Fassung, Bänder bis CHF 3630 / zwischen CHF 3630 und CHF 6050 / ab CHF 6050 pro Monat). Für PCOR-MII sind die Bänder auf deutsche Gehaltsdaten angepasst: EUR-Terzile nach IW Köln (Institut der deutschen Wirtschaft, Niehues/Stockhausen). Das ist KEINE Währungsumrechnung, sondern eine eigenständige Skala — CHF 3630 entspräche grob 3.800 EUR, nicht 2.300 EUR. Weil der Wortlaut damit deutsch und nicht schweizerisch ist, tragen die Designations hier de-DE; die übrigen DEM-Antwortskalen behalten ihren Schweizer Wortlaut nach ADR-005 bewusst bei.",
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
      "language" : "de-DE",
      "value" : "Bis zu 2.300 € pro Monat"
    }]
  },
  {
    "code" : "band-mittel",
    "display" : "Between €2,300 and €5,200 a month",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zwischen 2.300 € und 5.200 € pro Monat"
    }]
  },
  {
    "code" : "band-hoch",
    "display" : "€5,200 a month or more",
    "designation" : [{
      "language" : "de-DE",
      "value" : "5.200 € pro Monat oder mehr"
    }]
  },
  {
    "code" : "weiss-nicht",
    "display" : "Don't know",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ich weiß es nicht"
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
