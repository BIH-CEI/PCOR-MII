# PCOR Example General Health Self-Assessment - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: PCOR Example General Health Self-Assessment (Experimentell) 

 
Lokales CodeSystem mit der 5-stufigen Selbsteinschätzung der allgemeinen Gesundheit. Dient ausschließlich dem Beispiel-Questionnaire. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [PcorExampleGeneralHealthVS](ValueSet-pcor-example-general-health.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pcor-example-general-health",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-example-general-health",
  "version" : "0.1.0",
  "name" : "PcorExampleGeneralHealthCS",
  "title" : "PCOR Example General Health Self-Assessment",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-18T08:19:43+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Lokales CodeSystem mit der 5-stufigen Selbsteinschätzung der allgemeinen Gesundheit. Dient ausschließlich dem Beispiel-Questionnaire.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "excellent",
    "display" : "Excellent",
    "definition" : "Ausgezeichneter Gesundheitszustand"
  },
  {
    "code" : "very-good",
    "display" : "Very good",
    "definition" : "Sehr guter Gesundheitszustand"
  },
  {
    "code" : "good",
    "display" : "Good",
    "definition" : "Guter Gesundheitszustand"
  },
  {
    "code" : "fair",
    "display" : "Fair",
    "definition" : "Weniger guter Gesundheitszustand"
  },
  {
    "code" : "poor",
    "display" : "Poor",
    "definition" : "Schlechter Gesundheitszustand"
  }]
}

```
