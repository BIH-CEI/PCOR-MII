# MHI Größenangabe (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: MHI Größenangabe (Codes) (Experimental) 

 
Einheit/Angabe-Status für Körpergröße (Q_WB152). 

This Code system is referenced in the definition of the following value sets:

* [MhiGroesseAngabeVS](ValueSet-mhi-groesse-angabe-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mhi-groesse-angabe",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-groesse-angabe",
  "version" : "0.1.0",
  "name" : "MhiGroesseAngabeCS",
  "title" : "MHI Größenangabe (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-22T13:30:33+00:00",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "cm",
    "display" : "cm"
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
