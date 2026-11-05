# UKHD-ND — Neue Diagnosen (UKHD-Zusatzitems AN) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: UKHD-ND — Neue Diagnosen (UKHD-Zusatzitems AN) (Experimentell) 

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
  "id" : "UKHDND",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "language" : "de",
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
    "valueMarkdown" : "Dictionary-Gruppe `UKHD-ND`, DOMAIN *New Diagnosis*, Kategorie DCH. Dieselbe Zeitfenster-Konstruktion wie `UKHD-LE`, aber mit **zwei** statt drei Ja/Nein-Items: Ein Aufnahme-Item fehlt, und das ist konsistent — bei Aufnahme gibt es definitionsgemäß keine „weiteren“ Diagnosen seit der letzten Befragung, und die Aufnahmediagnosen erhebt stattdessen `UKHD_D`. **Rechtelage und Herkunft:** siehe `copyright` — das `UKHD`-Präfix ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe; die Frage an den Standort ist eine Herkunftsfrage. Gemeinsame Entscheidungen aller sechs UKHD-Zusatzbögen (Sprache `de` ohne Übersetzungsebene, `TIMING` nicht als FHIR-Struktur, Wortlauttreue nach ADR-010, `linkId` = Dictionary-Variablen-ID nach ADR-008, kein Score, Ja/Nein über `DemJaNeinVS`) stehen auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html)."
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDND",
  "version" : "0.3.0",
  "name" : "UKHDND",
  "title" : "UKHD-ND — Neue Diagnosen (UKHD-Zusatzitems AN)",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-10-01",
  "publisher" : "BIH-CEI",
  "contact" : [{
    "name" : "BIH-CEI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.bihealth.org/"
    }]
  }],
  "description" : "Drei Items zu neuen Diagnosen seit der letzten Befragung aus der Dictionary-Gruppe `UKHD-ND`: zwei Ja/Nein-Items für zwei Erhebungszeitpunkte plus ein Freitextitem per `enableWhen` (`any`). Kein Aufnahme-Item — bei Aufnahme erhebt stattdessen [UKHD-D](Questionnaire-UKHDD.html). Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.**",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Die Items dieses Bogens sind **vom Standort Heidelberg für die PCOR-MII-Erhebung zusammengestellt** und stammen aus dem PCOR-MII Item Level Dictionary (Entität AN). **Das `UKHD`-Präfix der Dictionary-Gruppe ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe: Woher der Wortlaut stammt — eigene Formulierung des Standorts, klinikinterne Dokumentationsbögen oder ein publiziertes Instrument —, ist nicht dokumentiert. Eine Freigabe für die Veröffentlichung liegt ebenfalls nicht dokumentiert vor; beides ist mit dem Standort zu klären.** Die DIZ-Implementierungsliste PCOR-MII führt ausschließlich publizierte Instrumente; die standortspezifischen Itemgruppen von UKHD, UKE und MHH kommen dort nicht vor — es gibt für sie damit weder eine dokumentierte Erlaubnis noch eine dokumentierte Einschränkung. Dass der Wortlaut hier aufgenommen ist, ist eine bewusste Projektentscheidung zur Erprobung und keine geklärte Rechtslage; die Ressource trägt deshalb `status = draft` und `experimental = true`. Ergibt die Rückmeldung des Standorts eine Einschränkung, ist eine Umstellung auf metadata-only vorgesehen (Muster WAI). Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "ukhd-nd",
    "display" : "UKHD-ND"
  }],
  "item" : [{
    "linkId" : "new_diagnosis_monitoring",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "new_diagnosis_monitoring"
    }],
    "text" : "Gab es seit der letzten Befragung weitere medizinische / psychische Diagnosen?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
  },
  {
    "linkId" : "new_diagnosis_discharge",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "new_diagnosis_discharge"
    }],
    "text" : "Gab es seit Ihrer Aufnahme weitere medizinische / psychische Diagnosen?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "`enableWhen` auf **beide** Ja/Nein-Items der Gruppe mit `enableBehavior = any` — gleiche Begründung wie bei `lifev_text`, nur mit zwei statt drei Vorbedingungen, weil `UKHD-ND` kein Aufnahme-Item hat."
    }],
    "linkId" : "new_diagnosis_text",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "new_diagnosis_text"
    }],
    "text" : "Bitte tragen Sie diese Diagnosen in das folgende Textfeld ein.",
    "type" : "text",
    "enableWhen" : [{
      "question" : "new_diagnosis_monitoring",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
        "code" : "ja",
        "display" : "Ja"
      }
    },
    {
      "question" : "new_diagnosis_discharge",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
        "code" : "ja",
        "display" : "Ja"
      }
    }],
    "enableBehavior" : "any"
  }]
}

```
