# ABQ Antwortskala 4-stufig - PCOR-MII Implementation Guide v0.9.0

## ValueSet: ABQ Antwortskala 4-stufig (Experimentell) 

 **References** 

* [ABQ — Adherence Barriers Questionnaire (NTx, metadata-only)](Questionnaire-ABQ.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "abq-skala-4-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/abq-skala-4-vs",
  "version" : "0.9.0",
  "name" : "AbqSkala4VS",
  "title" : "ABQ Antwortskala 4-stufig",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-12T18:10:53+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Neutral benannte 4-stufige Antwortskala des ABQ (Stufe 1 bis Stufe 4). METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. Polung (welche Stufe die höchste Barriere abbildet) nicht gegen das Original verifiziert. Metadata-only, siehe AbqSkala4CS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/abq-skala-4"
    }]
  }
}

```
