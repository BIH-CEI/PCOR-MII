# NTx-Verlaufsbefragung Nierenersatztherapie vor Transplantation (Codes) - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: NTx-Verlaufsbefragung Nierenersatztherapie vor Transplantation (Codes) (Experimentell) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [NTx-Verlaufsbefragung Nierenersatztherapie vor Transplantation](ValueSet-mhh-nierenersatz-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mhh-nierenersatz",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhh-nierenersatz",
  "version" : "0.9.0",
  "name" : "MhhNierenersatzCS",
  "title" : "NTx-Verlaufsbefragung Nierenersatztherapie vor Transplantation (Codes)",
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
  "description" : "Zuletzt vor der Transplantation durchgeführte Form der Nierenersatztherapie (`MHH_DIAL2`). Nominal, Dictionary-Codes 1–4; Option 4 = präemptive Transplantation ohne vorherige Dialyse.",
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
    "display" : "Heim-Hämodialyse (Dialyse zu Hause)"
  },
  {
    "code" : "2",
    "display" : "Bauchfelldialyse"
  },
  {
    "code" : "3",
    "display" : "Hämodialyse in der Dialysepraxis"
  },
  {
    "code" : "4",
    "display" : "Ich war vor Transplantation nicht dialysepflichtig (nur bei präemptiver Lebendspende)"
  }]
}

```
