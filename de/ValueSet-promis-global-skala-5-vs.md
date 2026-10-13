# PROMIS Global Health Antwortskala 5-stufig (Ausgezeichnet–Schlecht) - PCOR-MII Implementation Guide v0.3.0

## ValueSet: PROMIS Global Health Antwortskala 5-stufig (Ausgezeichnet–Schlecht) (Experimentell) 

 **References** 

* [PROMIS-GH — PROMIS Global Health (2-Item-ShortForm)](Questionnaire-PROMISGH.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "promis-global-skala-5-vs",
  "url" : "https://bih-cei.github.io/PCOR-MII/ValueSet/promis-global-skala-5-vs",
  "version" : "0.3.0",
  "name" : "PromisGlobalSkala5VS",
  "title" : "PROMIS Global Health Antwortskala 5-stufig (Ausgezeichnet–Schlecht)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-13T14:06:39+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "5-stufige Antwortskala der PROMIS-Global-Health-Items Global01 und Global02 (LOINC-Answerlist LL4280-5): 5 = Ausgezeichnet … 1 = Schlecht. Displays in der expansion sind die deutschen Formulierungen der validierten PROMIS-Übersetzung, die englischen LOINC-Displays als designation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "LOINC® ist eingetragene Marke des Regenstrief Institute, Inc. LOINC-Codes und -Answerlists © Regenstrief Institute, Inc., Nutzung unter http://loinc.org/terms-of-use.",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA9206-9"
      },
      {
        "code" : "LA13913-1"
      },
      {
        "code" : "LA8967-7"
      },
      {
        "code" : "LA8968-5"
      },
      {
        "code" : "LA8969-3"
      }]
    }]
  }
}

```
