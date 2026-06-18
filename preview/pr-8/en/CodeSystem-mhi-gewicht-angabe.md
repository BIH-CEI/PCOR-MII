# MHI Gewichtsangabe (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: MHI Gewichtsangabe (Codes) (Experimental) 

 
Einheit/Angabe-Status für Gewicht (Q_WB151). 

This Code system is referenced in the definition of the following value sets:

* [MhiGewichtAngabeVS](ValueSet-mhi-gewicht-angabe-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mhi-gewicht-angabe",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewicht-angabe",
  "version" : "0.1.0",
  "name" : "MhiGewichtAngabeCS",
  "title" : "MHI Gewichtsangabe (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-18T08:19:43+00:00",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "kg",
    "display" : "kg"
  },
  {
    "code" : "weiss-nicht",
    "display" : "Ich weiß es nicht"
  },
  {
    "code" : "keine-angabe",
    "display" : "Ich möchte es nicht sagen"
  }]
}

```
