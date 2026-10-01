# PCOR-MII Score-Katalog (Codes) - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: PCOR-MII Score-Katalog (Codes) (Experimentell) 

 
Lokaler Score-Katalog für PCOR-MII. Enthält ausschließlich Scores, für die weder LOINC noch SNOMED CT noch der MII-Score-Katalog (mii-cs-pro-score-catalogue) einen Code führen. Sobald ein Score upstream einen Code erhält, wird dieser in der jeweiligen ObservationDefinition als zusätzliches code.coding ergänzt; der lokale Code bleibt als stabile Referenz bestehen. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pcor-score-catalogue",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-score-catalogue",
  "version" : "0.3.0",
  "name" : "PcorScoreCatalogueCS",
  "title" : "PCOR-MII Score-Katalog (Codes)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T14:41:41+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Lokaler Score-Katalog für PCOR-MII. Enthält ausschließlich Scores, für die weder LOINC noch SNOMED CT noch der MII-Score-Katalog (mii-cs-pro-score-catalogue) einen Code führen. Sobald ein Score upstream einen Code erhält, wird dieser in der jeweiligen ObservationDefinition als zusätzliches code.coding ergänzt; der lokale Code bleibt als stabile Referenz bestehen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "promis-propr-utility",
    "display" : "PROMIS-Preference (PROPr) Utility Score"
  }]
}

```
