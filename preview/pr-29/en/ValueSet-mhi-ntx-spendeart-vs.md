# MHI-NTx Spendeart - PCOR-MII Implementation Guide v0.9.0

## ValueSet: MHI-NTx Spendeart (Experimental) 

 **References** 

* [MHI-NTx — Transplantationsanamnese (Ergänzung zum MHI, Nierentransplantation)](Questionnaire-MHINTX.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mhi-ntx-spendeart-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-ntx-spendeart-vs",
  "version" : "0.9.0",
  "name" : "MhiNtxSpendeartVS",
  "title" : "MHI-NTx Spendeart",
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
  "description" : "Art der erhaltenen Nierenspende (`MHH_DON`).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendeart"
    }]
  }
}

```
