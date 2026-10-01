# ANSOCQ Item 14 — Gedanken an Nahrung und Gewicht - PCOR-MII Implementation Guide v0.3.0

## ValueSet: ANSOCQ Item 14 — Gedanken an Nahrung und Gewicht (Experimental) 

 
Fünf Feststellungen des ANSOCQ-Items 14 (Zeit mit Gedanken an Nahrung und Gewicht), Stadien 1-5. 

 **References** 

* [ANSOCQ-2 — Veränderungsmotivation (2-Item-Zuschnitt des ANSOCQ)](Questionnaire-ANSOCQ2.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ansocq-gedanken-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ansocq-gedanken-vs",
  "version" : "0.3.0",
  "name" : "AnsocqGedankenVS",
  "title" : "ANSOCQ Item 14 — Gedanken an Nahrung und Gewicht",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T14:41:41+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Fünf Feststellungen des ANSOCQ-Items 14 (Zeit mit Gedanken an Nahrung und Gewicht), Stadien 1-5.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-gedanken"
    }]
  }
}

```
