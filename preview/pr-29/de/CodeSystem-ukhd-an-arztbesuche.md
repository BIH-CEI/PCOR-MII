# UKHD-AN Arztbesuche in den letzten 4 Wochen (Codes) - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: UKHD-AN Arztbesuche in den letzten 4 Wochen (Codes) (Experimentell) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [UKHD-AN Arztbesuche in den letzten 4 Wochen](ValueSet-ukhd-an-arztbesuche-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ukhd-an-arztbesuche",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche",
  "version" : "0.9.0",
  "name" : "UkhdAnArztbesucheCS",
  "title" : "UKHD-AN Arztbesuche in den letzten 4 Wochen (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-12T18:22:58+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Vierstufige Häufigkeitsskala der Arztbesuche in den letzten vier Wochen (`bdkm16`). `itemWeight`-Property je Konzept — die Werte sind die Dictionary-Codes 1–4 und damit Rangplätze, **nicht** Besuchszahlen (`gar nicht` = 1, nicht 0).",
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
  "property" : [{
    "code" : "itemWeight",
    "uri" : "http://hl7.org/fhir/concept-properties#itemWeight",
    "description" : "Numerischer Ordinalwert (1-4, Dictionary-Codes — kein Besuchszaehler).",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "1",
    "display" : "gar nicht",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "2",
    "display" : "einmalig",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "3",
    "display" : "zweimalig",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "4",
    "display" : "drei oder mehrfach",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 4
    }]
  }]
}

```
