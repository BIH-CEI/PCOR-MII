# SSUK Antwortskala (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: SSUK Antwortskala (Codes) (Experimental) 

 
5-stufige Häufigkeitsskala der SSUK (0 = nie … 4 = immer). ordinalValue-Property je Konzept. Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. Hier stimmt sie mit der Itemnummer überein. 

This Code system is referenced in the definition of the following value sets:

* [SSUK Antwortskala](ValueSet-ssuk-antwort-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ssuk-antwort",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ssuk-antwort",
  "version" : "0.3.0",
  "name" : "SsukAntwortCS",
  "title" : "SSUK Antwortskala (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-30T09:40:42+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "5-stufige Häufigkeitsskala der SSUK (0 = nie ... 4 = immer). ordinalValue-Property je Konzept. Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. Hier stimmt sie mit der Itemnummer überein.",
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
    "description" : "Numerischer Ordinalwert (0-4).",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "0",
    "display" : "nie",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 0
    }]
  },
  {
    "code" : "1",
    "display" : "selten",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "2",
    "display" : "manchmal",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "3",
    "display" : "oft",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "4",
    "display" : "immer",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 4
    }]
  }]
}

```
