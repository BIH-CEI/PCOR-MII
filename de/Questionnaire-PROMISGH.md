# PROMIS-GH — PROMIS Global Health (2-Item-ShortForm) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: PROMIS-GH — PROMIS Global Health (2-Item-ShortForm) (Experimentell) 

*  [Baumansicht](#tabs-tree) 
*  [Beispielanzeige](#tabs-sample) 
*  [Formularlogik](#tabs-logic) 

### Diesen Fragebogen testen

### Antworten zu diesem Fragebogen

Es sind derzeit keine QuestionnaireResponse-Instanzen für diesen Fragebogen in diesem IG definiert.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "PROMISGH",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "extension" : [{
      "url" : "displayable",
      "valueBoolean" : true
    },
    {
      "url" : "collectable",
      "valueBoolean" : true
    },
    {
      "url" : "calculatable",
      "valueBoolean" : false
    },
    {
      "url" : "extractable",
      "valueBoolean" : false
    },
    {
      "url" : "domainAligned",
      "valueBoolean" : false
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-ex-pro-questionnaire-capabilities"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/PROMISGH",
  "version" : "0.3.0",
  "name" : "PROMISGH",
  "title" : "PROMIS-GH — PROMIS Global Health (2-Item-ShortForm)",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-09-14",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Die beiden in PCOR-MII erhobenen Einzelitems der PROMIS® Scale v1.2 – Global Health: Global01 (Gesundheitszustand insgesamt, LOINC 61577-3) und Global02 (Lebensqualität insgesamt, LOINC 61578-1), je 5-stufig (5 = Ausgezeichnet … 1 = Schlecht, LOINC-Answerlist LL4280-5). 2-ITEM-SHORTFORM: 2 von 10 Items der Originalskala — der vollständige Fragebogen (LOINC-Panel 85524-7) ist im MII-PRO-Modul noch nicht abgebildet und soll dort ergänzt werden; anschließend wird dieser lokale Questionnaire durch die Upstream-Referenz ersetzt. Global07 (Schmerzintensität) ist bewusst nicht enthalten — es wird über den referenzierten PROMIS-29 abgedeckt. Profil: MII PR PRO Questionnaire (SDC-Basis).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "PROMIS® ist eingetragene Marke der PROMIS Health Organization (PHO). Die Item-Inhalte der PROMIS Scale v1.2 – Global Health sind © PROMIS Health Organization / Northwestern University; die hier verwendeten deutschen Formulierungen entstammen der offiziellen deutschen PROMIS-Übersetzung, kuratiert durch das PROMIS National Center Deutschland (CPCOR, Charité). LOINC-Codes und -Answerlists © Regenstrief Institute, Inc. (http://loinc.org/terms-of-use). Nur der PCOR-MII-eigene FHIR-Inhalt (Struktur, linkIds, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0). Nutzungsbedingungen für das Instrument selbst siehe https://www.healthmeasures.net/explore-measurement-systems/promis.",
  "code" : [{
    "system" : "http://loinc.org",
    "code" : "85524-7",
    "display" : "PROMIS short form - global - version 1.2"
  },
  {
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "promis-gh",
    "display" : "PROMIS-GH"
  }],
  "item" : [{
    "linkId" : "Global01",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "61577-3",
      "display" : "In general, would you say your health is [PROMIS]"
    }],
    "text" : "Wie würden Sie Ihren Gesundheitszustand insgesamt beschreiben?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/promis-global-skala-5-vs"
  },
  {
    "linkId" : "Global02",
    "code" : [{
      "system" : "http://loinc.org",
      "code" : "61578-1",
      "display" : "In general, would you say your quality of life is [PROMIS]"
    }],
    "text" : "Wie würden Sie Ihre Lebensqualität insgesamt beschreiben?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/promis-global-skala-5-vs"
  }]
}

```
