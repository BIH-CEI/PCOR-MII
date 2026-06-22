# MHI Größenangabe - PCOR-MII Implementation Guide v0.1.0

## ValueSet: MHI Größenangabe (Experimentell) 

 
Einheit/Angabe-Status für Körpergröße (Q_WB152). 

 **References** 

* [MHI — Medical History](Questionnaire-MHI.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mhi-groesse-angabe-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-groesse-angabe-vs",
  "version" : "0.1.0",
  "name" : "MhiGroesseAngabeVS",
  "title" : "MHI Größenangabe",
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
  "description" : "Einheit/Angabe-Status für Körpergröße (Q_WB152).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-groesse-angabe"
    }]
  }
}

```
