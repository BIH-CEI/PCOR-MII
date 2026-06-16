# PCOR Example General Health Self-Assessment - PCOR-MII Implementation Guide v0.1.0

## ValueSet: PCOR Example General Health Self-Assessment (Experimentell) 

 
ValueSet, das alle 5 Stufen der Selbsteinschätzung der allgemeinen Gesundheit aus dem Beispiel-Questionnaire abdeckt. 

 **References** 

* [PCOR Beispiel-Fragebogen](Questionnaire-PcorExampleQuestionnaire.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "pcor-example-general-health",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/pcor-example-general-health",
  "version" : "0.1.0",
  "name" : "PcorExampleGeneralHealthVS",
  "title" : "PCOR Example General Health Self-Assessment",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T09:03:15+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "ValueSet, das alle 5 Stufen der Selbsteinschätzung der allgemeinen Gesundheit aus dem Beispiel-Questionnaire abdeckt.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-example-general-health"
    }]
  }
}

```
