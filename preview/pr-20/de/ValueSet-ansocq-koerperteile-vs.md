# ANSOCQ Item 3 — Körperteile - PCOR-MII Implementation Guide v0.3.0

## ValueSet: ANSOCQ Item 3 — Körperteile (Experimentell) 

 
Fünf Feststellungen des ANSOCQ-Items 3 (Körperteile bei Gewichtszunahme), Stadien 1-5. 

 **References** 

* [ANSOCQ-2 — Veränderungsmotivation (2-Item-Zuschnitt des ANSOCQ)](Questionnaire-ANSOCQ2.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ansocq-koerperteile-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ansocq-koerperteile-vs",
  "version" : "0.3.0",
  "name" : "AnsocqKoerperteileVS",
  "title" : "ANSOCQ Item 3 — Körperteile",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T11:15:40+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Fünf Feststellungen des ANSOCQ-Items 3 (Körperteile bei Gewichtszunahme), Stadien 1-5.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-koerperteile"
    }]
  }
}

```
