# ANSOCQ Item 14 — Gedanken an Nahrung und Gewicht (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: ANSOCQ Item 14 — Gedanken an Nahrung und Gewicht (Codes) (Experimentell) 

 
Fünf Feststellungen des ANSOCQ-Items 14 (Zeit mit Gedanken an Nahrung und Gewicht), Stadien 1-5. ordinalValue-Property je Konzept. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [ANSOCQ Item 14 — Gedanken an Nahrung und Gewicht](ValueSet-ansocq-gedanken-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ansocq-gedanken",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-gedanken",
  "version" : "0.3.0",
  "name" : "AnsocqGedankenCS",
  "title" : "ANSOCQ Item 14 — Gedanken an Nahrung und Gewicht (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-30T08:17:00+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Fünf Feststellungen des ANSOCQ-Items 14 (Zeit mit Gedanken an Nahrung und Gewicht), Stadien 1-5. ordinalValue-Property je Konzept.",
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
    "display" : "There is nothing wrong with the amount of time I spend thinking about food and my weight.",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Die Zeitdauer, die ich mit Gedanken an Nahrung und Gewicht verbringe, ist völlig in Ordnung."
    },
    {
      "language" : "de",
      "value" : "Die Zeitdauer, die ich mit Gedanken an Nahrung und Gewicht verbringe, ist völlig in Ordnung."
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "2",
    "display" : "The amount of time I spend thinking about food and my weight is a problem sometimes.",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Die Zeitdauer, die ich mit Gedanken an Nahrung und Gewicht verbringe, ist manchmal ein Problem für mich."
    },
    {
      "language" : "de",
      "value" : "Die Zeitdauer, die ich mit Gedanken an Nahrung und Gewicht verbringe, ist manchmal ein Problem für mich."
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "3",
    "display" : "I have decided that I need to use strategies to help me reduce the amount of time I spend thinking about food and my weight.",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Ich habe mich entschieden, dass ich Strategien entwickeln muss, um die Zeitdauer zu reduzieren, die ich mit Gedanken an Nahrung und Gewicht verbringe."
    },
    {
      "language" : "de",
      "value" : "Ich habe mich entschieden, dass ich Strategien entwickeln muss, um die Zeitdauer zu reduzieren, die ich mit Gedanken an Nahrung und Gewicht verbringe."
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "4",
    "display" : "I am using strategies to help me reduce the amount of time I spend thinking about food and my weight.",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Ich benutze Strategien, die mir helfen, die Zeitdauer zu reduzieren, die ich mit Gedanken an Nahrung und Gewicht verbringe."
    },
    {
      "language" : "de",
      "value" : "Ich benutze Strategien, die mir helfen, die Zeitdauer zu reduzieren, die ich mit Gedanken an Nahrung und Gewicht verbringe."
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 4
    }]
  },
  {
    "code" : "5",
    "display" : "I used to spend too much time thinking about food and my weight which I have managed to reduce and am working to keep it this way.",
    "designation" : [{
      "language" : "de-CH",
      "value" : "Ich verbrachte früher zu viel Zeit mit Gedanken an Nahrung und Gewicht, was ich nun reduzieren konnte, und ich arbeite daran, dass dies so bleibt."
    },
    {
      "language" : "de",
      "value" : "Ich verbrachte früher zu viel Zeit mit Gedanken an Nahrung und Gewicht, was ich nun reduzieren konnte, und ich arbeite daran, dass dies so bleibt."
    }],
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 5
    }]
  }]
}

```
