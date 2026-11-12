# PCOR-MII Use Cases - PCOR-MII Implementation Guide v0.9.0

## CodeSystem: PCOR-MII Use Cases (Experimentell) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pcor-use-case",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-use-case",
  "version" : "0.9.0",
  "name" : "PcorUseCaseCS",
  "title" : "PCOR-MII Use Cases",
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
  "description" : "Die vier klinischen Use Cases des PCOR-MII-Erhebungsplans (Blatt Domain Overview des Item Level Dictionary) sowie das Programm Pilot „50 First Patients“. NTx ist dort ausdrücklich in Empfänger (NTXr) und Spender (NTXd) mit eigenen Prioritätsprofilen getrennt. Je Use Case existiert ein Manifest (`Library`, type `asset-collection`), das die benötigten Questionnaire-Definitionen versioniert pinnt; NTXr und NTXd seit 2026-11-05. Der Pilot ist kein klinischer Use Case; sein Manifest ist die Schnittmenge der Bögen, die in allen Use Cases erhoben werden.",
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
  "concept" : [{
    "code" : "pss",
    "display" : "PSS — Persistierende somatische Symptome"
  },
  {
    "code" : "an",
    "display" : "AN — Anorexia nervosa"
  },
  {
    "code" : "ntxr",
    "display" : "NTXr — Nierentransplantation, Empfänger",
    "definition" : "Generische Batterie plus BAASIS, ABQ, MTSOSD-R59 (metadata-only), MHI-NTx und NTx-Verlaufsbefragung; WAI hier Prio A."
  },
  {
    "code" : "ntxd",
    "display" : "NTXd — Nierentransplantation, Spender",
    "definition" : "Nur die generische Batterie: laut Domain Overview keine spezifischen Instrumente und kein Monitoring."
  },
  {
    "code" : "pilot-50fp",
    "display" : "Pilot „50 First Patients“ — gemeinsamer Kern aller Use Cases",
    "definition" : "Kein klinischer Use Case, sondern das Pilotprogramm des Datenaustauschs. Das Manifest enthält genau die Bögen, die in PSS, AN und NTx erhoben werden (Schnittmenge des Erhebungsplans)."
  }]
}

```
