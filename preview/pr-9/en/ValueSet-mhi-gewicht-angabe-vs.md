# MHI Gewichtsangabe - PCOR-MII Implementation Guide v0.1.0

## ValueSet: MHI Gewichtsangabe (Experimental) 

 
Einheit/Angabe-Status für Gewicht (Q_WB151). 

 **References** 

* [MHI — Medical History](Questionnaire-MHI.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mhi-gewicht-angabe-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-gewicht-angabe-vs",
  "version" : "0.1.0",
  "name" : "MhiGewichtAngabeVS",
  "title" : "MHI Gewichtsangabe",
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
  "description" : "Einheit/Angabe-Status für Gewicht (Q_WB151).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewicht-angabe"
    }]
  }
}

```
