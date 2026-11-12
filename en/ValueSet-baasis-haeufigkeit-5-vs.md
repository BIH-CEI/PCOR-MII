# BAASIS Häufigkeit 5-stufig - PCOR-MII Implementation Guide v0.9.0

## ValueSet: BAASIS Häufigkeit 5-stufig (Experimental) 

 **References** 

* [BAASIS — Adhärenz gegenüber immunsuppressiver Medikation (NTx, metadata-only)](Questionnaire-BAASIS.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "baasis-haeufigkeit-5-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/baasis-haeufigkeit-5-vs",
  "version" : "0.9.0",
  "name" : "BaasisHaeufigkeit5VS",
  "title" : "BAASIS Häufigkeit 5-stufig",
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
  "description" : "Neutral benannte 5-stufige Anzahl-Skala der BAASIS-Teilfragen 1A_a und 1B_a (Stufe 1 bis Stufe 5). Metadata-only, siehe BaasisHaeufigkeit5CS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-5"
    }]
  }
}

```
