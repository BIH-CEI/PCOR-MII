# DEM Bildungsabschluss (ISCED-2011/KMK) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: DEM Bildungsabschluss (ISCED-2011/KMK) (Experimentell) 

 
Höchster Bildungsabschluss nach ISCED-2011 / KMK-Systematik (Q_ISCED). 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DemIscedVS](ValueSet-dem-isced-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-isced-de",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-isced-de",
  "version" : "0.1.0",
  "name" : "DemIscedCS",
  "title" : "DEM Bildungsabschluss (ISCED-2011/KMK)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T08:08:12+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Höchster Bildungsabschluss nach ISCED-2011 / KMK-Systematik (Q_ISCED).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "primar",
    "display" : "Primarstufe (inkl. 4-6 Jahre Grund- o. Förderschule)"
  },
  {
    "code" : "sek1",
    "display" : "Sekundarstufe I (inkl. Hauptschule, Realschule, Gymnasium, Gesamtschule)"
  },
  {
    "code" : "sek2",
    "display" : "Sekundarstufe II (inkl. gymnasiale Oberstufe, (Berufliches) Gymnasium, Berufsschule und Betrieb, Berufsfachschule, Fachoberschule)"
  },
  {
    "code" : "post-sek",
    "display" : "Post-sekundäre, nicht-tertiäre Ausbildungen (inkl. einjährige Fachoberschule, zweijährige Berufsoberschule/Technische Oberschule, Kolleg, Abendgymnasium)"
  },
  {
    "code" : "bachelor",
    "display" : "Bachelor oder berufsqualifizierender Studienabschluss (inkl. Berufsakademie, Abschluss einer beruflichen Aufstiegsfortbildung, Geprüfte:r Berufsspezialist:in)"
  },
  {
    "code" : "master",
    "display" : "Master oder äquivalent (inkl. Diplom, staatl./kirchl. Prüfung)"
  },
  {
    "code" : "promotion",
    "display" : "Promotion oder äquivalent"
  }]
}

```
