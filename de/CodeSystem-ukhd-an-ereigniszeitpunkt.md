# UKHD-AN Ereignis vor oder nach Beginn der Essstoerung (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: UKHD-AN Ereignis vor oder nach Beginn der Essstoerung (Codes) (Experimentell) 

 
Zeitliche Lage des Ereignisses relativ zu den ersten Anzeichen der Essstörung (`traumaspecific2`, `traumaspecific4`, `traumaspecific6`). Nominal — bewusst ohne `ordinalValue`; Stufe 3 ist eine erhobene Nicht-Antwort. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [UKHD-AN Ereignis vor oder nach Beginn der Essstoerung](ValueSet-ukhd-an-ereigniszeitpunkt-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ukhd-an-ereigniszeitpunkt",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereigniszeitpunkt",
  "version" : "0.3.0",
  "name" : "UkhdAnEreigniszeitpunktCS",
  "title" : "UKHD-AN Ereignis vor oder nach Beginn der Essstoerung (Codes)",
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
  "description" : "Zeitliche Lage des Ereignisses relativ zu den ersten Anzeichen der Essstörung (`traumaspecific2`, `traumaspecific4`, `traumaspecific6`). Nominal — bewusst ohne `ordinalValue`; Stufe 3 ist eine erhobene Nicht-Antwort.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "1",
    "display" : "vor den ersten Anzeichen der Essstörung"
  },
  {
    "code" : "2",
    "display" : "nach den ersten Anzeichen der Essstörung"
  },
  {
    "code" : "3",
    "display" : "ich weiß es nicht mehr"
  }]
}

```
