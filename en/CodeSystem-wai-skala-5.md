# WAI Antwortskala 5-stufig (Codes) - PCOR-MII Implementation Guide v0.2.0

## CodeSystem: WAI Antwortskala 5-stufig (Codes) (Experimental) 

 
Neutral benannte 5-stufige Antwortskala für WAI02a/WAI02b (Selbsteinschätzung der Arbeitsfähigkeit bzgl. körperlicher/psychischer Arbeitsanforderungen). METADATA-ONLY: Konzeptbezeichnungen sind bewusst neutral (Stufe 1-5) statt der Original-Itembezeichnungen, da die Publikationsrechte am WAI ungeklärt sind. Stufe 5 = bester Wert, Stufe 1 = schlechtester Wert. ordinalValue-Property je Konzept ermöglicht Scoring. 

This Code system is referenced in the definition of the following value sets:

* [WAI Antwortskala 5-stufig](ValueSet-wai-skala-5-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "wai-skala-5",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/wai-skala-5",
  "version" : "0.2.0",
  "name" : "WaiSkala5CS",
  "title" : "WAI Antwortskala 5-stufig (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-02T07:19:25+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Neutral benannte 5-stufige Antwortskala für WAI02a/WAI02b (Selbsteinschätzung der Arbeitsfähigkeit bzgl. körperlicher/psychischer Arbeitsanforderungen). METADATA-ONLY: Konzeptbezeichnungen sind bewusst neutral (Stufe 1-5) statt der Original-Itembezeichnungen, da die Publikationsrechte am WAI ungeklärt sind. Stufe 5 = bester Wert, Stufe 1 = schlechtester Wert. ordinalValue-Property je Konzept ermöglicht Scoring.",
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
    "description" : "Numerischer Ordinalwert (1-5); 5 = bester Wert.",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "stufe-1",
    "display" : "Stufe 1",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "stufe-2",
    "display" : "Stufe 2",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "stufe-3",
    "display" : "Stufe 3",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "stufe-4",
    "display" : "Stufe 4",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 4
    }]
  },
  {
    "code" : "stufe-5",
    "display" : "Stufe 5",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 5
    }]
  }]
}

```
