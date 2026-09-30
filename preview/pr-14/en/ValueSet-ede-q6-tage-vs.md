# EDE-Q6 Häufigkeit in 28 Tagen - PCOR-MII Implementation Guide v0.3.0

## ValueSet: EDE-Q6 Häufigkeit in 28 Tagen (Experimental) 

 
7-stufige Häufigkeitsskala der EDE-Q-Items über die letzten 28 Tage (0 = kein Tag … 6 = jeden Tag). 

 **References** 

* [EDE-Q6 — Essstörungspathologie (6-Item-Zuschnitt des EDE-Q)](Questionnaire-EDEQ6.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ede-q6-tage-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ede-q6-tage-vs",
  "version" : "0.3.0",
  "name" : "EdeQ6TageVS",
  "title" : "EDE-Q6 Häufigkeit in 28 Tagen",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-30T09:23:41+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "7-stufige Häufigkeitsskala der EDE-Q-Items über die letzten 28 Tage (0 = kein Tag ... 6 = jeden Tag).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ede-q6-tage"
    }]
  }
}

```
