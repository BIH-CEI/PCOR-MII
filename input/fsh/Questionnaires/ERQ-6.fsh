// ─────────────────────────────────────────────────────────────────────────────
// ERQ-6 — Emotionsregulation, 6-Item-Kurzfassung des ERQ
// Quelle: PCOR Item Level Dictionary, Entität AN, Kategorie DCH,
//   Items erq1-erq6 (Typ "Visual Likert Scale", Reiter "ERQ" im Dictionary).
//
// HERKUNFT: Kurzfassung des Emotion Regulation Questionnaire (ERQ, Gross &
//   John 2003; deutsche Fassung Abler & Kessler 2009). Der PCOR-Zuschnitt
//   umfasst 6 der 10 ERQ-Items; die DIZ-Implementierungsliste führt das
//   Instrument als frei nutzbar.
//
// LINKIDS = ORIGINAL-ITEMNUMMERN (linkId-Regel, ADR-003): Die sechs Items
//   sind die Original-ERQ-Items 1, 2, 3, 6, 8, 9 — verifiziert 2026-09-23
//   gegen den von Gross/John autorisierten deutschen Originalbogen
//   (Abler/Kessler, Universität Ulm; https://spl.stanford.edu/resources,
//   Datei "german.pdf"): alle sechs Fragetexte wortgleich. Die Dictionary-
//   Variablen-IDs laufen dagegen sequenziell; Mapping Dictionary -> linkId:
//   erq1->erq1, erq2->erq2, erq3->erq3, erq4->erq6, erq5->erq8, erq6->erq9.
//
// ES IST NICHT DER ERQ-S — KORRIGIERT AM 01.10.2026. Hier stand bis dahin das
//   Gegenteil, mit zwei angeblich unabhaengigen Belegen und einer uebernommenen
//   Scoring-Vorschrift. Beides war falsch; der Block ist deshalb ersetzt und
//   nicht nur ergaenzt. Was ihn widerlegt:
//
//   TABELLE 1 VON PREECE ET AL. 2023 (J Affect Disord 340:855-861) gibt die
//     Zuordnung an: Der ERQ-S besteht aus den ERQ-Items 2, 6, 7, 8, 9 und 10
//     (Cognitive Reappraisal 7, 8, 10; Expressive Suppression 2, 6, 9). Hier
//     modelliert sind die ERQ-Items 1, 2, 3, 6, 8 und 9. Vier Items
//     ueberschneiden sich — die NEUBEWERTUNGS-Items aber nicht: PCOR-MII hat 1
//     und 3, der ERQ-S hat 7 und 10.
//
//   WIE DER FEHLER ENTSTAND: Die ERQ-S-Scoring-Angabe nennt "sum items 1, 3,
//     and 5" — das ist ERQ-S-EIGENE Zaehlung. Diese Nummern wurden als
//     ERQ-Nummern gelesen und ueber eine ANGENOMMENE Zuordnung uebersetzt,
//     statt gegen Tabelle 1 geprueft zu werden. Zwei teilweise ueberlappende
//     Itemsaetze sahen dadurch identisch aus. Lehre: Bei einer Kurzform ist die
//     Mapping-Tabelle der Publikation zu holen, nicht aus der Scoring-Angabe zu
//     rekonstruieren.
//
//   DIE DIZ-IMPLEMENTIERUNGSLISTE LEGT DIE VERWECHSLUNG NAHE: Sie nennt in der
//     Zeile "ERQ-6" als Entwicklungspaper doi:10.1016/j.jad.2023.08.076, also
//     die ERQ-S-Publikation. Die Items im Item Level Dictionary sind aber
//     andere. Das ist das Gegenbeispiel zu ADR-008: Die AUSWAHLQUELLE der Liste
//     ist nicht die Identifikation des Instruments, und wer sie ungeprueft
//     uebernimmt, modelliert einen anderen Bogen, als er zu modellieren glaubt.
//     Als Uebersetzungspaper steht dort doi:10.1026/0012-1924.55.3.144
//     (Abler & Kessler 2009) — das ist richtig und bleibt die Quelle des
//     deutschen Wortlauts.
//
//   DIE BEZEICHNUNG "ERQ-6" bleibt eine PCOR-interne Benennung; in der
//     Literatur existiert sie nicht. Sie bezeichnet jetzt genau das, was der
//     Bogen ist: einen projektspezifischen 6-Item-Zuschnitt des ERQ-10.
//
// KEIN SCORE. Die publizierten ERQ-S-Kennwerte gelten fuer dessen Itemsatz,
//   nicht fuer diesen. Bezogen auf das Vollinstrument ist der Satz ohnehin ein
//   Zuschnitt — drei der sechs Neubewertungs- und drei der vier
//   Unterdrueckungs-Items des ERQ-10 —, fuer den keine Scoring-Vorschrift
//   publiziert ist. Nach ADR-003 Punkt 3 gibt es daher keinen Score. Die beiden
//   ObservationDefinitions, die beiden Beispiel-Observations und die Datei
//   input/fsh/Scores/ERQ-S.fsh sind am 01.10.2026 zurueckgezogen worden.
//
// WAS UNVERAENDERT GILT — und das ist der Punkt: der Bogen selbst. Wortlaut,
//   linkIds (= Original-ERQ-Itemnummern), item.codes und Sprachebenen sind
//   dictionary-treu und gegen den Originalbogen geprueft. Falsch war nur, was
//   ueber den Bogen behauptet wurde, nicht der Bogen.
//
// ─────────────────────────────────────────────────────────────────────────────

Instance: ERQ6
InstanceOf: Questionnaire
Usage: #definition
Title: "ERQ-6 — Emotion Regulation Questionnaire, 6-Item-Zuschnitt"
Description: "Projektspezifischer 6-Item-Zuschnitt des Emotion Regulation Questionnaire (ERQ; Gross & John 2003): die ERQ-Items 1, 2, 3, 6, 8 und 9 im unveränderten Originalwortlaut, 7-stufige Likert-Skala (1 = stimmt überhaupt nicht ... 7 = stimmt vollkommen). NICHT der ERQ-S: Dieser besteht laut Preece et al. (2023, Tabelle 1) aus den ERQ-Items 2, 6, 7, 8, 9 und 10. Vier Items überschneiden sich, die Neubewertungs-Items nicht — PCOR-MII hat 1 und 3, der ERQ-S hat 7 und 10. Daher KEIN Score — die publizierten ERQ-S-Kennwerte gelten für den ERQ-S-Wortlaut, nicht für diesen Satz. linkIds sind die Original-ERQ-Itemnummern; deutsche Wortlaute aus der autorisierten Fassung von Abler & Kessler (2009), englische aus dem ERQ-Originalbogen (Gross & John). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. ACHTUNG: Sie ist hier NICHT die Itemnummer. Dictionary erq4/erq5/erq6 liegen auf den ERQ-Items 6/8/9; die Original-Itemnummer steht im linkId."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/ERQ6"
* name = "ERQ6"
// SPRACHE — en primaer nach ADR-005: Das ERQ-Original ist englisch
//   (Gross & John 2003, J Pers Soc Psychol 85:348-362). item.text traegt
//   deshalb den englischen Originalwortlaut, die autorisierte deutsche Fassung
//   von Abler & Kessler (2009) haengt als translation-Extension daran. Beide
//   Wortlaute stammen vom Stanford Psychophysiology Laboratory, das die
//   Originalbogen frei bereitstellt und die deutsche Fassung ausdruecklich als
//   "autorisiert von den Autoren der englischen Originalversion" ausweist.
//
//   NUR SECHS DER ZEHN ERQ-ITEMS sind hier abgebildet (1, 2, 3, 6, 8, 9). Die
//   Langform darf nach ADR-008 mitmodelliert werden und ist dafuer auch
//   vollstaendig beschafft (englisch und deutsch) — sie ist aber NICHT
//   Bestandteil dieses Release: Gebraucht werden zunaechst die Short Forms.
//   Fuer diesen Bogen ist die Langform vor allem die QUELLE des Wortlauts,
//   denn die Kurzform-Publikation (Preece et al. 2023) nennt nur Itemnummern
//   und Psychometrie, keinen deutschen Text.
* language = #en
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#erq-6 "ERQ-6"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-09-23"
* publisher = "BIH-CEI"
* copyright = "Die sechs Items sind die Items 1, 2, 3, 6, 8 und 9 des Emotion Regulation Questionnaire (ERQ; Gross & John 2003, J Pers Soc Psychol 85:348-362), im unveränderten Wortlaut. Der ERQ-Originalbogen und die von Gross und John autorisierte deutsche Übersetzung von Abler & Kessler (2009, Diagnostica 55(3):144-152) sind frei über das Stanford Psychophysiology Laboratory bereitgestellt. Dieser Zuschnitt ist NICHT die offizielle Kurzform ERQ-S (Preece, Petrova, Mehta & Gross 2023, doi:10.1016/j.jad.2023.08.076): Diese besteht laut deren Tabelle 1 aus den ERQ-Items 2, 6, 7, 8, 9 und 10. Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."

// Designentscheidungen direkt am Questionnaire (designNote, ADR-003)
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen (ADR-003):** (0) **NICHT der ERQ-S — korrigiert am 2026-10-01.** Dieser Bogen wurde zuvor als die offizielle Kurzform ERQ-S (Preece et al. 2023) ausgewiesen. Das ist falsch. Deren Tabelle 1 gibt die Zuordnung an: Der **ERQ-S besteht aus den ERQ-Items 2, 6, 7, 8, 9 und 10** — Cognitive Reappraisal 7, 8, 10 und Expressive Suppression 2, 6, 9. PCOR-MII führt dagegen die **ERQ-Items 1, 2, 3, 6, 8 und 9**. Vier Items überschneiden sich, und die Unterdrückungs-Items sind sogar identisch (2, 6, 9) — die **Neubewertungs-Items aber nicht**: PCOR-MII hat 1 und 3, der ERQ-S hat 7 und 10. Es sind also zwei verschiedene Zuschnitte desselben Instruments. (1) **Kein Score — Folge daraus.** Die publizierten ERQ-S-Kennwerte gelten für dessen Itemsatz, nicht für diesen. Bezogen auf das Vollinstrument ist der Satz ohnehin ein Zuschnitt — drei der sechs Neubewertungs- und drei der vier Unterdrückungs-Items des ERQ-10 —, für den keine Scoring-Vorschrift publiziert ist. Nach ADR-003 Punkt 3 gibt es daher keinen Score: Die beiden ObservationDefinitions, die Beispiel-Observations, die Katalogcodes und die FHIRPath-Variablen sind zurückgezogen. (2) `linkId`s = Original-ERQ-Itemnummern; die Dictionary-Variablen-IDs laufen sequenziell — Mapping: erq4→`erq6`, erq5→`erq8`, erq6→`erq9`. (3) **Scoring vorhanden:** Neubewertung = `erq1`+`erq3`+`erq8`, Unterdrückung = `erq2`+`erq6`+`erq9`, je 3–21; kein Gesamtscore. Als `ObservationDefinition` modelliert. (4) US-Normwerte bewusst nicht als Referenzintervalle hinterlegt — es sind keine deutschen Normen. (5a) **Englisch primär** (ADR-005): `item.text` trägt den englischen Originalwortlaut (Gross & John 2003), die autorisierte deutsche Fassung von Abler & Kessler (2009) hängt als `translation`-Extension mit `lang = de` daran. Beide Bögen stellt das Stanford Psychophysiology Laboratory frei bereit. **Nur die sechs ERQ-S-Items sind modelliert, nicht der ERQ-10.** Die Langform darf nach ADR-008 mitmodelliert werden und ist vollständig beschafft, ist aber nicht Bestandteil dieses Release; für diesen Bogen ist sie vor allem die **Quelle des deutschen Wortlauts**, den die Kurzform-Publikation nicht enthält. (5) Keine Terminologie-Codes: LOINC und SNOMED CT kennen den ERQ nicht. (6) **`item.code` trägt die PCOR-MII-Dictionary-Variable** gegen [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) — das ist der PCOR-MII-Code des Items, ein weiteres lokales CodeSystem gibt es dafür bewusst nicht. Er bezeichnet das **Erhebungsfeld**, nicht die Itemnummer, und bei diesem Bogen fällt beides auseinander: Dictionary `erq4`, `erq5` und `erq6` liegen auf den ERQ-Items **6, 8 und 9**. Wer den Code für eine Itemnummer nimmt, ordnet falsch zu — die Original-Itemnummer steht im `linkId` (ADR-008), die Abbildung zusätzlich in der ConceptMap `pcor-cm-erq-s-linkids`. Wozu der Code gut ist: das maschinelle Verteilen eines flach erhobenen Datensatzes auf die Instrumenten-Questionnaires (ADR-011). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

// ── 6 Items, gemeinsame 7-stufige Skala (linkId = Original-ERQ-Itemnummer) ────
* item[+]
  * linkId = "erq1"
  * code[+] = PcorItemDictionaryCS#erq1
  * text = "When I want to feel more positive emotion (such as joy or amusement), I change what I’m thinking about."
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Wenn ich mehr positive Gefühle (wie Freude oder Heiterkeit) empfinden möchte, ändere ich, woran ich denke."
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
  * extension[=].valueInteger = 7
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension[=].valueCodeableConcept = $questionnaire-item-control#slider "Slider"
  * item[+]
    * linkId = "erq1-anchors"
    * text = "1 = strongly disagree, 4 = neutral, 7 = strongly agree"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
    * type = #display
* item[+]
  * linkId = "erq2"
  * code[+] = PcorItemDictionaryCS#erq2
  * text = "I keep my emotions to myself."
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Ich behalte meine Gefühle für mich."
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
  * extension[=].valueInteger = 7
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension[=].valueCodeableConcept = $questionnaire-item-control#slider "Slider"
  * item[+]
    * linkId = "erq2-anchors"
    * text = "1 = strongly disagree, 4 = neutral, 7 = strongly agree"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
    * type = #display
* item[+]
  * linkId = "erq3"
  * code[+] = PcorItemDictionaryCS#erq3
  * text = "When I want to feel less negative emotion (such as sadness or anger), I change what I’m thinking about."
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Wenn ich weniger negative Gefühle (wie Traurigkeit oder Ärger) empfinden möchte, ändere ich, woran ich denke."
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
  * extension[=].valueInteger = 7
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension[=].valueCodeableConcept = $questionnaire-item-control#slider "Slider"
  * item[+]
    * linkId = "erq3-anchors"
    * text = "1 = strongly disagree, 4 = neutral, 7 = strongly agree"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
    * type = #display
* item[+]
  * linkId = "erq6"
  * code[+] = PcorItemDictionaryCS#erq4
  * text = "I control my emotions by not expressing them."
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Ich halte meine Gefühle unter Kontrolle, indem ich sie nicht nach außen zeige."
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
  * extension[=].valueInteger = 7
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension[=].valueCodeableConcept = $questionnaire-item-control#slider "Slider"
  * item[+]
    * linkId = "erq6-anchors"
    * text = "1 = strongly disagree, 4 = neutral, 7 = strongly agree"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
    * type = #display
* item[+]
  * linkId = "erq8"
  * code[+] = PcorItemDictionaryCS#erq5
  * text = "I control my emotions by changing the way I think about the situation I’m in."
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Ich halte meine Gefühle unter Kontrolle, indem ich über meine aktuelle Situation anders nachdenke."
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
  * extension[=].valueInteger = 7
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension[=].valueCodeableConcept = $questionnaire-item-control#slider "Slider"
  * item[+]
    * linkId = "erq8-anchors"
    * text = "1 = strongly disagree, 4 = neutral, 7 = strongly agree"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
    * type = #display
* item[+]
  * linkId = "erq9"
  * code[+] = PcorItemDictionaryCS#erq6
  * text = "When I am feeling negative emotions, I make sure not to express them."
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Wenn ich negative Gefühle empfinde, sorge ich dafür, sie nicht nach außen zu zeigen."
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
  * extension[=].valueInteger = 7
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension[=].valueCodeableConcept = $questionnaire-item-control#slider "Slider"
  * item[+]
    * linkId = "erq9-anchors"
    * text = "1 = strongly disagree, 4 = neutral, 7 = strongly agree"
    * text.extension[+].url = $translation
    * text.extension[=].extension[+].url = "lang"
    * text.extension[=].extension[=].valueCode = #de
    * text.extension[=].extension[+].url = "content"
    * text.extension[=].extension[=].valueString = "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
    * type = #display
