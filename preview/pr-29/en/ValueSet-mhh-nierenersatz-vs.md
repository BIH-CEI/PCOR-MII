# NTx-Verlaufsbefragung Nierenersatztherapie vor Transplantation - PCOR-MII Implementation Guide v0.9.0

## ValueSet: NTx-Verlaufsbefragung Nierenersatztherapie vor Transplantation (Experimental) 

 **References** 

* [NTx-Verlaufsbefragung — Verlaufsanamnese nach Nierentransplantation (MHH)](Questionnaire-NTXVERLAUF.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mhh-nierenersatz-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhh-nierenersatz-vs",
  "version" : "0.9.0",
  "name" : "MhhNierenersatzVS",
  "title" : "NTx-Verlaufsbefragung Nierenersatztherapie vor Transplantation",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-12T18:22:58+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Zuletzt vor der Transplantation durchgeführte Form der Nierenersatztherapie (`MHH_DIAL2`).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhh-nierenersatz"
    }]
  }
}

```
