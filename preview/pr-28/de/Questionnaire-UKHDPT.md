# UKHD-PT — Vorbehandlung (UKHD-Zusatzitems AN) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: UKHD-PT — Vorbehandlung (UKHD-Zusatzitems AN) (Experimentell) 

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
  "id" : "UKHDPT",
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
    "valueMarkdown" : "Dictionary-Gruppe `UKHD-PT`, DOMAIN *Past Treatment*, Kategorie TCH. **Zwei Auffälligkeiten, die eine fachliche Prüfung brauchen:** (a) Die Variablen-IDs `bdkm15`/`bdkm16` passen zu keiner anderen Variable dieser Gruppen und deuten auf ein anderes Erhebungsinstrument als Ursprung — das Präfix ist im Dictionary nicht erläutert. (b) `bdkm16` fragt nach **Arztbesuchen**, nicht nach Psychotherapie, steht aber in der Gruppe *Past Treatment* mit 4-Wochen-Recall; inhaltlich gehört es eher zur Versorgungsinanspruchnahme. **Rechtelage und Herkunft:** siehe `copyright` — das `UKHD`-Präfix ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe; die Frage an den Standort ist eine Herkunftsfrage. Gemeinsame Entscheidungen aller sechs UKHD-Zusatzbögen (Sprache `de` ohne Übersetzungsebene, `TIMING` nicht als FHIR-Struktur, Wortlauttreue nach ADR-010, `linkId` = Dictionary-Variablen-ID nach ADR-008, kein Score, Ja/Nein über `DemJaNeinVS`) stehen auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html)."
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDPT",
  "version" : "0.3.0",
  "name" : "UKHDPT",
  "title" : "UKHD-PT — Vorbehandlung (UKHD-Zusatzitems AN)",
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
  "description" : "Zwei Items zur Vorbehandlung aus der Dictionary-Gruppe `UKHD-PT`: frühere oder aktuelle psychotherapeutische Behandlung (`bdkm15`) und Arztbesuche in den letzten 4 Wochen (`bdkm16`). Eigenes Questionnaire je Dictionary-Gruppe — die UKHD-Zusatzitems sind kein gemeinsames Instrument; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt** — gerade hier: Die `bdkm`-Variablen-IDs tragen ein fremdes, im Dictionary nicht erläutertes Kürzelschema.",
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
    "code" : "ukhd-pt",
    "display" : "UKHD-PT"
  }],
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "Überschneidet sich inhaltlich mit `treatment_outpatient` in `UKHD-CT` („Sind Sie zurzeit in psychotherapeutischer Behandlung?“). Beide Items bleiben erhalten, weil beide erhoben werden und sich im Zeitbezug unterscheiden: `bdkm15` nur zur Aufnahme (`TIMING` i) und mit Vorgeschichte, `treatment_outpatient` zu jedem Termin (`TIMING` a) und mit Setting. Für die Aufnahme liefern sie teilweise dieselbe Information in zwei Skalen — **im Dictionary zu prüfen**, ob das beabsichtigt ist."
    }],
    "linkId" : "bdkm15",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "bdkm15"
    }],
    "text" : "Waren Sie früher oder sind Sie zurzeit in psychotherapeutischer Behandlung?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-psychotherapie-vs"
  },
  {
    "linkId" : "bdkm16",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "bdkm16"
    }],
    "text" : "Wie oft haben Sie in den letzten 4 Wochen einen Arzt aufgesucht?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-arztbesuche-vs"
  }]
}

```
