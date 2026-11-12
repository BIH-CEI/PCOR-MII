# MHI-NTx Anzahl Spendernieren - PCOR-MII Implementation Guide v0.9.0

## ValueSet: MHI-NTx Anzahl Spendernieren (Experimental) 

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
  "id" : "mhi-ntx-spendernieren-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-ntx-spendernieren-vs",
  "version" : "0.9.0",
  "name" : "MhiNtxSpendernierenVS",
  "title" : "MHI-NTx Anzahl Spendernieren",
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
  "description" : "Die wievielte Spenderniere aktuell (`MHH_PRIOR_TX`), `itemWeight` 1–4.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendernieren"
    }]
  }
}

```
