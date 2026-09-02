# WAI Antwortskala 5-stufig - PCOR-MII Implementation Guide v0.2.0

## ValueSet: WAI Antwortskala 5-stufig (Experimentell) 

 
Neutral benannte 5-stufige Antwortskala für WAI02a/WAI02b. Stufe 5 = bester Wert, Stufe 1 = schlechtester Wert. Metadata-only, siehe WaiSkala5CS. 

 **References** 

* [WAI — Work Ability Index / Work Ability Score (3-Item-Kurzfassung, Metadata-only)](Questionnaire-WAI.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "wai-skala-5-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/wai-skala-5-vs",
  "version" : "0.2.0",
  "name" : "WaiSkala5VS",
  "title" : "WAI Antwortskala 5-stufig",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-02T07:19:25+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Neutral benannte 5-stufige Antwortskala für WAI02a/WAI02b. Stufe 5 = bester Wert, Stufe 1 = schlechtester Wert. Metadata-only, siehe WaiSkala5CS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/wai-skala-5"
    }]
  }
}

```
