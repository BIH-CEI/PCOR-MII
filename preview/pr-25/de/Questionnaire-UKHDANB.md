# UKHD-ANB — Essstörungsanamnese (UKHD-Zusatzitems AN) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: UKHD-ANB — Essstörungsanamnese (UKHD-Zusatzitems AN) (Experimentell) 

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
  "id" : "UKHDANB",
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
    "valueMarkdown" : "Dictionary-Gruppe `UKHD-ANB`, DOMAIN *AN Biography*, Kategorie DCH. Beide Items sind im Dictionary **zusammengesetzt** (Auswahl + Zahlenwert in einem Feld) und hier nach dem MHI-Muster `Q_WB151`/`Q_WB151a` in je zwei Items aufgelöst. Die Auswahl trägt die Dictionary-Variable, das Wert-Item ist PCOR-MII-eigen und trägt **keinen** `item.code`. **Rechtelage und Herkunft:** siehe `copyright` — das `UKHD`-Präfix ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe; die Frage an den Standort ist eine Herkunftsfrage. Gemeinsame Entscheidungen aller sechs UKHD-Zusatzbögen (Sprache `de` ohne Übersetzungsebene, `TIMING` nicht als FHIR-Struktur, Wortlauttreue nach ADR-010, `linkId` = Dictionary-Variablen-ID nach ADR-008, kein Score, Ja/Nein über `DemJaNeinVS`) stehen auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html)."
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDANB",
  "version" : "0.3.0",
  "name" : "UKHDANB",
  "title" : "UKHD-ANB — Essstörungsanamnese (UKHD-Zusatzitems AN)",
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
  "description" : "Zwei zusammengesetzte Items zur Essstörungsanamnese aus der Dictionary-Gruppe `UKHD-ANB`: Erkrankungsdauer (`AN_biography`) und niedrigster BMI (`lowBMI`), je als Auswahl plus PCOR-MII-eigenem Wert-Item aufgelöst (MHI-Muster `Q_WB151`/`Q_WB151a`). Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.**",
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
    "code" : "ukhd-anb",
    "display" : "UKHD-ANB"
  }],
  "item" : [{
    "linkId" : "AN_biography",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "AN_biography"
    }],
    "text" : "Wie lange sind Sie bereits von Ihrer Essstörung betroffen?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-dauer-angabe-vs"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "**PCOR-MII-eigenes Hilfsitem**, keine Dictionary-Variable — daher kein `item.code` und kein übernommener Wortlaut. Trägt den Zahlenwert zu `AN_biography`; die Einheit steht in der Auswahl. `type = integer`, weil das Dictionary mit Monaten eine feinere Einheit anbietet und gebrochene Jahre damit nicht gebraucht werden. **Ein** Wert-Item für beide Einheiten, nicht zwei — zwei Felder könnten sich widersprechen."
    }],
    "linkId" : "AN_biography-wert",
    "text" : "Dauer — Anzahl (Einheit nach der Auswahl oben: Monate oder Jahre)",
    "type" : "integer",
    "enableWhen" : [{
      "question" : "AN_biography",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe",
        "code" : "1",
        "display" : "seit … Monaten"
      }
    },
    {
      "question" : "AN_biography",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe",
        "code" : "2",
        "display" : "seit … Jahren"
      }
    }],
    "enableBehavior" : "any"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "**Wortlaut unverändert übernommen, einschließlich des Fehlers:** Das Dictionary schreibt „Ihr niedrigter BMI“ statt „niedrigster“. Nach [ADR-010](Designentscheidungen.html) bleibt übernommener Wortlaut unverändert; eine Bereinigung wäre nur als zusätzliche Ebene zulässig und ist hier nicht angelegt, weil keine Vorlage existiert, gegen die sich Druckfehler und Abschreibfehler unterscheiden ließen. **Im Dictionary zu korrigieren.**"
    }],
    "linkId" : "lowBMI",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "lowBMI"
    }],
    "text" : "Welches war Ihr niedrigter BMI?",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-bmi-angabe-vs"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "**PCOR-MII-eigenes Hilfsitem**, keine Dictionary-Variable — daher kein `item.code` und kein übernommener Wortlaut (die Feldbezeichnung wiederholt den Schreibfehler von `lowBMI` deshalb auch nicht). `type = decimal`, weil ein BMI üblicherweise mit einer Dezimalstelle berichtet wird. Die Einheit kg/m² steht im Text; eine `quantity`-Modellierung wäre hier Aufwand ohne Gewinn, weil das Dictionary keine Einheitenwahl vorsieht."
    }],
    "linkId" : "lowBMI-wert",
    "text" : "Niedrigster BMI — Wert in kg/m²",
    "type" : "decimal",
    "enableWhen" : [{
      "question" : "lowBMI",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-bmi-angabe",
        "code" : "1",
        "display" : "BMI-Wert"
      }
    }]
  }]
}

```
