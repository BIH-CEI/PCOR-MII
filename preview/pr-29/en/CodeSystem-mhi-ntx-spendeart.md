# MHI-NTx Spendeart (Codes) - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: MHI-NTx Spendeart (Codes) (Experimental) 

This Code system is referenced in the definition of the following value sets:

* [MHI-NTx Spendeart](ValueSet-mhi-ntx-spendeart-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mhi-ntx-spendeart",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendeart",
  "version" : "0.9.0",
  "name" : "MhiNtxSpendeartCS",
  "title" : "MHI-NTx Spendeart (Codes)",
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
  "description" : "Art der erhaltenen Nierenspende (`MHH_DON`): Lebendspende oder Verstorbenenspende. Nominal, Dictionary-Codes 1–2.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "1",
    "display" : "Lebendspende"
  },
  {
    "code" : "2",
    "display" : "Verstorbenenspende"
  }]
}

```
