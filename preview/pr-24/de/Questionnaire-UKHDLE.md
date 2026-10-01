# UKHD-LE — Belastende Lebensereignisse (UKHD-Zusatzitems AN) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: UKHD-LE — Belastende Lebensereignisse (UKHD-Zusatzitems AN) (Experimentell) 

 
Vier Items zu belastenden Lebensereignissen aus der Dictionary-Gruppe `UKHD-LE`: dieselbe Ja/Nein-Frage für drei Erhebungszeitpunkte plus ein Freitextitem, das per `enableWhen` (`any`) an allen drei hängt. Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.md). Kein Score. **Hochsensible Inhalte** — Governance der Auswertung fachlich zu klären (analog PHQ-SI und [ACE](ACE.md)). **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.** 

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
  "id" : "UKHDLE",
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
    "valueMarkdown" : "Dictionary-Gruppe `UKHD-LE`, DOMAIN *Life Events*, Kategorie EFA. Die drei Ja/Nein-Items sind **dieselbe Frage für drei Erhebungszeitpunkte** (`TIMING` i / alle außer Aufnahme und Entlassung / Entlassung) und unterscheiden sich nur im Zeitfenster — „in Ihrem Leben“, „seit der letzten Befragung“, „seit Ihrer Aufnahme“. Pro Termin wird genau eine gestellt; `lifev_text` hängt deshalb mit `enableBehavior = any` an allen drei. **Zwei Dictionary-Befunde:** (a) Die Variablennamen sind uneinheitlich — `life_event1_screening`/`life_event1_monitoring` gegen `lifev_discharge`/`lifev_text`, und ein `life_event2` existiert nicht. (b) Die Beispielliste von `life_event1_screening` nennt bloß „Partnerschaften“, wo die beiden anderen „Auflösung einer Partnerschaften“ sagen — dort fehlt offenbar der Kopf der Wendung. **Rechtelage und Herkunft:** siehe `copyright` — das `UKHD`-Präfix ist ein Zusammenstellungs-Etikett, keine Autorenschaftsangabe; die Frage an den Standort ist eine Herkunftsfrage. Gemeinsame Entscheidungen aller sechs UKHD-Zusatzbögen (Sprache `de` ohne Übersetzungsebene, `TIMING` nicht als FHIR-Struktur, Wortlauttreue nach ADR-010, `linkId` = Dictionary-Variablen-ID nach ADR-008, kein Score, Ja/Nein über `DemJaNeinVS`) stehen auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html)."
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDLE",
  "version" : "0.3.0",
  "name" : "UKHDLE",
  "title" : "UKHD-LE — Belastende Lebensereignisse (UKHD-Zusatzitems AN)",
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
  "description" : "Vier Items zu belastenden Lebensereignissen aus der Dictionary-Gruppe `UKHD-LE`: dieselbe Ja/Nein-Frage für drei Erhebungszeitpunkte plus ein Freitextitem, das per `enableWhen` (`any`) an allen drei hängt. Eigenes Questionnaire je Dictionary-Gruppe; Übersicht auf der Seite [UKHD-Zusatzitems](UKHD-Zusatzitems.html). Kein Score. **Hochsensible Inhalte** — Governance der Auswertung fachlich zu klären (analog PHQ-SI und [ACE](ACE.html)). **Für den Wortlaut liegt keine dokumentierte Freigabe vor, seine Herkunft ist ungeklärt.**",
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
    "code" : "ukhd-le",
    "display" : "UKHD-LE"
  }],
  "item" : [{
    "linkId" : "life_event1_screening",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "life_event1_screening"
    }],
    "text" : "Gab es in Ihrem Leben prägende belastende Lebensereignisse, die Sie nachhaltig beeinflussen? (z.B. Tod einer nahestehenden Person, Partnerschaften, Missbrauch, Verlust ihres Zuhauses)",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
  },
  {
    "linkId" : "life_event1_monitoring",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "life_event1_monitoring"
    }],
    "text" : "Gab es seit der letzten Befragung prägende belastende Lebensereignisse, die Sie nachhaltig beeinflussen? (z.B. Tod einer nahestehenden Person, Auflösung einer Partnerschaften, Missbrauch, Verlust ihres Zuhauses)",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
  },
  {
    "linkId" : "lifev_discharge",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "lifev_discharge"
    }],
    "text" : "Gab es seit Ihrer Aufnahme prägende belastende Lebensereignisse, die Sie nachhaltig beeinflussen? (z.B. Tod einer nahestehenden Person, Auflösung einer Partnerschaften, Missbrauch, Verlust ihres Zuhauses)",
    "type" : "choice",
    "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/dem-ja-nein"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "`enableWhen` auf **alle drei** Ja/Nein-Items der Gruppe mit `enableBehavior = any` (Muster: `edeq30` im [EDE-Q6](EDE-Q6.html)). Begründung: Die drei sind dieselbe Frage für drei verschiedene Erhebungszeitpunkte, pro Termin wird genau eine gestellt, und „diese Lebensereignisse“ bezieht sich auf die gestellte. Eine Bindung an nur eines der drei wäre an zwei Dritteln der Termine falsch; `enableBehavior = all` wäre es immer, weil nie alle drei beantwortet sind."
    }],
    "linkId" : "lifev_text",
    "code" : [{
      "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
      "code" : "lifev_text"
    }],
    "text" : "Bitte benennen Sie diese Lebensereignisse:",
    "type" : "text",
    "enableWhen" : [{
      "question" : "life_event1_screening",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
        "code" : "ja",
        "display" : "Ja"
      }
    },
    {
      "question" : "life_event1_monitoring",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/dem-antwort",
        "code" : "ja",
        "display" : "Ja"
      }
    },
    {
      "question" : "lifev_discharge",
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
