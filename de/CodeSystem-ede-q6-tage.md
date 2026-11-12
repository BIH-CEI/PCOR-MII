# EDE-Q6 Häufigkeit in 28 Tagen (Codes) - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: EDE-Q6 Häufigkeit in 28 Tagen (Codes) (Experimentell) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [EDE-Q6 Häufigkeit in 28 Tagen](ValueSet-ede-q6-tage-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ede-q6-tage",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ede-q6-tage",
  "version" : "0.9.0",
  "name" : "EdeQ6TageCS",
  "title" : "EDE-Q6 Häufigkeit in 28 Tagen (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-12T18:28:00+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "7-stufige Häufigkeitsskala der EDE-Q-Items über die letzten 28 Tage (0 = kein Tag ... 6 = jeden Tag). itemWeight-Property je Konzept für SDC-Scoring via .weight(). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. Hier stimmt sie mit der Itemnummer überein.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "property" : [{
    "code" : "itemWeight",
    "uri" : "http://hl7.org/fhir/concept-properties#itemWeight",
    "description" : "Numerischer Ordinalwert (0-6) für SDC-Scoring über .weight().",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "0",
    "display" : "No days",
    "designation" : [{
      "language" : "de",
      "value" : "kein Tag"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 0
    }]
  },
  {
    "code" : "1",
    "display" : "1-5 days",
    "designation" : [{
      "language" : "de",
      "value" : "1–5 Tage"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "2",
    "display" : "6-12 days",
    "designation" : [{
      "language" : "de",
      "value" : "6–12 Tage"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "3",
    "display" : "13-15 days",
    "designation" : [{
      "language" : "de",
      "value" : "13–15 Tage"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "4",
    "display" : "16-22 days",
    "designation" : [{
      "language" : "de",
      "value" : "16–22 Tage"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 4
    }]
  },
  {
    "code" : "5",
    "display" : "23-27 days",
    "designation" : [{
      "language" : "de",
      "value" : "23–27 Tage"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 5
    }]
  },
  {
    "code" : "6",
    "display" : "Every day",
    "designation" : [{
      "language" : "de",
      "value" : "jeden Tag"
    }],
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 6
    }]
  }]
}

```
