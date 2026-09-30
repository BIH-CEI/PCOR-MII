# ANSOCQ Item 3 — Körperteile (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: ANSOCQ Item 3 — Körperteile (Codes) (Experimentell) 

 
Fünf Feststellungen des ANSOCQ-Items 3 (Körperteile bei Gewichtszunahme), Stadien 1-5. ordinalValue-Property je Konzept. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [ANSOCQ Item 3 — Körperteile](ValueSet-ansocq-koerperteile-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ansocq-koerperteile",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-koerperteile",
  "version" : "0.3.0",
  "name" : "AnsocqKoerperteileCS",
  "title" : "ANSOCQ Item 3 — Körperteile (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-30T09:08:36+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Fünf Feststellungen des ANSOCQ-Items 3 (Körperteile bei Gewichtszunahme), Stadien 1-5. ordinalValue-Property je Konzept.",
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
    "code" : "ordinalValue",
    "uri" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
    "description" : "Stadium der Veränderungsbereitschaft (1-5).",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "1",
    "display" : "There is no way I would be prepared to gain weight on these body parts.",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Ich wäre auf keinen Fall bereit an diesen Körperteilen zunehmen"
    },
    {
      "language" : "de",
      "value" : "Ich wäre auf keinen Fall bereit, an diesen Körperteilen zuzunehmen"
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "2",
    "display" : "Sometimes I think I would be prepared to gain weight on these body parts.",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Manchmal denke ich, dass ich unter Umständen bereit wäre, an diesen Körperteilen zuzunehmen"
    },
    {
      "language" : "de",
      "value" : "Manchmal denke ich, dass ich unter Umständen bereit wäre, an diesen Körperteilen zuzunehmen"
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "3",
    "display" : "I have decided that I am prepared to gain weight on these body parts.",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Ich habe mich entschieden, dass ich bereit bin, an diesen Körperteilen zuzunehmen"
    },
    {
      "language" : "de",
      "value" : "Ich habe mich entschieden, dass ich bereit bin, an diesen Körperteilen zuzunehmen"
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "4",
    "display" : "I am presently trying to gain weight on these body parts.",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Ich versuche im Moment, an diesen Körperteilen zuzunehmen"
    },
    {
      "language" : "de",
      "value" : "Ich versuche im Moment, an diesen Körperteilen zuzunehmen"
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 4
    }]
  },
  {
    "code" : "5",
    "display" : "I am working to maintain the weight I gained on these body parts.",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Ich arbeite daran, das Gewicht zu halten, das ich an diesen Körperteilen zugenommen habe."
    },
    {
      "language" : "de",
      "value" : "Ich arbeite daran, das Gewicht zu halten, das ich an diesen Körperteilen zugenommen habe."
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 5
    }]
  }]
}

```
