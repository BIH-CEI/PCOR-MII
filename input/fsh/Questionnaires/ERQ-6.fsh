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
// ES IST DER ERQ-S. Die Bezeichnung "ERQ-6" ist eine PCOR-interne Benennung;
//   in der Literatur existiert sie nicht. Zwei unabhaengige Belege:
//
//   (1) QUELLENANGABE DES PROJEKTS: Die DIZ-Implementierungsliste PCOR-MII
//       fuehrt in der Zeile "ERQ-6" als Entwicklungspaper ausdruecklich
//       doi:10.1016/j.jad.2023.08.076 — das ist die ERQ-S-Publikation
//       (Preece DA, Petrova K, Mehta A, Gross JJ, J Affect Disord
//       2023;340:855-861). Als Uebersetzungspaper steht dort
//       doi:10.1026/0012-1924.55.3.144 (Abler & Kessler 2009). Der Zuschnitt
//       wurde also bewusst als ERQ-S uebernommen, nur anders benannt.
//       (Die Spalte "verkuerzte Version?" traegt dort denselben
//       Textbaustein wie EDE-Q6/ANSOCQ-2/SSUK-2 und beschreibt den ERQ-S
//       nicht zutreffend — massgeblich ist der DOI.)
//
//   (2) ITEM-ABGLEICH, 2026-09-29: Gegen den von den Autor:innen publizierten
//       Originalbogen "ERQ-S: Copy of Questionnaire and Scoring Instructions"
//       (ResearchGate 373292091, Author content, (c) Stanford
//       Psychophysiology Laboratory) geprueft: Die sechs ERQ-S-Items sind in
//       dieser Reihenfolge die ERQ-Items 1, 2, 3, 6, 8, 9 — exakt die hier
//       modellierten linkIds. Beide Belege stimmen ueberein.
//
// SCORING (wörtlich aus den Scoring Instructions, ERQ-S-Nummerierung):
//   "Cognitive reappraisal: sum items 1, 3, and 5."
//   "Expressive suppression: sum items 2, 4, and 6."
//   Auf die hier verwendeten Original-ERQ-linkIds übersetzt:
//     Neubewertung  (Cognitive reappraisal)  = erq1 + erq3 + erq8
//     Unterdrueckung (Expressive suppression) = erq2 + erq6 + erq9
//   Wertebereich je Subskala 3-21 (3 Items x 1-7). KEIN Gesamtscore.
//   US-Normwerte (General Community Sample, N=508): Neubewertung M=14.39
//   SD=4.06 (alpha .87); Unterdrueckung M=12.25 SD=4.46 (alpha .76).
//   Die Autor:innen definieren "hoch" als >= 1 SD ueber dem Mittelwert,
//   nach US-Normen also 19+ bzw. 17+. Diese Schwellen sind hier bewusst NICHT
//   als Referenzintervalle hinterlegt: Es sind US-Normen, keine deutschen.
//
// SCORE-ARTEFAKTE: Die beiden Subskalen sind als ObservationDefinition
//   modelliert, siehe input/fsh/Scores/ERQ-S.fsh.
//
// ─────────────────────────────────────────────────────────────────────────────

Instance: ERQ6
InstanceOf: Questionnaire
Usage: #definition
Title: "ERQ-S — Emotion Regulation Questionnaire, Kurzform (6 Items)"
Description: "Offizielle Kurzform des Emotion Regulation Questionnaire (ERQ-S; Preece et al. 2023): sechs Items, 7-stufige Likert-Skala (1 = stimmt überhaupt nicht ... 7 = stimmt vollkommen). Zwei Subskalen mit je drei Items, Wertebereich 3-21: Neubewertung (erq1, erq3, erq8) und Unterdrückung (erq2, erq6, erq9). Kein Gesamtscore. linkIds sind die Original-ERQ-Itemnummern; deutsche Wortlaute aus der autorisierten Fassung von Abler & Kessler (2009)."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/ERQ6"
* name = "ERQ6"
* language = #de
* insert Version
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-09-23"
* publisher = "BIH-CEI"
* copyright = "Die sechs Items bilden die offizielle Kurzform ERQ-S (Preece, Petrova, Mehta & Gross 2023, doi:10.1016/j.jad.2023.08.076) des Emotion Regulation Questionnaire (ERQ; Gross & John 2003). Der ERQ-S-Originalbogen ist © Stanford Psychophysiology Laboratory; die deutschen Wortlaute stammen aus der von Gross und John autorisierten Übersetzung von Abler & Kessler (2009). Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."

// Designentscheidungen direkt am Questionnaire (designNote, ADR-003)
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen (ADR-003):** (0) **Auswahlregel des Zuschnitts:** Die DIZ-Implementierungsliste nennt in der Spalte *„verkürzte Version?“* die Formel *„nicht vollständig verwendet, sondern nur das Item mit der höchsten Trennschärfe pro Skala“*. Im Singular trifft das hier **nicht** zu — es sind drei Items je Subskala; die Formel wirkt bei diesem Eintrag durchkopiert. Der Zuschnitt ist keine projekteigene Auswahl, sondern die publizierte Kurzform ERQ-S, und deshalb der einzige AN-Zuschnitt mit validiertem Scoring. (1) Dieser Bogen ist die **offizielle Kurzform ERQ-S** (Preece et al. 2023) — verifiziert am 2026-09-29 gegen den Originalbogen der Autor:innen: Die sechs ERQ-S-Items sind die ERQ-Items 1, 2, 3, 6, 8, 9, also exakt die hier modellierten `linkId`s. (2) `linkId`s = Original-ERQ-Itemnummern; die Dictionary-Variablen-IDs laufen sequenziell — Mapping: erq4→`erq6`, erq5→`erq8`, erq6→`erq9`. (3) **Scoring vorhanden:** Neubewertung = `erq1`+`erq3`+`erq8`, Unterdrückung = `erq2`+`erq6`+`erq9`, je 3–21; kein Gesamtscore. Als `ObservationDefinition` modelliert. (4) US-Normwerte bewusst nicht als Referenzintervalle hinterlegt — es sind keine deutschen Normen. (5) Keine Terminologie-Codes: LOINC und SNOMED CT kennen den ERQ nicht. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

// FHIR variables: die beiden Subskalen-Summen (ERQ-S Scoring Instructions).
// Muster wie OPD-SFK. Items sind hier type=integer, daher .value.sum().
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "erqsReappraisal"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^erq(1|3|8)$')).answer.value.sum()"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "erqsSuppression"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^erq(2|6|9)$')).answer.value.sum()"

// ── 6 Items, gemeinsame 7-stufige Skala (linkId = Original-ERQ-Itemnummer) ────
* item[+]
  * linkId = "erq1"
  * code[+] = PcorItemDictionaryCS#erq1
  * text = "Wenn ich mehr positive Gefühle (wie Freude oder Heiterkeit) empfinden möchte, ändere ich, woran ich denke."
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
    * text = "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
    * type = #display
* item[+]
  * linkId = "erq2"
  * code[+] = PcorItemDictionaryCS#erq2
  * text = "Ich behalte meine Gefühle für mich."
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
    * text = "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
    * type = #display
* item[+]
  * linkId = "erq3"
  * code[+] = PcorItemDictionaryCS#erq3
  * text = "Wenn ich weniger negative Gefühle (wie Traurigkeit oder Ärger) empfinden möchte, ändere ich, woran ich denke."
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
    * text = "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
    * type = #display
* item[+]
  * linkId = "erq6"
  * code[+] = PcorItemDictionaryCS#erq4
  * text = "Ich halte meine Gefühle unter Kontrolle, indem ich sie nicht nach außen zeige."
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
    * text = "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
    * type = #display
* item[+]
  * linkId = "erq8"
  * code[+] = PcorItemDictionaryCS#erq5
  * text = "Ich halte meine Gefühle unter Kontrolle, indem ich über meine aktuelle Situation anders nachdenke."
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
    * text = "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
    * type = #display
* item[+]
  * linkId = "erq9"
  * code[+] = PcorItemDictionaryCS#erq6
  * text = "Wenn ich negative Gefühle empfinde, sorge ich dafür, sie nicht nach außen zu zeigen."
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
    * text = "1 = stimmt überhaupt nicht, 4 = neutral, 7 = stimmt vollkommen"
    * type = #display
