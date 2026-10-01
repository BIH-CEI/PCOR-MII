# UKHD-AN Ereignis einmalig oder wiederholt (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: UKHD-AN Ereignis einmalig oder wiederholt (Codes) (Experimentell) 

 
Einmaliges oder wiederholtes Ereignis (`traumaspecific1`, `traumaspecific3`, `traumaspecific5`), `ordinalValue` 1–2. Die Displays sind Satzfragmente, die den Itemtext fortsetzen — so im Item Level Dictionary. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [UKHD-AN Ereignis einmalig oder wiederholt](ValueSet-ukhd-an-ereignishaeufigkeit-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ukhd-an-ereignishaeufigkeit",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereignishaeufigkeit",
  "version" : "0.3.0",
  "name" : "UkhdAnEreignishaeufigkeitCS",
  "title" : "UKHD-AN Ereignis einmalig oder wiederholt (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T12:55:11+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Einmaliges oder wiederholtes Ereignis (`traumaspecific1`, `traumaspecific3`, `traumaspecific5`), `ordinalValue` 1–2. Die Displays sind Satzfragmente, die den Itemtext fortsetzen — so im Item Level Dictionary.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "property" : [{
    "code" : "ordinalValue",
    "uri" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
    "description" : "Numerischer Ordinalwert (1-2, Dictionary-Codes).",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "1",
    "display" : "um ein einmaliges",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "2",
    "display" : "um ein mehrfaches Ereignis",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 2
    }]
  }]
}

```
