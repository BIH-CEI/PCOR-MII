# UKHD-AN Arztbesuche in den letzten 4 Wochen (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: UKHD-AN Arztbesuche in den letzten 4 Wochen (Codes) (Experimentell) 

 
Vierstufige Häufigkeitsskala der Arztbesuche in den letzten vier Wochen (`bdkm16`). `ordinalValue`-Property je Konzept — die Werte sind die Dictionary-Codes 1–4 und damit Rangplätze, **nicht** Besuchszahlen (`gar nicht` = 1, nicht 0). 

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
  "version" : "0.3.0",
  "name" : "UkhdAnArztbesucheCS",
  "title" : "UKHD-AN Arztbesuche in den letzten 4 Wochen (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T11:25:55+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Vierstufige Häufigkeitsskala der Arztbesuche in den letzten vier Wochen (`bdkm16`). `ordinalValue`-Property je Konzept — die Werte sind die Dictionary-Codes 1–4 und damit Rangplätze, **nicht** Besuchszahlen (`gar nicht` = 1, nicht 0).",
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
    "code" : "ordinalValue",
    "uri" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
    "description" : "Numerischer Ordinalwert (1-4, Dictionary-Codes — kein Besuchszaehler).",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "1",
    "display" : "gar nicht",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "2",
    "display" : "einmalig",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "3",
    "display" : "zweimalig",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "4",
    "display" : "drei oder mehrfach",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 4
    }]
  }]
}

```
