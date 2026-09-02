# OPD-SFK Antwortskala - PCOR-MII Implementation Guide v0.2.0

## ValueSet: OPD-SFK Antwortskala (Experimental) 

 
5-stufige Antwortskala des OPD-SFK (0 = trifft gar nicht zu … 4 = trifft völlig zu). 

 **References** 

* [OPD-SFK — OPD-Strukturfragebogen, 12-Item-Kurzversion](Questionnaire-OPDSFK.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "opd-sfk-antwort-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/opd-sfk-antwort-vs",
  "version" : "0.2.0",
  "name" : "OpdSfkAntwortVS",
  "title" : "OPD-SFK Antwortskala",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-02T07:34:58+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "5-stufige Antwortskala des OPD-SFK (0 = trifft gar nicht zu ... 4 = trifft völlig zu).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/opd-sfk-antwort"
    }]
  }
}

```
