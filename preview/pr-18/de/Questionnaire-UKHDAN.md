# UKHD-AN — Standortspezifische AN-Zusatzitems (Universitätsklinikum Heidelberg) - PCOR-MII Implementation Guide v0.3.0

## Questionnaire: UKHD-AN — Standortspezifische AN-Zusatzitems (Universitätsklinikum Heidelberg) (Experimentell) 

 
Sammelbogen der standortspezifischen AN-Itemgruppen des Universitätsklinikums Heidelberg — **sechs Gruppen, 14 Items**: Vorbehandlung (`UKHD-PT`), Essstörungsanamnese (`UKHD-ANB`), aktuelle Behandlung (`UKHD-CT`), belastende Lebensereignisse (`UKHD-LE`), neue Diagnosen (`UKHD-ND`) und Diagnosen bei Aufnahme (`UKHD_D`). Ein Questionnaire mit einem `group`-Item je Gruppe statt sechs Ressourcen (ADR-011). Kein Score — diese Items bilden kein publiziertes Instrument ab. **Für den Wortlaut liegt keine dokumentierte Freigabe des Standorts vor**; die Modellierung ist eine bewusste Projektentscheidung, keine geklärte Rechtslage. Quelle: PCOR-MII Item Level Dictionary (Entität AN). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. Nicht enthalten: `UKHD-BI` und `UKHD-EDP`. **Die siebte Gruppe `UKHD-CTT`** (sechs Zeitangaben zu Kindheitsbelastungen) steht nicht hier, sondern im [ACE](Questionnaire-ACE.md): Das Dictionary nennt ihren Bezug auf `ace1` bis `ace3` ausdrücklich, und `enableWhen` kann diesen Bezug nur innerhalb desselben Questionnaire ausdrücken. 

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
  "id" : "UKHDAN",
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
    "valueMarkdown" : "**Designentscheidungen.** (0) **Rechtelage — zuerst, weil sie alles andere relativiert:** Für diese 14 Items liegt **keine dokumentierte Freigabe** vor — ebenso für die sechs nach [ACE](Questionnaire-ACE.html) gezogenen `UKHD-CTT`-Items. Die DIZ-Implementierungsliste führt nur publizierte Instrumente und kennt die Standort-Itemgruppen von UKHD, UKE und MHH nicht. Rechteinhaber ist das **Universitätsklinikum Heidelberg**; die Bestätigung ist einzuholen. Die Modellierung ist eine bewusste Projektentscheidung zur Erprobung, keine geklärte Rechtslage — siehe `copyright` und den offenen Punkt in den [Designentscheidungen](Designentscheidungen.html). (1) **Ein Questionnaire, nicht sieben** ([ADR-011](Designentscheidungen.html)): Eigene Ressourcen bekommen nur publizierte mehritemige Instrumente mit eigener Nummerierung oder Skalenstruktur; Einzelitems und unnummerierte Abschnitte gehören in einen Sammelbogen — wie die OECD-/GI-PS-Einzelfragen in [DEM](Demographie.html) und die Anamnese-Abschnitte in [MHI](MHI.html). Keine der Gruppen ist publiziert, keine hat eine Itemnummerierung, drei haben ein oder zwei Items. Umgesetzt als **ein `group`-Item je Gruppe**; die Gruppenzugehörigkeit bleibt über `item.code` und die Property `instrument` in [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) maschinenlesbar. (2) **`linkId` = Dictionary-Variablen-ID** nach [ADR-008](Designentscheidungen.html) Regel 1, zweiter Teil: Diese Items haben keine offizielle Instrumenten-Nummerierung, sondern sind Eigenentwicklungen ohne Instrumentenidentität. Gruppen-Items tragen sprechende IDs (`ukhd-pt`, `ukhd-anb`, …) und **keinen** `item.code`. (3) **Sprache `de` ohne Übersetzungsebene:** [ADR-005](Designentscheidungen.html) ordnet Englisch-primär dort an, wo ein englisches Original existiert. Hier gibt es keines — die Items sind deutschsprachige Eigenentwicklungen. Eine englische `item.text`-Ebene wäre eine unvalidierte PCOR-MII-Übersetzung an der Stelle, an der der erhobene Wortlaut steht. (4) **Wortlaut wortgleich übernommen**, normalisiert nur Zeilenumbrüche und Mehrfach-Leerzeichen der Excel-Zellen. **Sprachliche Fehler der Vorlage bleiben stehen** und sind einzeln ausgewiesen: `lowBMI` „Ihr niedrigter BMI“, `comorbid1` „den zurvor genannten“, in `UKHD-LE` „Auflösung einer Partnerschaften“ und „Verlust ihres Zuhauses“, in `treatment_outpatient` „Ja“ gegen „ja“. Nach [ADR-010](Designentscheidungen.html) wäre eine Bereinigung nur als zusätzliche Ebene zulässig; sie ist hier bewusst nicht angelegt, weil es keine Vorlage gibt, gegen die sich Druckfehler und Abschreibfehler unterscheiden ließen — die Korrektur gehört ins Dictionary. (5) **`TIMING` wird nicht als FHIR-Struktur modelliert.** Die Spalte sagt, zu welchem Erhebungszeitpunkt ein Item gestellt wird (i = Initial, a/at = alle, e = Entlassung). Das ist eine Eigenschaft des Erhebungsplans, nicht des Bogens: Ein Questionnaire beschreibt, *was* gefragt wird, nicht *wann*. Sichtbar wird der Plan in der **Antwort** — die Beispielantwort ist ein Initial-/Screening-Termin und beantwortet deshalb nur die Items mit `TIMING` i bzw. a/at. (6) **Zwei zusammengesetzte Items nach dem MHI-Muster `Q_WB151`/`Q_WB151a`:** `AN_biography` und `lowBMI` erheben im Dictionary je eine Auswahl *und* einen Zahlenwert. Die **Auswahl** behält Variablen-ID, Wortlaut und `item.code`; die Wert-Items `AN_biography-wert` (integer) und `lowBMI-wert` (decimal) sind PCOR-MII-eigen, tragen **keinen** `item.code` und keinen Dictionary-Wortlaut. Bei `AN_biography` genügt **ein** Wert-Item für beide Einheiten, weil die Einheit in der Auswahl steht (`enableBehavior = any`). (7) **`enableWhen` nur, wo es inhaltlich zwingend ist** (Muster `edeq30`): `lifev_text` hängt an **allen drei** Ja/Nein-Items der Gruppe mit `enableBehavior = any`, weil diese drei nicht Varianten einer Frage sind, sondern dieselbe Frage für drei verschiedene Erhebungszeitpunkte — pro Termin wird genau eine gestellt. `new_diagnosis_text` analog an beiden ND-Items. **Bei `UKHD-CTT` war die Bedingung der Anlass, die Gruppe zu verschieben:** Die sechs Items beziehen sich auf „Ihre Angabe“, und das Dictionary benennt in der Spalte `ADDITIONAL INFORMATION` ausdrücklich `ace1`, `ace2` bzw. `ace3`. `enableWhen.question` nimmt aber eine `linkId` innerhalb desselben Questionnaire — die Items sind deshalb in den [ACE](Questionnaire-ACE.html) gezogen, wo ihre Bedingung steht. (8) **Antwortoptionen:** Ja/Nein über das projektweite [`DemJaNeinVS`](ValueSet-dem-ja-nein.html) wie in [ACE](ACE.html) (Dictionary-Kodierung 1 = ja / 0 = nein, dokumentarisch); die übrigen fünf Skalen als eigene CodeSystems mit **`ordinalValue` nur, wo die Skala ordinal ist** — gesetzt bei `bdkm16` (monotone Häufigkeit), **nicht** bei `bdkm15` (drei Zeitbezüge, nicht erschöpfend geordnet) und `treatment_outpatient` (mischt Behandlungsstatus und Setting). Die beiden `traumaspecific`-Skalen sind mit ihren Items nach [ACE](Questionnaire-ACE.html) gezogen und dort begründet. (9) **Kein Score und keine Instrument-Codes:** Es gibt kein Instrument, das gescort werden könnte. LOINC 2.83 und SNOMED CT 2026-05-01 liefern für die tragenden Konzepte null Treffer; die Items tragen ausschließlich ihre Dictionary-Variable. (10) **`UKHD-CTT` steht im [ACE](Questionnaire-ACE.html)**, nicht hier — siehe `Questionnaire.description` und Punkt 7. (11) **Nicht enthalten:** `UKHD-BI` (visuelle Körperbildskala — die Erhebung läuft noch nicht damit, und ohne die Bildvorlage ist das Item nicht modellierbar) und `UKHD-EDP` (vermutlich EDI-2-Zuschnitt, Hogrefe-Rechtelage unbewertet). Details: <https://bih-cei.github.io/PCOR-MII/UKHD-AN.html>"
  }],
  "url" : "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDAN",
  "version" : "0.3.0",
  "name" : "UKHDAN",
  "title" : "UKHD-AN — Standortspezifische AN-Zusatzitems (Universitätsklinikum Heidelberg)",
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
  "description" : "Sammelbogen der standortspezifischen AN-Itemgruppen des Universitätsklinikums Heidelberg — **sechs Gruppen, 14 Items**: Vorbehandlung (`UKHD-PT`), Essstörungsanamnese (`UKHD-ANB`), aktuelle Behandlung (`UKHD-CT`), belastende Lebensereignisse (`UKHD-LE`), neue Diagnosen (`UKHD-ND`) und Diagnosen bei Aufnahme (`UKHD_D`). Ein Questionnaire mit einem `group`-Item je Gruppe statt sechs Ressourcen (ADR-011). Kein Score — diese Items bilden kein publiziertes Instrument ab. **Für den Wortlaut liegt keine dokumentierte Freigabe des Standorts vor**; die Modellierung ist eine bewusste Projektentscheidung, keine geklärte Rechtslage. Quelle: PCOR-MII Item Level Dictionary (Entität AN). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. Nicht enthalten: `UKHD-BI` und `UKHD-EDP`. **Die siebte Gruppe `UKHD-CTT`** (sechs Zeitangaben zu Kindheitsbelastungen) steht nicht hier, sondern im [ACE](Questionnaire-ACE.html): Das Dictionary nennt ihren Bezug auf `ace1` bis `ace3` ausdrücklich, und `enableWhen` kann diesen Bezug nur innerhalb desselben Questionnaire ausdrücken.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Die Items dieses Bogens sind Eigenentwicklungen des Standorts Heidelberg und stammen aus dem PCOR-MII Item Level Dictionary (Entität AN, Gruppen UKHD-PT, UKHD-ANB, UKHD-CT, UKHD-LE, UKHD-ND, UKHD_D; die siebte Gruppe UKHD-CTT steht im [ACE](Questionnaire-ACE.html) und ist dort mit derselben Einschränkung versehen). **Rechteinhaber ist das Universitätsklinikum Heidelberg. Eine Freigabe für die Veröffentlichung des Wortlauts liegt nicht dokumentiert vor und ist einzuholen.** Die DIZ-Implementierungsliste PCOR-MII führt ausschließlich publizierte Instrumente; die standortspezifischen Itemgruppen von UKHD, UKE und MHH kommen dort nicht vor — es gibt für sie damit weder eine dokumentierte Erlaubnis noch eine dokumentierte Einschränkung. Dass der Wortlaut hier aufgenommen ist, ist eine bewusste Projektentscheidung zur Erprobung und keine geklärte Rechtslage; die Ressource trägt deshalb `status = draft` und `experimental = true`. Ergibt die Rückmeldung des Standorts eine Einschränkung, ist eine Umstellung auf metadata-only vorgesehen (Muster WAI). Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0).",
  "code" : [{
    "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-questionnaire-catalogue",
    "code" : "ukhd-an",
    "display" : "UKHD-AN"
  }],
  "item" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "Dictionary-Gruppe `UKHD-PT`, DOMAIN *Past Treatment*, Kategorie TCH. **Zwei Auffälligkeiten, die eine fachliche Prüfung brauchen:** (a) Die Variablen-IDs `bdkm15`/`bdkm16` passen zu keiner anderen Variable dieser Gruppen und deuten auf ein anderes Erhebungsinstrument als Ursprung — das Präfix ist im Dictionary nicht erläutert. (b) `bdkm16` fragt nach **Arztbesuchen**, nicht nach Psychotherapie, steht aber in der Gruppe *Past Treatment* mit 4-Wochen-Recall; inhaltlich gehört es eher zur Versorgungsinanspruchnahme."
    }],
    "linkId" : "ukhd-pt",
    "text" : "Vorbehandlung",
    "type" : "group",
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
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "Dictionary-Gruppe `UKHD-ANB`, DOMAIN *AN Biography*, Kategorie DCH. Beide Items sind im Dictionary **zusammengesetzt** (Auswahl + Zahlenwert in einem Feld) und hier nach dem MHI-Muster `Q_WB151`/`Q_WB151a` in je zwei Items aufgelöst. Die Auswahl trägt die Dictionary-Variable, das Wert-Item ist PCOR-MII-eigen und trägt **keinen** `item.code`."
    }],
    "linkId" : "ukhd-anb",
    "text" : "Essstörungsanamnese",
    "type" : "group",
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
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "Dictionary-Gruppe `UKHD-CT`, DOMAIN *Current Treatment*, Kategorie TCH — ein Item."
    }],
    "linkId" : "ukhd-ct",
    "text" : "Aktuelle Behandlung",
    "type" : "group",
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
        "valueMarkdown" : "**Der Variablenname ist irreführend:** `treatment_outpatient` legt eine Frage nach ambulanter Behandlung nahe, aber Stufe 4 der Antwortskala erfasst ausdrücklich **klinische (stationäre) oder tagesklinische (teilstationäre)** Behandlung. Das Item fragt also den Behandlungsstatus insgesamt ab, nicht nur den ambulanten. Der Name bleibt als `linkId` und `item.code` stehen, weil er die Dictionary-Variable ist — **aber er darf nicht als Bedeutungsangabe gelesen werden.** Zur Überschneidung mit `bdkm15` siehe dort. Zur bewussten Entscheidung gegen `ordinalValue` siehe das CodeSystem `ukhd-an-behandlungsstatus`."
      }],
      "linkId" : "treatment_outpatient",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "treatment_outpatient"
      }],
      "text" : "Sind Sie zurzeit in psychotherapeutischer Behandlung?",
      "type" : "choice",
      "answerValueSet" : "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-behandlungsstatus-vs"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "Dictionary-Gruppe `UKHD-LE`, DOMAIN *Life Events*, Kategorie EFA. Die drei Ja/Nein-Items sind **dieselbe Frage für drei Erhebungszeitpunkte** (`TIMING` i / alle außer Aufnahme und Entlassung / Entlassung) und unterscheiden sich nur im Zeitfenster — „in Ihrem Leben“, „seit der letzten Befragung“, „seit Ihrer Aufnahme“. Pro Termin wird genau eine gestellt; `lifev_text` hängt deshalb mit `enableBehavior = any` an allen drei. **Zwei Dictionary-Befunde:** (a) Die Variablennamen sind uneinheitlich — `life_event1_screening`/`life_event1_monitoring` gegen `lifev_discharge`/`lifev_text`, und ein `life_event2` existiert nicht. (b) Die Beispielliste von `life_event1_screening` nennt bloß „Partnerschaften“, wo die beiden anderen „Auflösung einer Partnerschaften“ sagen — dort fehlt offenbar der Kopf der Wendung."
    }],
    "linkId" : "ukhd-le",
    "text" : "Belastende Lebensereignisse",
    "type" : "group",
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
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "Dictionary-Gruppe `UKHD-ND`, DOMAIN *New Diagnosis*, Kategorie DCH. Dieselbe Zeitfenster-Konstruktion wie `UKHD-LE`, aber mit **zwei** statt drei Ja/Nein-Items: Ein Aufnahme-Item fehlt, und das ist konsistent — bei Aufnahme gibt es definitionsgemäß keine „weiteren“ Diagnosen seit der letzten Befragung, und die Aufnahmediagnosen erhebt stattdessen `UKHD_D`."
    }],
    "linkId" : "ukhd-nd",
    "text" : "Neue Diagnosen",
    "type" : "group",
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
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
      "valueMarkdown" : "Dictionary-Gruppe `UKHD_D` — **mit Unterstrich**, während alle sechs anderen Gruppen einen Bindestrich tragen (`UKHD-PT`, `UKHD-ANB`, …). Im Dictionary zu vereinheitlichen; die `linkId` des Gruppen-Items folgt der Hauskonvention. DOMAIN *Diagnosis*, Kategorie DCH, beide Items `TIMING` i. **Überschneidung mit [MHI](MHI.html):** Dort erheben `CPCOR-DIAG` (Diagnosegruppe zur Selbstzuordnung) und `GIPS13` (Liste chronischer Erkrankungen) kodiert, was hier als Freitext erhoben wird. Welche der beiden Darstellungen für die Auswertung maßgeblich ist, ist fachlich zu klären."
    }],
    "linkId" : "ukhd-d",
    "text" : "Diagnosen bei Aufnahme",
    "type" : "group",
    "item" : [{
      "linkId" : "diagnosis_admit",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "diagnosis_admit"
      }],
      "text" : "Welche Diagnose/-n sollen bei Ihnen hier behandelt werden?",
      "type" : "text"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/designNote",
        "valueMarkdown" : "**Zwei Befunde.** (a) Wortlaut unverändert übernommen, einschließlich des Fehlers: Das Dictionary schreibt „den zurvor genannten“ statt „zuvor“ — im Dictionary zu korrigieren. (b) **Fragesatz und Antwortformat passen formal nicht zusammen — entschieden am 01.10.2026, bleibt so.** Die Frage ist wörtlich eine Ja/Nein-Frage („Gibt es … noch andere Diagnosen?“), das Dictionary sieht aber ein Textfeld vor (TYPE *Text*, OPTIONS *Textfeld*). **Gemeint ist das Textfeld:** Dort sollen die weiteren Diagnosen eingetragen werden, nicht ein „ja“. `type = text` bildet damit die tatsächliche Erhebung korrekt ab. Die Formulierung ist formal unsauber, wird aber **bewusst nicht geändert** — der Wortlaut bleibt dictionary-treu (ADR-010: Was in der Vorlage steht, wird nicht in der Spezifikation repariert). Wer das Feld auswertet, erwartet Diagnosetext."
      }],
      "linkId" : "comorbid1",
      "code" : [{
        "system" : "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-item-dictionary",
        "code" : "comorbid1"
      }],
      "text" : "Gibt es außer den zurvor genannten Diagnosen noch andere Diagnosen?",
      "type" : "text"
    }]
  }]
}

```
