# MHI Gewichtsmessung Methode (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: MHI Gewichtsmessung Methode (Codes) (Experimentell) 

 
Wie wurde das Gewicht ermittelt? (weight_outpatient_2). 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MhiGewichtsmethodeVS](ValueSet-mhi-gewichtsmethode-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mhi-gewichtsmethode",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewichtsmethode",
  "version" : "0.1.0",
  "name" : "MhiGewichtsmethodeCS",
  "title" : "MHI Gewichtsmessung Methode (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-22T13:30:31+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Wie wurde das Gewicht ermittelt? (weight_outpatient_2).",
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
  "concept" : [{
    "code" : "1",
    "display" : "Hausarzt"
  },
  {
    "code" : "2",
    "display" : "Apotheke"
  },
  {
    "code" : "3",
    "display" : "zuhause mit einer anderen Person"
  },
  {
    "code" : "4",
    "display" : "zuhause alleine"
  },
  {
    "code" : "5",
    "display" : "anders"
  },
  {
    "code" : "6",
    "display" : "ich möchte keine Angabe dazu machen"
  }]
}

```
