# MTSOSD-R59 Belastung 5-stufig (Codes) - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: MTSOSD-R59 Belastung 5-stufig (Codes) (Experimental) 

This Code system is referenced in the definition of the following value sets:

* [MTSOSD-R59 Belastung 5-stufig](ValueSet-mtsosd-r59-belastung-5-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mtsosd-r59-belastung-5",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-belastung-5",
  "version" : "0.9.0",
  "name" : "MtsosdR59Belastung5CS",
  "title" : "MTSOSD-R59 Belastung 5-stufig (Codes)",
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
  "description" : "Neutral benannte 5-stufige Belastungsskala des MTSOSD-R59 (Stufe 0 bis Stufe 4). Quelle: Blatt Visual Scale MTSOSD-R59 des Item Level Dictionary — eine Linie mit den Stufen 0-4 und zwei verbalen Ankern, entsprechend der Originalskala (Dobbels et al. 2008). METADATA-ONLY: Die Ankertexte dürfen nicht veröffentlicht werden. Stufe 0 = keine Belastung. itemWeight-Property je Konzept (0-4).",
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
    "description" : "Numerischer Ordinalwert (0-4); 0 = keine Belastung, 4 = stärkste Belastung.",
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
