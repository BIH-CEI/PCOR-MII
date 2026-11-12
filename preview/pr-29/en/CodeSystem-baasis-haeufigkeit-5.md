# BAASIS Häufigkeit 5-stufig (Codes) - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: BAASIS Häufigkeit 5-stufig (Codes) (Experimental) 

This Code system is referenced in the definition of the following value sets:

* [BAASIS Häufigkeit 5-stufig](ValueSet-baasis-haeufigkeit-5-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "baasis-haeufigkeit-5",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-5",
  "version" : "0.9.0",
  "name" : "BaasisHaeufigkeit5CS",
  "title" : "BAASIS Häufigkeit 5-stufig (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-12T18:10:53+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Neutral benannte 5-stufige Anzahl-Skala der BAASIS-Teilfragen 1A_a und 1B_a (Stufe 1 bis Stufe 5; offiziell fünf Kategorien von einmal bis mehr als viermal). METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. itemWeight-Property je Konzept (1-5) ermöglicht eine spätere Auswertung. Teilfrage 2_a nutzt die eigene Skala BaasisHaeufigkeitZeit5CS.",
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
  "property" : [{
    "code" : "itemWeight",
    "uri" : "http://hl7.org/fhir/concept-properties#itemWeight",
    "description" : "Numerischer Ordinalwert (1-5); Stufe n = n-te Antwortoption in aufsteigender Reihenfolge.",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "stufe-1",
    "display" : "Stufe 1",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "stufe-2",
    "display" : "Stufe 2",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "stufe-3",
    "display" : "Stufe 3",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "stufe-4",
    "display" : "Stufe 4",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 4
    }]
  },
  {
    "code" : "stufe-5",
    "display" : "Stufe 5",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 5
    }]
  }]
}

```
