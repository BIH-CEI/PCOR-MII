# BAASIS Häufigkeit Zeitabweichung 5-stufig (Codes) - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: BAASIS Häufigkeit Zeitabweichung 5-stufig (Codes) (Experimentell) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [BAASIS Häufigkeit Zeitabweichung 5-stufig](ValueSet-baasis-haeufigkeit-zeit-5-vs.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "baasis-haeufigkeit-zeit-5",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/baasis-haeufigkeit-zeit-5",
  "version" : "0.9.0",
  "name" : "BaasisHaeufigkeitZeit5CS",
  "title" : "BAASIS Häufigkeit Zeitabweichung 5-stufig (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-12T18:10:53+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Neutral benannte 5-stufige Häufigkeitsskala der BAASIS-Teilfrage 2_a (Stufe 1 bis Stufe 5). Laut Item Level Dictionary ist diese Skala nicht die Anzahl-Skala der Teilfragen 1A_a/1B_a, sondern eine Raten-Skala (von einmalig bis fast täglich); deshalb ein eigenes CodeSystem, damit die Stufen nicht als dieselbe Skala ausgewertet werden. Die offizielle BAASIS-Erläuterung nennt für alle drei Teilfragen dieselben fünf Anzahl-Kategorien — die Abweichung ist gegen den lizenzierten deutschen Bogen (Version 2021) zu prüfen. METADATA-ONLY: Die Originalbezeichnungen der Antwortstufen dürfen nicht veröffentlicht werden. itemWeight-Property je Konzept (1-5).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "property" : [{
    "code" : "itemWeight",
    "uri" : "http://hl7.org/fhir/concept-properties#itemWeight",
    "description" : "Numerischer Ordinalwert (1-5); Stufe n = n-te Antwortoption in aufsteigender Häufigkeit.",
    "type" : "decimal"
  }],
  "concept" : [{
    "code" : "stufe-1",
    "display" : "Stufe 1",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 1
    }]
  },
  {
    "code" : "stufe-2",
    "display" : "Stufe 2",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 2
    }]
  },
  {
    "code" : "stufe-3",
    "display" : "Stufe 3",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 3
    }]
  },
  {
    "code" : "stufe-4",
    "display" : "Stufe 4",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 4
    }]
  },
  {
    "code" : "stufe-5",
    "display" : "Stufe 5",
    "property" : [{
      "code" : "itemWeight",
      "valueDecimal" : 5
    }]
  }]
}

```
