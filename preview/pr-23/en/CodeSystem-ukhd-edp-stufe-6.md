# UKHD-EDP Antwortstufen (neutralisiert, 6-stufig) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: UKHD-EDP Antwortstufen (neutralisiert, 6-stufig) (Experimental) 

 
Sechsstufige Zustimmungsskala des UKHD-EDP, **neutral benannt**. Die Originalbezeichnungen der Antwortstufen sind bewusst nicht abgebildet (metadata-only, siehe Questionnaire). `ordinalValue` 1–6 bildet die Stufenfolge ab, damit eine spätere Auswertung möglich bleibt. 

This Code system is referenced in the definition of the following value sets:

* [UKHD-EDP Antwortstufen (neutralisiert)](ValueSet-ukhd-edp-stufe-6-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ukhd-edp-stufe-6",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-edp-stufe-6",
  "version" : "0.3.0",
  "name" : "UkhdEdpStufe6CS",
  "title" : "UKHD-EDP Antwortstufen (neutralisiert, 6-stufig)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T14:23:58+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Sechsstufige Zustimmungsskala des UKHD-EDP, **neutral benannt**. Die Originalbezeichnungen der Antwortstufen sind bewusst nicht abgebildet (metadata-only, siehe Questionnaire). `ordinalValue` 1–6 bildet die Stufenfolge ab, damit eine spätere Auswertung möglich bleibt.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "property" : [{
    "code" : "ordinalValue",
    "uri" : "http://hl7.org/fhir/StructureDefinition/ordinalValue",
    "description" : "Stufe der Zustimmungsskala (1-6).",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "1",
    "display" : "Stufe 1 (geringste Zustimmung)",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "2",
    "display" : "Stufe 2",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "3",
    "display" : "Stufe 3",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "4",
    "display" : "Stufe 4",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 4
    }]
  },
  {
    "code" : "5",
    "display" : "Stufe 5",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 5
    }]
  },
  {
    "code" : "6",
    "display" : "Stufe 6 (höchste Zustimmung)",
    "property" : [{
      "code" : "ordinalValue",
      "valueDecimal" : 6
    }]
  }]
}

```
