# UKHD-AN Arztbesuche in den letzten 4 Wochen - PCOR-MII Implementation Guide v0.3.0

## ValueSet: UKHD-AN Arztbesuche in den letzten 4 Wochen (Experimental) 

 
Vierstufige Häufigkeitsskala der Arztbesuche in den letzten vier Wochen (`bdkm16`), `ordinalValue` 1–4. 

 **References** 

* [UKHD-PT — Vorbehandlung (UKHD-Zusatzitems AN)](Questionnaire-UKHDPT.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ukhd-an-arztbesuche-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-arztbesuche-vs",
  "version" : "0.3.0",
  "name" : "UkhdAnArztbesucheVS",
  "title" : "UKHD-AN Arztbesuche in den letzten 4 Wochen",
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
  "description" : "Vierstufige Häufigkeitsskala der Arztbesuche in den letzten vier Wochen (`bdkm16`), `ordinalValue` 1–4.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche"
    }]
  }
}

```
