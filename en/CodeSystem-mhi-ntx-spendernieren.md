# MHI-NTx Anzahl Spendernieren (Codes) - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: MHI-NTx Anzahl Spendernieren (Codes) (Experimental) 

This Code system is referenced in the definition of the following value sets:

* [MHI-NTx Anzahl Spendernieren](ValueSet-mhi-ntx-spendernieren-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mhi-ntx-spendernieren",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-ntx-spendernieren",
  "version" : "0.9.0",
  "name" : "MhiNtxSpendernierenCS",
  "title" : "MHI-NTx Anzahl Spendernieren (Codes)",
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
  "description" : "Die wievielte Spenderniere aktuell (`MHH_PRIOR_TX`): eine, zwei, drei, mehr als drei. Ordinal; `itemWeight` = Dictionary-Code = Anzahl bis drei, Stufe 4 offen nach oben.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "property" : [{
    "code" : "itemWeight",
    "uri" : "http://hl7.org/fhir/concept-properties#itemWeight",
    "description" : "Numerischer Ordinalwert (1-4); 1-3 = Anzahl, 4 = mehr als drei.",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "1",
    "display" : "eine",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "2",
    "display" : "zwei",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "3",
    "display" : "drei",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "4",
    "display" : "mehr als 3",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 4
    }]
  }]
}

```
