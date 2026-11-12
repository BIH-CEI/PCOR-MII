# MTSOSD-R59 Belastung 5-stufig - PCOR-MII Implementation Guide v0.9.0

## ValueSet: MTSOSD-R59 Belastung 5-stufig (Experimentell) 

 **References** 

* [MTSOSD-R59 — Symptomlast, 59 Symptome und 3 Freitext (NTx, metadata-only)](Questionnaire-MTSOSDR59.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mtsosd-r59-belastung-5-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mtsosd-r59-belastung-5-vs",
  "version" : "0.9.0",
  "name" : "MtsosdR59Belastung5VS",
  "title" : "MTSOSD-R59 Belastung 5-stufig",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-12T18:28:00+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Neutral benannte 5-stufige Belastungsskala des MTSOSD-R59 (Stufe 0 bis Stufe 4). Metadata-only, siehe MtsosdR59Belastung5CS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mtsosd-r59-belastung-5"
    }]
  }
}

```
