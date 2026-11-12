# BAASIS Häufigkeit Zeitabweichung 5-stufig - PCOR-MII Implementation Guide v0.9.0

## ValueSet: BAASIS Häufigkeit Zeitabweichung 5-stufig (Experimentell) 

 **References** 

* [BAASIS — Adhärenz gegenüber immunsuppressiver Medikation (NTx, metadata-only)](Questionnaire-BAASIS.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "baasis-haeufigkeit-zeit-5-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/baasis-haeufigkeit-zeit-5-vs",
  "version" : "0.9.0",
  "name" : "BaasisHaeufigkeitZeit5VS",
  "title" : "BAASIS Häufigkeit Zeitabweichung 5-stufig",
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
  "description" : "Neutral benannte 5-stufige Häufigkeitsskala der BAASIS-Teilfrage 2_a (Stufe 1 bis Stufe 5). Metadata-only, siehe BaasisHaeufigkeitZeit5CS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-zeit-5"
    }]
  }
}

```
