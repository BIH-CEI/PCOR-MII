# DEM Antwortoptionen (Ja/Nein/Nicht zutreffend/Keine Angabe) - PCOR-MII Implementation Guide v0.1.0

## CodeSystem: DEM Antwortoptionen (Ja/Nein/Nicht zutreffend/Keine Angabe) (Experimentell) 

 
Gemeinsames CodeSystem für die Ja/Nein-Items des DEM. Frage-spezifische Subsets über ValueSets (DemJaNeinVS / DemJaNeinNzVS / DemJaNeinKaVS). SNOMED-Mapping: ja=373066001 (Yes), nein=373067005 (No). 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [DemJaNeinVS](ValueSet-dem-ja-nein.md)
* [DemJaNeinKaVS](ValueSet-dem-ja-nein-ka-vs.md)
* [DemJaNeinNzVS](ValueSet-dem-ja-nein-nz-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dem-antwort",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
  "version" : "0.1.0",
  "name" : "DemAntwortCS",
  "title" : "DEM Antwortoptionen (Ja/Nein/Nicht zutreffend/Keine Angabe)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-16T12:08:45+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Gemeinsames CodeSystem für die Ja/Nein-Items des DEM. Frage-spezifische Subsets über ValueSets (DemJaNeinVS / DemJaNeinNzVS / DemJaNeinKaVS). SNOMED-Mapping: ja=373066001 (Yes), nein=373067005 (No).",
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
    "code" : "ja",
    "display" : "Ja"
  },
  {
    "code" : "nein",
    "display" : "Nein"
  },
  {
    "code" : "nicht-zutreffend",
    "display" : "Nicht zutreffend"
  },
  {
    "code" : "keine-angabe",
    "display" : "Möchte ich nicht sagen"
  }]
}

```
