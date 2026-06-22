# MHI Anorexia-nervosa-Subtyp (Codes) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: MHI Anorexia-nervosa-Subtyp (Codes) (Experimental) 

 
Subtyp der Anorexia nervosa (AN_subtyp). 

This Code system is referenced in the definition of the following value sets:

* [MhiAnSubtypVS](ValueSet-mhi-an-subtyp-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mhi-an-subtyp",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-an-subtyp",
  "version" : "0.1.0",
  "name" : "MhiAnSubtypCS",
  "title" : "MHI Anorexia-nervosa-Subtyp (Codes)",
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
  "description" : "Subtyp der Anorexia nervosa (AN_subtyp).",
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
  "concept" : [{
    "code" : "1",
    "display" : "restriktiver Typ (Kontrolle des Gewichts vorwiegend über geringe Nahrungsaufnahme und/oder Sport)"
  },
  {
    "code" : "2",
    "display" : "Binge-Eating/Purging-Typ (Kontrolle des Gewichts z.B. durch Erbrechen, Abführmittel, exzessiven Sport mit Essanfällen)"
  },
  {
    "code" : "3",
    "display" : "Kenne beide Subtypen, aktuell eher restriktiver Subtyp"
  },
  {
    "code" : "4",
    "display" : "Kenne beide Subtypen, derzeit eher Binge-Eating/Purging-Typ"
  }]
}

```
