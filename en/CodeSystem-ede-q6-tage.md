# EDE-Q6 Häufigkeit in 28 Tagen (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: EDE-Q6 Häufigkeit in 28 Tagen (Codes) (Experimental) 

 
7-stufige Häufigkeitsskala der EDE-Q-Items über die letzten 28 Tage (0 = kein Tag … 6 = jeden Tag). ordinalValue-Property je Konzept für SDC-Scoring via .ordinal(). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. Hier stimmt sie mit der Itemnummer überein. 

This Code system is referenced in the definition of the following value sets:

* [EDE-Q6 Häufigkeit in 28 Tagen](ValueSet-ede-q6-tage-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ede-q6-tage",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ede-q6-tage",
  "version" : "0.3.0",
  "name" : "EdeQ6TageCS",
  "title" : "EDE-Q6 Häufigkeit in 28 Tagen (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T14:39:45+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "7-stufige Häufigkeitsskala der EDE-Q-Items über die letzten 28 Tage (0 = kein Tag ... 6 = jeden Tag). ordinalValue-Property je Konzept für SDC-Scoring via .ordinal(). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. Hier stimmt sie mit der Itemnummer überein.",
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
    "code" : "ordinalValue",
    "uri" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
    "description" : "Numerischer Ordinalwert (0-6) für SDC-Scoring über .ordinal().",
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
      "code" : "ordinalValue",
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
      "code" : "ordinalValue",
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
      "code" : "ordinalValue",
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
      "code" : "ordinalValue",
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
      "code" : "ordinalValue",
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
      "code" : "ordinalValue",
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
      "code" : "ordinalValue",
      "valueDecimal" : 6
    }]
  }]
}

```
