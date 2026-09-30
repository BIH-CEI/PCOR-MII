# SSUK Antwortskala - PCOR-MII Implementation Guide v0.3.0

## ValueSet: SSUK Antwortskala (Experimental) 

 
5-stufige Häufigkeitsskala der SSUK (0 = nie … 4 = immer). 

 **References** 

* [SSUK-2 — Soziale Unterstützung bei Krankheit (2-Item-Zuschnitt)](Questionnaire-SSUK2.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ssuk-antwort-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ssuk-antwort-vs",
  "version" : "0.3.0",
  "name" : "SsukAntwortVS",
  "title" : "SSUK Antwortskala",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-30T16:58:12+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "5-stufige Häufigkeitsskala der SSUK (0 = nie ... 4 = immer).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ssuk-antwort"
    }]
  }
}

```
