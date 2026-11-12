# MTSOSD-R59 Auftreten 5-stufig (Codes) - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: MTSOSD-R59 Auftreten 5-stufig (Codes) (Experimentell) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MTSOSD-R59 Auftreten 5-stufig](ValueSet-mtsosd-r59-auftreten-5-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mtsosd-r59-auftreten-5",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-auftreten-5",
  "version" : "0.9.0",
  "name" : "MtsosdR59Auftreten5CS",
  "title" : "MTSOSD-R59 Auftreten 5-stufig (Codes)",
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
  "description" : "Neutral benannte 5-stufige Auftretensskala des MTSOSD-R59 (Stufe 0 bis Stufe 4). METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. Stufe 0 = Symptom nicht aufgetreten. itemWeight-Property je Konzept (0-4) ermöglicht eine spätere Auswertung.",
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
    "description" : "Numerischer Ordinalwert (0-4); 0 = Symptom nicht aufgetreten.",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "stufe-0",
    "display" : "Stufe 0",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 0
    }]
  },
  {
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
  }]
}

```
