# UKHD-EDP Antwortstufen (neutralisiert, 6-stufig) - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: UKHD-EDP Antwortstufen (neutralisiert, 6-stufig) (Experimentell) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [UKHD-EDP Antwortstufen (neutralisiert)](ValueSet-ukhd-edp-stufe-6-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ukhd-edp-stufe-6",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-edp-stufe-6",
  "version" : "0.9.0",
  "name" : "UkhdEdpStufe6CS",
  "title" : "UKHD-EDP Antwortstufen (neutralisiert, 6-stufig)",
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
  "description" : "Sechsstufige Zustimmungsskala des UKHD-EDP, **neutral benannt**. Die Originalbezeichnungen der Antwortstufen sind bewusst nicht abgebildet (metadata-only, siehe Questionnaire). `itemWeight` 1–6 bildet die Stufenfolge ab, damit eine spätere Auswertung möglich bleibt.",
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
    "code" : "itemWeight",
    "uri" : "http://hl7.org/fhir/concept-properties#itemWeight",
    "description" : "Stufe der Zustimmungsskala (1-6).",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "1",
    "display" : "Stufe 1 (geringste Zustimmung)",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "2",
    "display" : "Stufe 2",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "3",
    "display" : "Stufe 3",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "4",
    "display" : "Stufe 4",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 4
    }]
  },
  {
    "code" : "5",
    "display" : "Stufe 5",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 5
    }]
  },
  {
    "code" : "6",
    "display" : "Stufe 6 (höchste Zustimmung)",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 6
    }]
  }]
}

```
