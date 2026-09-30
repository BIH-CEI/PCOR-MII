// ─────────────────────────────────────────────────────────────────────────────
// EDE-Q6 — Essstörungspathologie, 6-Item-Zuschnitt des EDE-Q
// Quelle: PCOR Item Level Dictionary, Entität AN, Kategorie DCH,
//   Items edeq1 / edeq7 / edeq12 / edeq27 / edeq29 / edeq30.
//
// HERKUNFT — praeziser Stand nach Quellenpruefung 2026-09-29:
//   Zuschnitt des Eating Disorder Examination-Questionnaire (EDE-Q). Die
//   Variablen-IDs entsprechen den Itemnummern des EDE-Q (Item 1, 7, 12, 27
//   sowie die beiden Zusatzfragen zur Regelblutung). Die DIZ-
//   Implementierungsliste fuehrt das Instrument als frei nutzbar.
//
//   QUELLENANGABE DER DIZ-LISTE, eingeordnet: Als Entwicklungspaper steht
//   dort Fairburn, Cooper & O'Connor (1993), "The eating disorder
//   examination", Int J Eat Disord 6(1):1-8. Das ist die EDE — das
//   INTERVIEW, aus dem der Fragebogen EDE-Q erst abgeleitet wurde
//   (Fairburn & Beglin 1994). Fuer eine Item-Verifikation ist die
//   EDE-Q-Publikation bzw. der deutsche Bogen massgeblich, nicht das
//   Interview-Paper.
//
//   Deutsche Fassung (Uebersetzungspaper laut DIZ-Liste):
//   Hilbert A, Tuschen-Caffier B, Karwautz A, et al.
//   "Eating Disorder Examination-Questionnaire."
//   Diagnostica 2007;53(3):144. doi:10.1026/0012-1924.53.3.144
//
// AUSWAHLLOGIK — VERIFIZIERT 2026-09-29: Die vier Skalen-Items sind je EIN
//   Item pro EDE-Q-Subskala. Abgeglichen gegen die Standard-Subskalen-
//   zusammensetzung des EDE-Q (Restraint 1-5; Eating Concern 7, 9, 19-21;
//   Weight Concern 8, 12, 22, 24, 25; Shape Concern 6, 8, 10, 11, 23, 26-28):
//     edeq1  -> Restraint       (Restriktion)
//     edeq7  -> Eating Concern  (gedankliche Beschaeftigung mit Essen)
//     edeq12 -> Weight Concern  (Gewichtssorgen)
//     edeq27 -> Shape Concern   (Figursorgen)
//   Damit ist zweierlei belegt: Die Dictionary-IDs SIND die Original-EDE-Q-
//   Itemnummern (anders als beim ERQ, wo sie es nicht waren), und die Angabe
//   der DIZ-Implementierungsliste "nur das Item mit der hoechsten
//   Trennschaerfe pro Skala" trifft hier woertlich zu. edeq29/edeq30 sind
//   keine Skalen-Items, sondern die beiden Zusatzfragen zur Regelblutung.
//
// KEINE OFFIZIELLE KURZFORM: Vom EDE-Q existieren mehrere validierte
//   Kurzfassungen (EDE-QS mit 12 Items, EDE-Q-13, EDE-Q-8, EDE-Q-7), aber
//   keine 4-Item-Version mit je einem Item pro Subskala. Der hiesige
//   Zuschnitt ist also — anders als der ERQ-S — KEINE publizierte Kurzform,
//   sondern eine projektspezifische Auswahl. Deshalb auch kein Score.
//
// WORTLAUT VOLLSTAENDIG VERIFIZIERT 2026-09-29:
//   Alle sechs Items UND die Antwortskala stimmen WORTGLEICH mit der
//   autorisierten deutschen Uebersetzung ueberein:
//     Hilbert A, Tuschen-Caffier B. "Eating Disorder Examination-
//     Questionnaire. Deutschsprachige Uebersetzung." 2. Auflage.
//     Tuebingen: dgvt-Verlag, 2016.
//   Geprueft wurde gegen das vom Verlag selbst bereitgestellte PDF
//   (dgvt-verlag.de). Uebereinstimmung bei edeq1, edeq7, edeq12, edeq27,
//   edeq29, edeq30 sowie bei allen sieben Antwortstufen
//   ("kein Tag / 1-5 Tage / 6-12 Tage / 13-15 Tage / 16-22 Tage /
//   23-27 Tage / jeden Tag").
//
//   QUELLENKORREKTUR: Die DIZ-Implementierungsliste nennt als
//   Uebersetzungspaper doi:10.1026/0012-1924.53.3.144 (Diagnostica 2007).
//   Das ist die psychometrische EVALUATION der Uebersetzung, nicht die
//   Uebersetzung selbst. Der Wortlaut stammt aus der dgvt-Publikation.
//
//   Orthografie: durchgehend deutsche Schreibung, keine Helvetismen
//   (anders als DEM und ANSOCQ-2) — passt zur deutschen Quelle.
//
// RECHTE — ABGEWOGEN UND ENTSCHIEDEN 2026-09-29:
//   Es stehen zwei Tatsachen gegeneinander.
//
//   DAFUER: Die Copyrightinhaberin bzw. der dgvt-Verlag stellen den
//   vollstaendigen Fragebogen samt Auswertungsbogen SELBST frei zum
//   Download bereit — ueber die Verlagswebsite, ohne Registrierung, ohne
//   Bezahlschranke. Das ist ein bewusster Akt der Bereitstellung: Das
//   Instrument soll benutzt werden. Bei deutschsprachigen Testverfahren ist
//   dieses Muster verbreitet (Bogen frei, Manual/Auswertung als Verlagsware).
//
//   DAGEGEN: Die Publikation traegt einen ausdruecklichen Rechtevorbehalt,
//   der die elektronische Verarbeitung woertlich benennt:
//     "Alle Rechte vorbehalten. [...] Jede Verwertung ausserhalb der engen
//      Grenzen des Urheberrechts ist ohne Zustimmung der Copyrightinhaberin
//      unzulaessig und strafbar. Dies gilt insbesondere fuer
//      Vervielfaeltigungen, Uebersetzungen, Mikroverfilmungen sowie die
//      Einspeicherung und Verarbeitung in elektronischen Systemen."
//     (c) 2016 Anja Hilbert, dgvt-Verlag Tuebingen.
//
//   ENTSCHEIDUNG (Projektleitung): Der Wortlaut wird aufgenommen, unter
//   ausdruecklichem Verweis auf die freie Bereitstellung durch den Verlag
//   und mit vollstaendiger Quellenangabe im copyright-Element. Die
//   Bereitstellung wird als der aussagekraeftigere Akt gewertet; der
//   Rechtevorbehalt bleibt dabei ausgewiesen, nicht verschwiegen.
//
//   EMPFOHLENER NAECHSTER SCHRITT: eine kurze Bestaetigung der
//   Rechteinhaberin einholen (Prof. Anja Hilbert, Universitaetsmedizin
//   Leipzig) — analog zum OPD-SFK, wo die Ruecksprache bereits erfolgreich
//   gefuehrt wurde. Damit waere die Abwaegung durch eine Zusage ersetzt.
//   Bis dahin bleibt es eine begruendete Entscheidung, keine Freigabe.
//
// VALIDIERTE KURZFORM EXISTIERT: Dieselbe Publikation enthaelt den EDE-Q8
//   (Kliem et al. 2015) mit je ZWEI Items pro Subskala; er korreliert zu
//   r = .97 mit dem EDE-Q-Gesamtwert. Der hiesige Zuschnitt mit je EINEM
//   Item pro Subskala ist nicht der EDE-Q8. Falls eine validierte Kurzform
//   mit Score gewuenscht ist, waere der EDE-Q8 der Kandidat.
//
// STRUKTUR:
//   - edeq1/edeq7/edeq12: 28-Tage-Häufigkeit, 7-stufig (0 = kein Tag ...
//     6 = jeden Tag) -> choice mit EdeQ6TageVS (ordinalValue 0-6).
//   - edeq27: "Visual Likert Scale" (Reiter "EDE-Q27" im Dictionary = Grafik
//     des Original-Antwortblocks Fragen 22-28): Zahlenreihe 0-6 mit den
//     Spaltenüberschriften "überhaupt nicht" (0), "leicht" (1-2), "mäßig"
//     (3-4), "deutlich" (5-6). Umsetzung analog EXPECT als integer + Slider
//     mit Anker-display-Item.
//   - edeq29 (Für Frauen, ja/nein) -> DemJaNeinVS (gemeinsames Ja/Nein des
//     Projekts). Das Dictionary kodiert hier 1 = ja / 2 = nein; die Kodierung
//     ist im Mapping auf DemAntwortCS dokumentarisch, nicht strukturell.
//   - edeq30 (Anzahl ausgebliebener Regelblutungen) -> integer, enableWhen
//     edeq29 = ja. Das Dictionary nennt als Bedingung "If edeq31 = 1" — eine
//     Variable edeq31 existiert im AN-Blatt nicht; gemeint ist offenkundig
//     edeq29 (Erratum, siehe Designentscheidungen).
//
// SCORING: bewusst KEIN Score-Item. Der EDE-Q wird über vier Subskalen und
//   einen Global-Score (Mittelwerte) ausgewertet; für den 6-Item-Zuschnitt
//   ("trennschärfstes Item je Skala" laut Instrumentenübersicht) liegt keine
//   validierte Scoring-Vorschrift vor. edeq29/edeq30 sind ohnehin nicht
//   skalenbildend. Auswertung auf Item-Ebene, bis eine Regel abgestimmt ist.
//
// Terminologie-Recherche (mcp__fhir-terminology__search_codes, Stand 2026-09-23):
//   - SNOMED CT 2026-05-01: 446825002 |Eating disorder examination
//     questionnaire (assessment scale)| samt Score-/Subskalen-Konzepten
//     existiert — bezeichnet aber das VOLLINSTRUMENT. Einem 6-Item-Zuschnitt
//     wird der Code bewusst NICHT zugewiesen (siehe Designentscheidungen).
//   - LOINC 2.83: keine EDE-Q-Codes.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: EdeQ6TageCS
Id: ede-q6-tage
Title: "EDE-Q6 Häufigkeit in 28 Tagen (Codes)"
Description: "7-stufige Häufigkeitsskala der EDE-Q-Items über die letzten 28 Tage (0 = kein Tag ... 6 = jeden Tag). ordinalValue-Property je Konzept für SDC-Scoring via .ordinal()."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerischer Ordinalwert (0-6) für SDC-Scoring über .ordinal()."
* ^property[=].type = #decimal
* #0 "kein Tag"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 0
* #1 "1–5 Tage"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #2 "6–12 Tage"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2
* #3 "13–15 Tage"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 3
* #4 "16–22 Tage"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 4
* #5 "23–27 Tage"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 5
* #6 "jeden Tag"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 6

ValueSet: EdeQ6TageVS
Id: ede-q6-tage-vs
Title: "EDE-Q6 Häufigkeit in 28 Tagen"
Description: "7-stufige Häufigkeitsskala der EDE-Q-Items über die letzten 28 Tage (0 = kein Tag ... 6 = jeden Tag)."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system EdeQ6TageCS
* ^expansion.timestamp = "2026-09-23T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ede-q6-tage|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ede-q6-tage"
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "kein Tag"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ede-q6-tage"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "1–5 Tage"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ede-q6-tage"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "6–12 Tage"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ede-q6-tage"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "13–15 Tage"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ede-q6-tage"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "16–22 Tage"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ede-q6-tage"
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "23–27 Tage"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ede-q6-tage"
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "jeden Tag"

Instance: EDEQ6
InstanceOf: Questionnaire
Usage: #definition
Title: "EDE-Q6 — Essstörungspathologie (6-Item-Zuschnitt des EDE-Q)"
Description: "Sechs Items aus dem Eating Disorder Examination-Questionnaire (EDE-Q): drei 28-Tage-Häufigkeitsitems (Restriktion, gedankliche Beschäftigung, Abnehmwunsch), ein Item zum Körperunbehagen (0-6) sowie zwei Zusatzfragen zur Regelblutung. Kein Score — für den Zuschnitt liegt keine validierte Scoring-Vorschrift vor. Quelle: PCOR-MII Item Level Dictionary (Entität AN)."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/EDEQ6"
* name = "EDEQ6"
* language = #de
* insert Version
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-09-23"
* publisher = "BIH-CEI"
* copyright = "Die Items entstammen wortgleich der autorisierten deutschen Übersetzung: Hilbert A, Tuschen-Caffier B. Eating Disorder Examination-Questionnaire. Deutschsprachige Übersetzung. 2. Auflage. Tübingen: dgvt-Verlag, 2016. © 2016 Anja Hilbert. Der Verlag stellt den vollständigen Fragebogen samt Auswertungsbogen selbst frei zum Download bereit (dgvt-verlag.de, ohne Registrierung oder Bezahlschranke); auf diese Bereitstellung stützt sich die Aufnahme des Wortlauts hier. Zugleich trägt die Publikation den Vorbehalt „Alle Rechte vorbehalten“, der ausdrücklich auch die Einspeicherung und Verarbeitung in elektronischen Systemen nennt. Eine ausdrückliche Zustimmung der Rechteinhaberin für die hiesige Verwendung liegt nicht vor und wird angestrebt — die Abwägung ist unter Designentscheidungen dokumentiert. Englisches Original: EDE-Q (Fairburn & Beglin 1994), abgeleitet aus der EDE (Fairburn, Cooper & O'Connor 1993). Zuschnitt nach dem PCOR-MII Item Level Dictionary. Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."

// Designentscheidungen direkt am Questionnaire (designNote, ADR-003)
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen (ADR-003):** (0) **Auswahlregel des Zuschnitts** laut DIZ-Implementierungsliste, Spalte *„verkürzte Version?“*: *„nicht vollständig verwendet, sondern nur das Item mit der höchsten Trennschärfe pro Skala“*. Gegen die Standardzusammensetzung des EDE-Q nachgeprüft — die vier Skalen-Items sind je eines pro Subskala (Restraint, Eating Concern, Weight Concern, Shape Concern). Der Zuschnitt ist damit nach einem psychometrischen Kriterium gebildet, nicht willkürlich gekürzt; ein trennschärfstes Item bildet die Skala aber nicht ab, daher kein Score. (1) `linkId`s = Original-EDE-Q-Itemnummern (1, 7, 12, 27, 29, 30) — **verifiziert** über die Subskalen-zuordnung: Die vier Skalen-Items sind je eines pro Subskala (Restraint `edeq1`, Eating Concern `edeq7`, Weight Concern `edeq12`, Shape Concern `edeq27`), was die Angabe „ein Item je Skala“ der DIZ-Liste wörtlich bestätigt. (1a) **Keine offizielle Kurzform:** Vom EDE-Q gibt es zwar validierte Kurzfassungen (EDE-QS, EDE-Q-13, EDE-Q-8), aber keine 4-Item-Version je Subskala — anders als beim ERQ-S ist dieser Zuschnitt projektspezifisch, daher kein Score. (2) Kein Score: Der EDE-Q wird über Subskalen-/Global-Mittelwerte ausgewertet; für den 6-Item-Zuschnitt liegt keine validierte Scoring-Vorschrift vor, `edeq29`/`edeq30` sind nicht skalenbildend. (3) Kein `Questionnaire.code`: SNOMED `446825002` bezeichnet das Vollinstrument und wird dem Zuschnitt nicht zugewiesen. (4) `edeq27` als integer+Slider nach dem Original-Antwortblock (0 = überhaupt nicht … 6 = deutlich). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

// ── Instruktionstext (28-Tage-Bezug) ─────────────────────────────────────────
* item[+]
  * linkId = "edeq-intro"
  * text = "Die folgenden Fragen beziehen sich ausschließlich auf die letzten vier Wochen (28 Tage)."
  * type = #display

// ── Häufigkeitsitems (linkId = Dictionary-Variablen-ID = EDE-Q-Itemnummer) ───
* item[+]
  * linkId = "edeq1"
  * code[+] = PcorItemDictionaryCS#edeq1
  * text = "AN WIE VIELEN DER LETZTEN 28 TAGE ... Haben Sie bewusst versucht, die Nahrungsmenge, die Sie essen, zu begrenzen, um Ihre Figur oder Ihr Gewicht zu beeinflussen (unabhängig davon, ob es Ihnen tatsächlich gelungen ist)?"
  * type = #choice
  * answerValueSet = Canonical(EdeQ6TageVS)
* item[+]
  * linkId = "edeq7"
  * code[+] = PcorItemDictionaryCS#edeq7
  * text = "AN WIE VIELEN DER LETZTEN 28 TAGE ... Hat das Nachdenken über Nahrung, Essen oder Kalorien es Ihnen sehr schwer gemacht, sich auf Dinge zu konzentrieren, die Sie interessieren (z. B. arbeiten, einem Gespräch folgen oder lesen)?"
  * type = #choice
  * answerValueSet = Canonical(EdeQ6TageVS)
* item[+]
  * linkId = "edeq12"
  * code[+] = PcorItemDictionaryCS#edeq12
  * text = "AN WIE VIELEN DER LETZTEN 28 TAGE ... Hatten Sie einen starken Wunsch abzunehmen?"
  * type = #choice
  * answerValueSet = Canonical(EdeQ6TageVS)

// ── Körperunbehagen (visuelle Skala 0-6) ─────────────────────────────────────
* item[+]
  * linkId = "edeq27"
  * code[+] = PcorItemDictionaryCS#edeq27
  * text = "WÄHREND DER LETZTEN VIER WOCHEN (28 TAGE) ... Wie unwohl haben Sie sich gefühlt, wenn Sie Ihren Körper gesehen haben (z. B. im Spiegel, Ihr Spiegelbild im Schaufenster, beim Ausziehen, Baden oder Duschen)?"
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 0
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
  * extension[=].valueInteger = 6
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
  * extension[=].valueInteger = 1
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension[=].valueCodeableConcept = $questionnaire-item-control#slider "Slider"
  * item[+]
    * linkId = "edeq27-anchors"
    * text = "0 = überhaupt nicht, 1–2 = leicht, 3–4 = mäßig, 5–6 = deutlich"
    * type = #display

// ── Zusatzfragen Regelblutung (Für Frauen) ───────────────────────────────────
* item[+]
  * linkId = "edeq-frauen-intro"
  * text = "Für Frauen:"
  * type = #display
* item[+]
  * linkId = "edeq29"
  * code[+] = PcorItemDictionaryCS#edeq29
  * text = "Ist Ihre Regelblutung während der letzten drei bis vier Monate ausgeblieben?"
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)
* item[+]
  * linkId = "edeq30"
  * code[+] = PcorItemDictionaryCS#edeq30
  * text = "Wenn ja, wie viele Regelblutungen sind ausgeblieben?"
  * type = #integer
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "Das Item Level Dictionary nennt als Bedingung „If edeq31 = 1“; eine Variable `edeq31` existiert im AN-Blatt nicht (Erratum). Umgesetzt als `enableWhen` auf `edeq29` = ja — die Ja/Nein-Frage direkt davor."
  * enableWhen[+].question = "edeq29"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
