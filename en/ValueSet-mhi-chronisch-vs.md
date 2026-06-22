# MHI Chronische Erkrankungen (GIPS13) - PCOR-MII Implementation Guide v0.1.0

## ValueSet: MHI Chronische Erkrankungen (GIPS13) (Experimental) 

 
Liste chronischer Erkrankungen (GIPS13, Mehrfachauswahl). 

 **References** 

* [MHI — Medical History](Questionnaire-MHI.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mhi-chronisch-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-chronisch-vs",
  "version" : "0.1.0",
  "name" : "MhiChronischVS",
  "title" : "MHI Chronische Erkrankungen (GIPS13)",
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
  "description" : "Liste chronischer Erkrankungen (GIPS13, Mehrfachauswahl).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
    }]
  }
}

```
