# PCOR-MII Use Cases - PCOR-MII Implementation Guide v0.3.0

## CodeSystem: PCOR-MII Use Cases (Experimental) 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pcor-use-case",
  "url" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-use-case",
  "version" : "0.3.0",
  "name" : "PcorUseCaseCS",
  "title" : "PCOR-MII Use Cases",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-13T13:38:01+00:00",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Die vier klinischen Use Cases des PCOR-MII-Erhebungsplans (Blatt Domain Overview des Item Level Dictionary) sowie das Programm Pilot „50 First Patients“. NTx ist dort ausdrücklich in Empfänger (NTXr) und Spender (NTXd) mit eigenen Prioritätsprofilen getrennt. Je aktivem Use Case existiert ein Manifest (`Library`, type `asset-collection`), das die benötigten Questionnaire-Definitionen versioniert pinnt — für NTXr/NTXd bewusst noch nicht (zurückgestellt, Instrumente nicht publizierbar bzw. nicht modelliert). Der Pilot ist kein klinischer Use Case; sein Manifest ist die Schnittmenge der Bögen, die in allen Use Cases erhoben werden.",
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
    "definition" : "Zurückgestellt: kein Manifest; spezifische Instrumente (BAASIS, MTSOSD-R59, ABQ) nicht publizierbar bzw. nicht modelliert."
  },
  {
    "code" : "ntxd",
    "display" : "NTXd — Nierentransplantation, Spender",
    "definition" : "Zurückgestellt: kein Manifest."
  },
  {
    "code" : "pilot-50fp",
    "display" : "Pilot „50 First Patients“ — gemeinsamer Kern aller Use Cases",
    "definition" : "Kein klinischer Use Case, sondern das Pilotprogramm des Datenaustauschs. Das Manifest enthält genau die Bögen, die in PSS, AN und NTx erhoben werden (Schnittmenge des Erhebungsplans)."
  }]
}

```
