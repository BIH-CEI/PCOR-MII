# ABQ Antwortskala 4-stufig (Codes) - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: ABQ Antwortskala 4-stufig (Codes) (Experimental) 

This Code system is referenced in the definition of the following value sets:

* [ABQ Antwortskala 4-stufig](ValueSet-abq-skala-4-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "abq-skala-4",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/abq-skala-4",
  "version" : "0.9.0",
  "name" : "AbqSkala4CS",
  "title" : "ABQ Antwortskala 4-stufig (Codes)",
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
  "description" : "Neutral benannte 4-stufige Antwortskala des ABQ (Stufe 1 bis Stufe 4). METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. Polung (welche Stufe die höchste Barriere abbildet) nicht gegen das Original verifiziert. itemWeight-Property je Konzept (1-4) ermöglicht Scoring bzw. spätere Auswertung.",
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
    "description" : "Numerischer Ordinalwert (1-4); Polung nicht gegen das Originalinstrument verifiziert.",
    "type" : "decimal"
  }],
  "concept" : [{
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
