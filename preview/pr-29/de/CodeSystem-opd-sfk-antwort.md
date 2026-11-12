# OPD-SFK Antwortskala (Codes) - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: OPD-SFK Antwortskala (Codes) (Experimentell) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [OPD-SFK Antwortskala](ValueSet-opd-sfk-antwort-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "opd-sfk-antwort",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/opd-sfk-antwort",
  "version" : "0.9.0",
  "name" : "OpdSfkAntwortCS",
  "title" : "OPD-SFK Antwortskala (Codes)",
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
  "description" : "5-stufige Antwortskala des OPD-SFK (0 = trifft gar nicht zu ... 4 = trifft völlig zu). itemWeight-Property je Konzept für SDC-Summenscoring via .weight().",
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
    "description" : "Numerischer Ordinalwert (0-4) für SDC-Summenscoring über .weight().",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "trifft-gar-nicht-zu",
    "display" : "Trifft gar nicht zu",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 0
    }]
  },
  {
    "code" : "trifft-eher-nicht-zu",
    "display" : "Trifft eher nicht zu",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "teils-teils",
    "display" : "Teils/teils",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "trifft-eher-zu",
    "display" : "Trifft eher zu",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "trifft-voellig-zu",
    "display" : "Trifft völlig zu",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 4
    }]
  }]
}

```
