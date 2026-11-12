# MHI-NTx — Transplantationsanamnese (Ergänzung zum MHI, Nierentransplantation) - PCOR-MII Implementation Guide v0.9.0

## Questionnaire: MHI-NTx — Transplantationsanamnese (Ergänzung zum MHI, Nierentransplantation) (Experimentell) 

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
  "id" : "MHINTX",
  "meta" : {
    "profile" : ["https://gematik.de/fhir/isik/StructureDefinition/ISiKFormularDefinition"]
  },
  "language" : "de-DE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
    "valueMarkdown" : "**Designentscheidungen:** (1) **Eigener Ergänzungsbogen statt Szenario-Gruppe im MHI** (Maintainer, 2026-11-05): Der MHI ist allen Use Cases gemeinsam und hat keinen Entitätsschalter; die Zusammenstellung je Use Case leisten die Manifeste, die für Empfänger MHI und MHI-NTx pinnen. Der AN-Gewichtsverlauf im MHI ist eine Altlast, kein Vorbild. (2) **Nicht in der [NTx-Verlaufsbefragung](NTx-Instrumente.html#ntx-verlaufsbefragung-mhh)**, weil Screening und quartalsweises Monitoring verschiedene Erhebungseinheiten sind ([ADR-011](Designentscheidungen.html)). (3) **Kein PRO-Instrument**, daher ISiKFormularDefinition wie der MHI. (4) **Anzahl Spendernieren** mit `itemWeight` 1–4, Stufe 4 offen nach oben. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/MHINTX",
  "version" : "0.9.0",
  "name" : "MHINTX",
  "title" : "MHI-NTx — Transplantationsanamnese (Ergänzung zum MHI, Nierentransplantation)",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-11-05",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Ergänzung zur Medical History für Empfänger einer Nierentransplantation: Spendeart, Datum der letzten Transplantation und wievielte Spenderniere (Dictionary-Gruppen `MHH-DON`, `MHH-Tx-DATE`, `MHH-PRIOR-TX`, Kategorie TCH; Screening, Prio A). Eigener Bogen statt Gruppe im MHI, weil der MHI allen Use Cases gemeinsam ist und die Zusammenstellung je Use Case über die Manifeste läuft. Kein PRO-Instrument, kein Score.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Die Items dieses Bogens sind **vom Standort Hannover (MHH) für die PCOR-MII-Erhebung zusammengestellt** und stammen aus dem PCOR-MII Item Level Dictionary (Entität NTx, Gruppen `MHH-DON`, `MHH-Tx-DATE`, `MHH-PRIOR-TX`). Das `MHH`-Präfix ist ein Zusammenstellungs-Etikett des Dictionary, keine Autorenschaftsangabe; eine Freigabe zur Veröffentlichung ist nicht dokumentiert, die Gruppen kommen in der DIZ-Implementierungsliste nicht vor. Es sind triviale Faktenfragen ohne schutzfähige Schöpfungshöhe, wie die Standortitems im MHI. Der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "mhi-ntx",
    "display" : "MHI-NTx — Transplantationsanamnese"
  }],
  "item" : [{
    "linkId" : "transplantation",
    "text" : "Spende und Transplantation",
    "type" : "group",
    "item" : [{
      "linkId" : "MHH_DON",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_DON"
      }],
      "text" : "Welche Art der Spende haben Sie erhalten?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-ntx-spendeart-vs"
    },
    {
      "linkId" : "MHH_TX_DATE",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_TX_DATE"
      }],
      "text" : "Bitte geben Sie das Datum ihrer letzten Nierentransplantation an.",
      "type" : "date"
    },
    {
      "linkId" : "MHH_PRIOR_TX",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "MHH_PRIOR_TX"
      }],
      "text" : "Die wievielte Spenderniere haben Sie aktuell?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/mhi-ntx-spendernieren-vs"
    }]
  }]
}

```
