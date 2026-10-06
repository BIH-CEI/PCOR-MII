# UKHD-EDP Antwortstufen (neutralisiert) - PCOR-MII Implementation Guide v0.3.0

## ValueSet: UKHD-EDP Antwortstufen (neutralisiert) (Experimentell) 

 **References** 

* [UKHD-EDP — Essstörungspathologie (11 Items, metadata-only)](Questionnaire-UKHDEDP.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ukhd-edp-stufe-6-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-edp-stufe-6-vs",
  "version" : "0.3.0",
  "name" : "UkhdEdpStufe6VS",
  "title" : "UKHD-EDP Antwortstufen (neutralisiert)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-06T08:04:25+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Antwortstufen des UKHD-EDP in neutralisierter Form — siehe CodeSystem.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-edp-stufe-6"
    }]
  }
}

```
