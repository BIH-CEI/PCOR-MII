// ─────────────────────────────────────────────────────────────────────────────
// Antwortskalen der UKHD-AN-Zusatzitems
//
// Fuenf der sieben Itemgruppen bringen eigene Skalen mit, die es im Projekt
// bisher nicht gibt. Die Ja/Nein-Items (UKHD-LE, UKHD-ND) nutzen dagegen das
// projektweite DemJaNeinVS aus DEM.fsh — genau wie ACE.fsh.
//
// ANTWORTCODES = NUMERISCHE DICTIONARY-CODES (ADR-003 Punkt 4). Auch bei den
//   beiden zusammengesetzten Items (AN_biography, lowBMI) bleibt es dabei —
//   das ist eine BEWUSSTE ABWEICHUNG vom MHI-Muster: Dort tragen die
//   Einheitenauswahlen Q_WB151/Q_WB152 mnemonische Codes (#kg, #cm), weil das
//   Dictionary fuer diese PCOR-MII-eigenen Hilfsitems gar keine Codes fuehrt.
//   Hier dagegen sind 1/2/3 die Codes des erhobenen Feldes; mnemonische Codes
//   waeren eine Uminterpretation und wuerden den Rueckweg in die
//   Studiendatenhaltung verteuern.
//
// ORDINALVALUE NUR, WO DIE SKALA WIRKLICH ORDINAL IST. Vorsorglich gesetzt
//   (ADR-003 Punkt 3) heisst nicht pauschal gesetzt: Ein ordinalValue an einer
//   nominalen Skala ist eine Einladung, Nonsens zu summieren. Je Skala
//   begruendet unten.
// ─────────────────────────────────────────────────────────────────────────────

// ── UKHD-PT: bdkm15 ──────────────────────────────────────────────────────────
// KEIN ordinalValue — NOMINAL, und zwar aus zwei Gruenden. Erstens sind die
//   drei Stufen keine Menge, sondern ZEITBEZUEGE (nie / frueher / jetzt); „2"
//   ist nicht doppelt so viel Behandlung wie „1". Zweitens ist die Skala nicht
//   erschoepfend geordnet: Wer frueher UND jetzt in Behandlung ist, findet
//   keine eigene Stufe und muss sich fuer „zurzeit" entscheiden — damit faellt
//   genau die Information weg, die eine Ordnung tragen muesste.
CodeSystem: UkhdAnPsychotherapieCS
Id: ukhd-an-psychotherapie
Title: "UKHD-AN Psychotherapeutische Behandlung, frueher/aktuell (Codes)"
Description: "Drei Zeitbezüge der psychotherapeutischen Behandlung (`bdkm15`): noch nie, früher, zurzeit. Nominale Skala — bewusst ohne `ordinalValue`."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-psychotherapie"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #0 "noch nie"
* #1 "früher"
* #2 "zurzeit in Behandlung"

ValueSet: UkhdAnPsychotherapieVS
Id: ukhd-an-psychotherapie-vs
Title: "UKHD-AN Psychotherapeutische Behandlung, frueher/aktuell"
Description: "Drei Zeitbezüge der psychotherapeutischen Behandlung (`bdkm15`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-psychotherapie-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnPsychotherapieCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-psychotherapie|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-psychotherapie"
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "noch nie"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-psychotherapie"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "früher"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-psychotherapie"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "zurzeit in Behandlung"

// ── UKHD-PT: bdkm16 ──────────────────────────────────────────────────────────
// MIT ordinalValue — ORDINAL. Die vier Stufen sind eine monoton steigende
//   Haeufigkeit (gar nicht < einmalig < zweimalig < drei oder mehrfach), und
//   die letzte Stufe ist offen nach oben. Das ist eine echte Rangskala.
//
// ACHTUNG BEI DER AUSWERTUNG: ordinalValue traegt die DICTIONARY-CODES 1-4,
//   nicht die Besuchszahl. „gar nicht" ist also 1, nicht 0. Wer die Werte als
//   Anzahl Arztbesuche liest, verschiebt die Skala um eins; eine
//   zaehlbasierte Auswertung braucht die Abbildung 1->0, 2->1, 3->2, 4->3+.
CodeSystem: UkhdAnArztbesucheCS
Id: ukhd-an-arztbesuche
Title: "UKHD-AN Arztbesuche in den letzten 4 Wochen (Codes)"
Description: "Vierstufige Häufigkeitsskala der Arztbesuche in den letzten vier Wochen (`bdkm16`). `ordinalValue`-Property je Konzept — die Werte sind die Dictionary-Codes 1–4 und damit Rangplätze, **nicht** Besuchszahlen (`gar nicht` = 1, nicht 0)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerischer Ordinalwert (1-4, Dictionary-Codes — kein Besuchszaehler)."
* ^property[=].type = #decimal
* #1 "gar nicht"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #2 "einmalig"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2
* #3 "zweimalig"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 3
* #4 "drei oder mehrfach"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 4

ValueSet: UkhdAnArztbesucheVS
Id: ukhd-an-arztbesuche-vs
Title: "UKHD-AN Arztbesuche in den letzten 4 Wochen"
Description: "Vierstufige Häufigkeitsskala der Arztbesuche in den letzten vier Wochen (`bdkm16`), `ordinalValue` 1–4."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-arztbesuche-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnArztbesucheCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "gar nicht"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "einmalig"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "zweimalig"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-arztbesuche"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "drei oder mehrfach"

// ── UKHD-ANB: AN_biography (Einheitenauswahl) ────────────────────────────────
// KEIN ordinalValue — die drei Werte sind EINHEITEN und eine Nicht-Angabe,
//   keine Stufen. Der Messwert steckt im Hilfsitem AN_biography-wert.
CodeSystem: UkhdAnDauerAngabeCS
Id: ukhd-an-dauer-angabe
Title: "UKHD-AN Dauer der Essstoerung — Einheit/Angabe-Status (Codes)"
Description: "Einheit bzw. Angabe-Status für die Dauer der Essstörung (`AN_biography`): Monate, Jahre oder „weiß ich nicht“. Der Zahlenwert steht im Hilfsitem `AN_biography-wert`."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "seit … Monaten"
* #2 "seit … Jahren"
* #3 "weiß ich nicht"

ValueSet: UkhdAnDauerAngabeVS
Id: ukhd-an-dauer-angabe-vs
Title: "UKHD-AN Dauer der Essstoerung — Einheit/Angabe-Status"
Description: "Einheit bzw. Angabe-Status für die Dauer der Essstörung (`AN_biography`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-dauer-angabe-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnDauerAngabeCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "seit … Monaten"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "seit … Jahren"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-dauer-angabe"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "weiß ich nicht"

// ── UKHD-ANB: lowBMI (Angabe-Status) ─────────────────────────────────────────
// KEIN ordinalValue — „Wert folgt" gegen „weiss nicht" ist keine Stufung.
CodeSystem: UkhdAnBmiAngabeCS
Id: ukhd-an-bmi-angabe
Title: "UKHD-AN Niedrigster BMI — Angabe-Status (Codes)"
Description: "Angabe-Status für den niedrigsten BMI (`lowBMI`): Wert wird angegeben oder „weiß ich nicht“. Der Zahlenwert steht im Hilfsitem `lowBMI-wert`."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-bmi-angabe"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "BMI-Wert"
* #2 "weiß ich nicht"

ValueSet: UkhdAnBmiAngabeVS
Id: ukhd-an-bmi-angabe-vs
Title: "UKHD-AN Niedrigster BMI — Angabe-Status"
Description: "Angabe-Status für den niedrigsten BMI (`lowBMI`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-bmi-angabe-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnBmiAngabeCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-bmi-angabe|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-bmi-angabe"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "BMI-Wert"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-bmi-angabe"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "weiß ich nicht"

// ── UKHD-CT: treatment_outpatient ────────────────────────────────────────────
// KEIN ordinalValue — die Skala MISCHT ZWEI ACHSEN. Stufen 1 und 2 sagen
//   beide „nein" und unterscheiden sich nur darin, ob eine Behandlung gesucht
//   oder geplant ist; Stufen 3 und 4 sagen beide „ja" und unterscheiden das
//   SETTING (ambulant gegen stationaer/teilstationaer). Eine Zahl kann das
//   nicht tragen: Der Schritt 2->3 ist ein Statuswechsel, der Schritt 3->4 ein
//   Settingwechsel. Eine Dichotomisierung (1,2 = nein / 3,4 = ja) ist aus den
//   Codes jederzeit ableitbar und inhaltlich belastbar — ein Summenwert nicht.
//
// Die Displays uebernehmen den Wortlaut des Dictionary UNVERAENDERT,
//   einschliesslich der dort uneinheitlichen Gross-/Kleinschreibung von
//   „Ja" (Stufe 3) und „ja" (Stufe 4).
CodeSystem: UkhdAnBehandlungsstatusCS
Id: ukhd-an-behandlungsstatus
Title: "UKHD-AN Aktueller Behandlungsstatus (Codes)"
Description: "Vier Stufen des aktuellen psychotherapeutischen Behandlungsstatus (`treatment_outpatient`). Bewusst ohne `ordinalValue`: Die Skala mischt Behandlungsstatus (Stufen 1/2) und Setting (Stufen 3/4)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-behandlungsstatus"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "nein"
* #2 "nein, aber es ist eine Behandlung geplant oder ich befinde mich noch auf der Suche"
* #3 "Ja, ich befinde mich zurzeit in ambulanter psychotherapeutischer Behandlung"
* #4 "ja, ich befinde mich aktuell in einer klinischen (stationären) oder tagesklinischen (teilstationären) Behandlung"

ValueSet: UkhdAnBehandlungsstatusVS
Id: ukhd-an-behandlungsstatus-vs
Title: "UKHD-AN Aktueller Behandlungsstatus"
Description: "Vier Stufen des aktuellen psychotherapeutischen Behandlungsstatus (`treatment_outpatient`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-behandlungsstatus-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnBehandlungsstatusCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-behandlungsstatus|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-behandlungsstatus"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-behandlungsstatus"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein, aber es ist eine Behandlung geplant oder ich befinde mich noch auf der Suche"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-behandlungsstatus"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Ja, ich befinde mich zurzeit in ambulanter psychotherapeutischer Behandlung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-behandlungsstatus"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "ja, ich befinde mich aktuell in einer klinischen (stationären) oder tagesklinischen (teilstationären) Behandlung"

// ── UKHD-CTT: traumaspecific1 / 3 / 5 ────────────────────────────────────────
// MIT ordinalValue — ORDINAL, auch wenn es nur zwei Stufen sind: „einmalig"
//   gegen „mehrfach" ist eine monotone Haeufigkeitsaussage, und eine
//   Mehrfachbelastung ist in der Traumaforschung durchgaengig das schwerere
//   Mass. Der Wert ist hier wenig wert (bei zwei Stufen leistet er nichts, was
//   der Code nicht leistet), aber er ist nicht falsch — anders als bei den
//   nominalen Skalen oben.
//
// Die Displays sind SATZFRAGMENTE („um ein einmaliges"), weil sie im Dictionary
//   die Frage fortsetzen. Wortgleich uebernommen; fuer eine
//   Formularimplementierung sind sie nur zusammen mit dem Itemtext lesbar.
CodeSystem: UkhdAnEreignishaeufigkeitCS
Id: ukhd-an-ereignishaeufigkeit
Title: "UKHD-AN Ereignis einmalig oder wiederholt (Codes)"
Description: "Einmaliges oder wiederholtes Ereignis (`traumaspecific1`, `traumaspecific3`, `traumaspecific5`), `ordinalValue` 1–2. Die Displays sind Satzfragmente, die den Itemtext fortsetzen — so im Item Level Dictionary."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereignishaeufigkeit"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerischer Ordinalwert (1-2, Dictionary-Codes)."
* ^property[=].type = #decimal
* #1 "um ein einmaliges"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #2 "um ein mehrfaches Ereignis"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2

ValueSet: UkhdAnEreignishaeufigkeitVS
Id: ukhd-an-ereignishaeufigkeit-vs
Title: "UKHD-AN Ereignis einmalig oder wiederholt"
Description: "Einmaliges oder wiederholtes Ereignis (`traumaspecific1`, `traumaspecific3`, `traumaspecific5`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-ereignishaeufigkeit-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnEreignishaeufigkeitCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereignishaeufigkeit|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereignishaeufigkeit"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "um ein einmaliges"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereignishaeufigkeit"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "um ein mehrfaches Ereignis"

// ── UKHD-CTT: traumaspecific2 / 4 / 6 ────────────────────────────────────────
// KEIN ordinalValue — „vor" und „nach" sind eine NOMINALE Zeitrelation, keine
//   Stufen; und Stufe 3 („ich weiss es nicht mehr") ist eine erhobene
//   Nicht-Antwort, die in einer Rangfolge gar keinen Platz hat. Sie bleibt
//   bewusst im Wertebereich und wird nicht als dataAbsentReason ausgelagert:
//   Die Erinnerungsluecke ist hier eine Antwort, die vorgelegt wurde.
CodeSystem: UkhdAnEreigniszeitpunktCS
Id: ukhd-an-ereigniszeitpunkt
Title: "UKHD-AN Ereignis vor oder nach Beginn der Essstoerung (Codes)"
Description: "Zeitliche Lage des Ereignisses relativ zu den ersten Anzeichen der Essstörung (`traumaspecific2`, `traumaspecific4`, `traumaspecific6`). Nominal — bewusst ohne `ordinalValue`; Stufe 3 ist eine erhobene Nicht-Antwort."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereigniszeitpunkt"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "vor den ersten Anzeichen der Essstörung"
* #2 "nach den ersten Anzeichen der Essstörung"
* #3 "ich weiß es nicht mehr"

ValueSet: UkhdAnEreigniszeitpunktVS
Id: ukhd-an-ereigniszeitpunkt-vs
Title: "UKHD-AN Ereignis vor oder nach Beginn der Essstoerung"
Description: "Zeitliche Lage des Ereignisses relativ zu den ersten Anzeichen der Essstörung (`traumaspecific2`, `traumaspecific4`, `traumaspecific6`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-ereigniszeitpunkt-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnEreigniszeitpunktCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereigniszeitpunkt|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereigniszeitpunkt"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "vor den ersten Anzeichen der Essstörung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereigniszeitpunkt"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nach den ersten Anzeichen der Essstörung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereigniszeitpunkt"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "ich weiß es nicht mehr"

// ─────────────────────────────────────────────────────────────────────────────
// UKHD-AN — Standortspezifische AN-Zusatzitems des Universitaetsklinikums
//           Heidelberg (7 Itemgruppen, 20 Items)
//
// Quelle: PCOR-MII Item Level Dictionary, Entitaet AN, Gruppen UKHD-PT,
//   UKHD-ANB, UKHD-CT, UKHD-CTT, UKHD-LE, UKHD-ND und UKHD_D.
//
// ═══ RECHTELAGE — BITTE VOR DER NACHNUTZUNG LESEN ═══════════════════════════
//
//   Diese Items haben KEINE DOKUMENTIERTE FREIGABE. Die
//   DIZ-Implementierungsliste PCOR-MII fuehrt ausschliesslich PUBLIZIERTE
//   Instrumente; die standortspezifischen Itemgruppen von UKHD, UKE und MHH
//   kommen dort GAR NICHT VOR. Es gibt fuer sie also weder eine Erlaubnis noch
//   eine Einschraenkung, aus der sich etwas ableiten liesse — die Frage ist
//   eine Governance-Entscheidung des Standorts, keine Rechtsauskunft, die aus
//   der Liste zu holen waere.
//
//   Das Entscheidungslog unterscheidet an dieser Stelle zwei Sorten (siehe
//   offener Punkt „Standortspezifische Itemgruppen"): TRIVIALE FAKTENFRAGEN —
//   Koerpergewicht, AN-Subtyp, Medikamentenliste — bleiben publiziert, weil sie
//   keine schutzfaehige Schoepfung sind und die DIZ sie ohne Wortlaut nicht
//   einheitlich implementieren koennen. ENTWORFENE ITEM-BATTERIEN warten
//   dagegen auf eine Freigabe.
//
//   DIE HIER MODELLIERTEN GRUPPEN FALLEN UEBERWIEGEND IN DIE ZWEITE KATEGORIE.
//   UKHD-CTT (sechs Items zu Zeit- und Haeufigkeitsangaben von
//   Kindheitsbelastungen) und UKHD-LE (vier Items zu belastenden
//   Lebensereignissen) sind entworfene Batterien; UKHD_D und UKHD-ND liegen
//   naeher an Faktenfragen, UKHD-PT, UKHD-ANB und UKHD-CT dazwischen.
//
//   Dass sie dennoch modelliert werden, ist eine BEWUSSTE PROJEKTENTSCHEIDUNG
//   und KEINE GEKLAERTE RECHTSLAGE. Rechteinhaber ist das
//   Universitaetsklinikum Heidelberg; die Bestaetigung des Standorts ist
//   einzuholen. Bis dahin steht diese Ressource auf status = draft und
//   experimental = true, und copyright weist den Vorbehalt aus. Ergibt die
//   Rueckmeldung eine Einschraenkung, ist die Umstellung auf metadata-only
//   das vorgesehene Mittel (Muster WAI).
//
// ═══ EIN QUESTIONNAIRE, NICHT SIEBEN (ADR-011) ══════════════════════════════
//
//   ADR-011 trennt Erhebungseinheit und Instrumenteneinheit und zieht daraus
//   eine Anti-Fragmentierungs-Grenze: Eine EIGENE RESSOURCE bekommt nur, was
//   PUBLIZIERT UND MEHRITEMIG ist und eine eigene Nummerierung oder
//   Skalenstruktur mitbringt. EINZELITEMS UND UNNUMMERIERTE ABSCHNITTE gehoeren
//   in einen Sammelbogen — so wie die OECD-, GI-PS- und CPCOR-Einzelfragen in
//   DEM und die Anamnese-Abschnitte in MHI.
//
//   Die sieben UKHD-Gruppen sind genau dieser Fall: nichts davon ist
//   publiziert, keine Gruppe hat eine Itemnummerierung, drei von sieben haben
//   nur ein oder zwei Items. Sieben Ressourcen waeren kein Gewinn an
//   Praezision, sondern Rauschen — und der Bogen, der der Person vorlag, war
//   ohnehin EINER. Deshalb: ein Questionnaire mit EINEM group-Item je Gruppe.
//
//   Die Gruppenzugehoerigkeit bleibt dabei maschinenlesbar erhalten — nicht
//   ueber die Ressourcengrenze, sondern ueber item.code und die Property
//   „instrument" im CodeSystem pcor-item-dictionary. Genau das ist die
//   Zuordnungsmechanik aus ADR-011 Entscheidung 2.
//
// ═══ linkIds ════════════════════════════════════════════════════════════════
//
//   linkId = DICTIONARY-VARIABLEN-ID. ADR-008 Regel 1 verlangt
//   Original-Itemnummern — aber nur, wo es eine offizielle Nummerierung gibt.
//   Diese Items haben keine: Es sind keine Zuschnitte eines publizierten
//   Bogens, sondern Eigenentwicklungen ohne Instrumentenidentitaet. Damit
//   greift der zweite Teil der Regel („Einzelfragen oder Abschnitte … duerfen
//   als PCOR-MII-eigene Ressourcen mit Dictionary-IDs abgebildet werden").
//
//   Gruppen-Items tragen sprechende IDs (ukhd-pt, ukhd-anb, …) und KEINEN
//   item.code — sie sind keine Dictionary-Variablen. Dasselbe gilt fuer die
//   zwei PCOR-MII-eigenen Hilfsitems (siehe unten).
//
// ═══ SPRACHE ════════════════════════════════════════════════════════════════
//
//   language = de, und zwar OHNE Uebersetzungsebene. ADR-005 ordnet
//   Englisch-primaer dort an, wo ein englisches ORIGINAL existiert und die
//   deutsche Fassung eine Uebersetzung ist. Hier gibt es kein Original in einer
//   anderen Sprache: Die Items sind deutschsprachige Eigenentwicklungen des
//   Standorts. Eine englische item.text-Ebene waere eine PCOR-MII-Uebersetzung
//   und damit genau das, was ADR-005 vermeidet — eine unvalidierte Fassung an
//   der Stelle, an der die erhobene steht. (Die Domaenennamen des Dictionary
//   sind englisch, aber das sind Spaltenbezeichnungen, keine Itemtexte.)
//
// ═══ TEXTUEBERNAHME ════════════════════════════════════════════════════════
//
//   Die Itemtexte und die Antwort-Displays sind WORTGLEICH aus dem Dictionary
//   uebernommen. Normalisiert wurden ausschliesslich Layout-Artefakte der
//   Excel-Zellen: Zeilenumbrueche und Mehrfach-Leerzeichen. Fuehrende
//   Item-Nummern gibt es in diesen Gruppen nicht.
//
//   NICHT normalisiert — und das ist Absicht — wurden sprachliche Fehler der
//   Vorlage. Sie sind einzeln aufgelistet (siehe Seite UKHD-AN und die
//   designNotes an den betroffenen Items):
//     lowBMI ........... „Ihr niedrigter BMI" (statt „niedrigster")
//     comorbid1 ........ „den zurvor genannten" (statt „zuvor")
//     UKHD-LE .......... „Auflösung einer Partnerschaften" (statt
//                        „Partnerschaft"); „Verlust ihres Zuhauses" mit
//                        kleingeschriebenem Possessivpronomen in der Siezform
//     treatment_outp. .. „Ja" in Stufe 3 gegen „ja" in Stufe 4
//   Nach ADR-010 waere eine Bereinigung nur als ZUSAETZLICHE Ebene zulaessig,
//   nie am uebernommenen Wortlaut. Hier ist sie bewusst gar nicht angelegt:
//   Anders als beim ANSOCQ-2 gibt es keine Vorlage und keine publizierten
//   Kennwerte, gegen die zu entscheiden waere, ob ein Fehler in der Vorlage
//   oder in der Abschrift steckt. Die Korrektur gehoert ins Dictionary, nicht
//   in eine FHIR-Ebene daneben.
//
// ═══ TIMING WIRD NICHT MODELLIERT ═══════════════════════════════════════════
//
//   Die TIMING-Spalte des Dictionary (i = Initial, a/at = alle, e = Entlassung)
//   sagt, ZU WELCHEM ERHEBUNGSZEITPUNKT ein Item gestellt wird. Das ist eine
//   Eigenschaft des ERHEBUNGSPLANS, nicht des Bogens: Ein Questionnaire
//   beschreibt, WAS gefragt wird, nicht WANN. R4 hat dafuer auch kein
//   passendes Element — die naheliegenden Kandidaten waeren enableWhen (das
//   braeuchte ein Item, das den Zeitpunkt erfragt, und das gibt es nicht) oder
//   eine eigene Extension (die kein Consumer kennt und damit nichts erzwingt).
//
//   Praktisch sichtbar wird der Plan stattdessen in der ANTWORT: Die
//   Beispiel-QuestionnaireResponse ist ein Initial-/Screening-Termin
//   (TIMING i) und beantwortet deshalb genau die Items mit TIMING i
//   beziehungsweise a/at — die Monitoring- und Entlassungsitems bleiben leer.
//   Die Tabelle je Item steht auf der Seite UKHD-AN.
//
// ═══ ZWEI ZUSAMMENGESETZTE ITEMS — MHI-MUSTER ═══════════════════════════════
//
//   AN_biography und lowBMI sind im Dictionary je EIN Feld, das zwei Dinge
//   erhebt: eine Auswahl und einen Zahlenwert („1 = seit numeric Monaten").
//   In FHIR ist ein Item ein Datentyp, also wird daraus das Paar aus MHI
//   (Q_WB151 Einheitenauswahl + Q_WB151a Wert):
//
//     AN_biography      choice   Monate / Jahre / weiss ich nicht
//     AN_biography-wert integer  Anzahl, enableWhen auf Monate ODER Jahre
//     lowBMI            choice   BMI-Wert / weiss ich nicht
//     lowBMI-wert       decimal  BMI, enableWhen auf BMI-Wert
//
//   Das DICTIONARY-TRAGENDE Item ist jeweils die AUSWAHL: Sie behaelt
//   Variablen-ID, Wortlaut und item.code. Die Wert-Items sind PCOR-MII-eigen,
//   tragen KEINEN item.code und keinen Dictionary-Wortlaut — ihr text ist eine
//   kurze, selbst formulierte Feldbezeichnung. (Im MHI liegt es umgekehrt,
//   weil dort Q_WB151a die Dictionary-Variable ist und die Einheitenauswahl
//   der Zusatz; die Rollen sind also nicht am Suffix, sondern am Dictionary
//   abzulesen.)
//
//   Bei AN_biography genuegt EIN Wert-Item fuer zwei Einheiten, weil die
//   Einheit in der Auswahl steht — zwei getrennte Felder waeren redundant und
//   koennten sich widersprechen. enableBehavior = any verknuepft die beiden
//   Bedingungen.
//
// ═══ enableWhen ════════════════════════════════════════════════════════════
//
//   Gesetzt, wo es inhaltlich zwingend ist (Muster: edeq30 in EDE-Q6.fsh):
//
//   lifev_text — haengt an ALLEN DREI Ja/Nein-Items der Gruppe mit
//     enableBehavior = any. Begruendung: Die drei Items sind nicht Varianten
//     derselben Frage, sondern dieselbe Frage fuer DREI VERSCHIEDENE
//     ERHEBUNGSZEITPUNKTE (TIMING i / a ohne Aufnahme und Entlassung / e). Pro
//     Termin wird also GENAU EINES gestellt, und die Angabe „diese
//     Lebensereignisse" bezieht sich auf das, das gestellt wurde. Eine
//     Bindung an nur eines der drei waere an zwei Dritteln der Termine falsch;
//     enableBehavior = all waere es immer, weil nie alle drei beantwortet sind.
//
//   new_diagnosis_text — analog, aber an ZWEI Items (Monitoring und
//     Entlassung). Die Gruppe hat kein Aufnahme-Item: Bei Aufnahme gibt es
//     definitionsgemaess noch keine „weiteren" Diagnosen seit der letzten
//     Befragung, und die Aufnahmediagnosen erhebt stattdessen UKHD_D.
//
//   NICHT gesetzt bei UKHD-CTT, obwohl es dort naheliegt: Die sechs Items
//   beziehen sich auf „Ihre Angabe", also auf eine VORANGEHENDE Angabe — die
//   im Dictionary nicht benannt ist und auch nicht zur Gruppe gehoert. Ein
//   erfundenes enableWhen waere eine Behauptung ueber die Erhebungslogik. Das
//   ist der groesste offene Punkt dieses Bogens; siehe designNote am
//   Gruppen-Item und die Seite UKHD-AN.
//
// ═══ ANTWORTOPTIONEN ═══════════════════════════════════════════════════════
//
//   Ja/Nein (life_event1_screening, life_event1_monitoring, lifev_discharge,
//   new_diagnosis_monitoring, new_diagnosis_discharge) ueber das projektweite
//   DemJaNeinVS — wie in ACE.fsh. Das Dictionary kodiert 1 = ja / 0 = nein;
//   die Kodierung ist im Mapping auf DemAntwortCS dokumentarisch, nicht
//   strukturell.
//
//   Die uebrigen Skalen bekommen je ein eigenes CodeSystem + ValueSet (oben in
//   dieser Datei), mit ordinalValue nur dort, wo die Skala wirklich ordinal
//   ist. Begruendung je Skala am jeweiligen CodeSystem.
//
// ═══ KEIN SCORE, KEINE INSTRUMENT-CODES ═════════════════════════════════════
//
//   Kein Score-Item: Es gibt kein Instrument, das gescort werden koennte —
//   diese Gruppen sind kein publizierter Bogen, also existiert auch keine
//   Auswertungsvorschrift, die man uebernehmen oder verfehlen koennte
//   (ADR-003 Punkt 3).
//
//   Terminologie-Recherche (mcp__fhir-terminology__search_codes, Stand
//   2026-10-01): LOINC 2.83 und SNOMED CT 2026-05-01 liefern fuer
//   „lowest body mass index", „duration of eating disorder",
//   „psychotherapy history" und „stressful life event" jeweils NULL Treffer.
//   Weder Questionnaire.code noch semantische item.codes werden gesetzt; die
//   Items tragen ausschliesslich ihre Dictionary-Variable. Das ist konsistent
//   mit der Entscheidung bei GSLTPAQ und IPQ-S, keine Codes fremder
//   Instrumente an etwas zu haengen, das sie nicht bezeichnen.
//
// ═══ AUSDRUECKLICH NICHT ENTHALTEN ══════════════════════════════════════════
//
//   UKHD-BI (erwEV24-26, visuelle Koerperbildskala) — die Datenerhebung laeuft
//     noch nicht mit dieser Skala, und die Antwortoption des Dictionary
//     verweist nur auf einen Bilder-Reiter („Bild siehe Reiter Bilder Body
//     Image"). Ohne die Bildvorlage ist das Item nicht modellierbar.
//   UKHD-EDP (edp1-edp11) — trotz des UKHD-Praefixes vermutlich ein
//     EDI-2-Zuschnitt (je ein Item pro Subskala) und damit ein Hogrefe-
//     Testverfahren, in der DIZ-Liste gar nicht gefuehrt. Rechtelage
//     unbewertet; siehe offener Punkt auf der Seite Designentscheidungen.
//     Erst identifizieren, dann klaeren, dann modellieren — voraussichtlich
//     metadata-only.
// ─────────────────────────────────────────────────────────────────────────────

Instance: UKHDAN
InstanceOf: Questionnaire
Usage: #definition
Title: "UKHD-AN — Standortspezifische AN-Zusatzitems (Universitätsklinikum Heidelberg)"
Description: "Sammelbogen der sieben standortspezifischen AN-Itemgruppen des Universitätsklinikums Heidelberg (20 Items): Vorbehandlung (`UKHD-PT`), Essstörungsanamnese (`UKHD-ANB`), aktuelle Behandlung (`UKHD-CT`), Zeit- und Häufigkeitsangaben zu Kindheitsbelastungen (`UKHD-CTT`), belastende Lebensereignisse (`UKHD-LE`), neue Diagnosen (`UKHD-ND`) und Diagnosen bei Aufnahme (`UKHD_D`). Ein Questionnaire mit einem `group`-Item je Gruppe statt sieben Ressourcen (ADR-011). Kein Score — diese Items bilden kein publiziertes Instrument ab. **Für den Wortlaut liegt keine dokumentierte Freigabe des Standorts vor**; die Modellierung ist eine bewusste Projektentscheidung, keine geklärte Rechtslage. Quelle: PCOR-MII Item Level Dictionary (Entität AN). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. Nicht enthalten: `UKHD-BI` und `UKHD-EDP`."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDAN"
* name = "UKHDAN"
* language = #de
* insert Version
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-10-01"
* publisher = "BIH-CEI"
* copyright = "Die Items dieses Bogens sind Eigenentwicklungen des Standorts Heidelberg und stammen aus dem PCOR-MII Item Level Dictionary (Entität AN, Gruppen UKHD-PT, UKHD-ANB, UKHD-CT, UKHD-CTT, UKHD-LE, UKHD-ND, UKHD_D). **Rechteinhaber ist das Universitätsklinikum Heidelberg. Eine Freigabe für die Veröffentlichung des Wortlauts liegt nicht dokumentiert vor und ist einzuholen.** Die DIZ-Implementierungsliste PCOR-MII führt ausschließlich publizierte Instrumente; die standortspezifischen Itemgruppen von UKHD, UKE und MHH kommen dort nicht vor — es gibt für sie damit weder eine dokumentierte Erlaubnis noch eine dokumentierte Einschränkung. Dass der Wortlaut hier aufgenommen ist, ist eine bewusste Projektentscheidung zur Erprobung und keine geklärte Rechtslage; die Ressource trägt deshalb `status = draft` und `experimental = true`. Ergibt die Rückmeldung des Standorts eine Einschränkung, ist eine Umstellung auf metadata-only vorgesehen (Muster WAI). Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0)."

// Designentscheidungen direkt am Questionnaire (designNote, ADR-003 Punkt 5)
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen.** (0) **Rechtelage — zuerst, weil sie alles andere relativiert:** Für diese 20 Items liegt **keine dokumentierte Freigabe** vor. Die DIZ-Implementierungsliste führt nur publizierte Instrumente und kennt die Standort-Itemgruppen von UKHD, UKE und MHH nicht. Rechteinhaber ist das **Universitätsklinikum Heidelberg**; die Bestätigung ist einzuholen. Die Modellierung ist eine bewusste Projektentscheidung zur Erprobung, keine geklärte Rechtslage — siehe `copyright` und den offenen Punkt in den [Designentscheidungen](Designentscheidungen.html). (1) **Ein Questionnaire, nicht sieben** ([ADR-011](Designentscheidungen.html)): Eigene Ressourcen bekommen nur publizierte mehritemige Instrumente mit eigener Nummerierung oder Skalenstruktur; Einzelitems und unnummerierte Abschnitte gehören in einen Sammelbogen — wie die OECD-/GI-PS-Einzelfragen in [DEM](Demographie.html) und die Anamnese-Abschnitte in [MHI](MHI.html). Keine der sieben Gruppen ist publiziert, keine hat eine Itemnummerierung, drei haben ein oder zwei Items. Umgesetzt als **ein `group`-Item je Gruppe**; die Gruppenzugehörigkeit bleibt über `item.code` und die Property `instrument` in [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) maschinenlesbar. (2) **`linkId` = Dictionary-Variablen-ID** nach [ADR-008](Designentscheidungen.html) Regel 1, zweiter Teil: Diese Items haben keine offizielle Instrumenten-Nummerierung, sondern sind Eigenentwicklungen ohne Instrumentenidentität. Gruppen-Items tragen sprechende IDs (`ukhd-pt`, `ukhd-ctt`, …) und **keinen** `item.code`. (3) **Sprache `de` ohne Übersetzungsebene:** [ADR-005](Designentscheidungen.html) ordnet Englisch-primär dort an, wo ein englisches Original existiert. Hier gibt es keines — die Items sind deutschsprachige Eigenentwicklungen. Eine englische `item.text`-Ebene wäre eine unvalidierte PCOR-MII-Übersetzung an der Stelle, an der der erhobene Wortlaut steht. (4) **Wortlaut wortgleich übernommen**, normalisiert nur Zeilenumbrüche und Mehrfach-Leerzeichen der Excel-Zellen. **Sprachliche Fehler der Vorlage bleiben stehen** und sind einzeln ausgewiesen: `lowBMI` „Ihr niedrigter BMI“, `comorbid1` „den zurvor genannten“, in `UKHD-LE` „Auflösung einer Partnerschaften“ und „Verlust ihres Zuhauses“, in `treatment_outpatient` „Ja“ gegen „ja“. Nach [ADR-010](Designentscheidungen.html) wäre eine Bereinigung nur als zusätzliche Ebene zulässig; sie ist hier bewusst nicht angelegt, weil es keine Vorlage gibt, gegen die sich Druckfehler und Abschreibfehler unterscheiden ließen — die Korrektur gehört ins Dictionary. (5) **`TIMING` wird nicht als FHIR-Struktur modelliert.** Die Spalte sagt, zu welchem Erhebungszeitpunkt ein Item gestellt wird (i = Initial, a/at = alle, e = Entlassung). Das ist eine Eigenschaft des Erhebungsplans, nicht des Bogens: Ein Questionnaire beschreibt, *was* gefragt wird, nicht *wann*. Sichtbar wird der Plan in der **Antwort** — die Beispielantwort ist ein Initial-/Screening-Termin und beantwortet deshalb nur die Items mit `TIMING` i bzw. a/at. (6) **Zwei zusammengesetzte Items nach dem MHI-Muster `Q_WB151`/`Q_WB151a`:** `AN_biography` und `lowBMI` erheben im Dictionary je eine Auswahl *und* einen Zahlenwert. Die **Auswahl** behält Variablen-ID, Wortlaut und `item.code`; die Wert-Items `AN_biography-wert` (integer) und `lowBMI-wert` (decimal) sind PCOR-MII-eigen, tragen **keinen** `item.code` und keinen Dictionary-Wortlaut. Bei `AN_biography` genügt **ein** Wert-Item für beide Einheiten, weil die Einheit in der Auswahl steht (`enableBehavior = any`). (7) **`enableWhen` nur, wo es inhaltlich zwingend ist** (Muster `edeq30`): `lifev_text` hängt an **allen drei** Ja/Nein-Items der Gruppe mit `enableBehavior = any`, weil diese drei nicht Varianten einer Frage sind, sondern dieselbe Frage für drei verschiedene Erhebungszeitpunkte — pro Termin wird genau eine gestellt. `new_diagnosis_text` analog an beiden ND-Items. **Bei `UKHD-CTT` bewusst nicht gesetzt:** Die sechs Items beziehen sich auf „Ihre Angabe“, also auf ein vorangehendes Item, das im Dictionary nicht benannt ist — ein erfundenes `enableWhen` wäre eine Behauptung über die Erhebungslogik. (8) **Antwortoptionen:** Ja/Nein über das projektweite [`DemJaNeinVS`](ValueSet-dem-ja-nein.html) wie in [ACE](ACE.html) (Dictionary-Kodierung 1 = ja / 0 = nein, dokumentarisch); die übrigen fünf Skalen als eigene CodeSystems mit **`ordinalValue` nur, wo die Skala ordinal ist** — gesetzt bei `bdkm16` (monotone Häufigkeit) und bei `traumaspecific1/3/5` (einmalig < mehrfach), **nicht** bei `bdkm15` (drei Zeitbezüge, nicht erschöpfend geordnet), `treatment_outpatient` (mischt Behandlungsstatus und Setting) und `traumaspecific2/4/6` (nominale Zeitrelation plus erhobene Nicht-Antwort). (9) **Kein Score und keine Instrument-Codes:** Es gibt kein Instrument, das gescort werden könnte. LOINC 2.83 und SNOMED CT 2026-05-01 liefern für die tragenden Konzepte null Treffer; die Items tragen ausschließlich ihre Dictionary-Variable. (10) **Nicht enthalten:** `UKHD-BI` (visuelle Körperbildskala — die Erhebung läuft noch nicht damit, und ohne die Bildvorlage ist das Item nicht modellierbar) und `UKHD-EDP` (vermutlich EDI-2-Zuschnitt, Hogrefe-Rechtelage unbewertet). Details: <https://bih-cei.github.io/PCOR-MII/UKHD-AN.html>"

// ─────────────────────────────────────────────────────────────────────────────
// Reihenfolge der Gruppen und Items = Reihenfolge des Item Level Dictionary.
// Das ist die einzige belegte Reihenfolge; ein Layoutblatt, das eine andere
// vorgibt, liegt fuer diese Gruppen nicht vor.
//
// Die Gruppen-TEXTE sind PCOR-MII-eigene deutsche Abschnittsueberschriften,
// abgeleitet aus den englischen Spalten DOMAIN/SCALE des Dictionary. Sie sind
// KEIN erhobener Wortlaut und tragen deshalb auch keinen item.code.
// ─────────────────────────────────────────────────────────────────────────────

// ── UKHD-PT — Vorbehandlung (Kat. TCH) ───────────────────────────────────────
* item[+]
  * linkId = "ukhd-pt"
  * text = "Vorbehandlung"
  * type = #group
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "Dictionary-Gruppe `UKHD-PT`, DOMAIN *Past Treatment*, Kategorie TCH. **Zwei Auffälligkeiten, die eine fachliche Prüfung brauchen:** (a) Die Variablen-IDs `bdkm15`/`bdkm16` passen zu keiner anderen Variable dieser Gruppen und deuten auf ein anderes Erhebungsinstrument als Ursprung — das Präfix ist im Dictionary nicht erläutert. (b) `bdkm16` fragt nach **Arztbesuchen**, nicht nach Psychotherapie, steht aber in der Gruppe *Past Treatment* mit 4-Wochen-Recall; inhaltlich gehört es eher zur Versorgungsinanspruchnahme."
  * item[+]
    * linkId = "bdkm15"
    * code[+] = PcorItemDictionaryCS#bdkm15
    * text = "Waren Sie früher oder sind Sie zurzeit in psychotherapeutischer Behandlung?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnPsychotherapieVS)
    * extension[+].url = $designNote
    * extension[=].valueMarkdown = "Überschneidet sich inhaltlich mit `treatment_outpatient` in `UKHD-CT` („Sind Sie zurzeit in psychotherapeutischer Behandlung?“). Beide Items bleiben erhalten, weil beide erhoben werden und sich im Zeitbezug unterscheiden: `bdkm15` nur zur Aufnahme (`TIMING` i) und mit Vorgeschichte, `treatment_outpatient` zu jedem Termin (`TIMING` a) und mit Setting. Für die Aufnahme liefern sie teilweise dieselbe Information in zwei Skalen — **im Dictionary zu prüfen**, ob das beabsichtigt ist."
  * item[+]
    * linkId = "bdkm16"
    * code[+] = PcorItemDictionaryCS#bdkm16
    * text = "Wie oft haben Sie in den letzten 4 Wochen einen Arzt aufgesucht?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnArztbesucheVS)

// ── UKHD-ANB — Essstörungsanamnese (Kat. DCH) ────────────────────────────────
* item[+]
  * linkId = "ukhd-anb"
  * text = "Essstörungsanamnese"
  * type = #group
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "Dictionary-Gruppe `UKHD-ANB`, DOMAIN *AN Biography*, Kategorie DCH. Beide Items sind im Dictionary **zusammengesetzt** (Auswahl + Zahlenwert in einem Feld) und hier nach dem MHI-Muster `Q_WB151`/`Q_WB151a` in je zwei Items aufgelöst. Die Auswahl trägt die Dictionary-Variable, das Wert-Item ist PCOR-MII-eigen und trägt **keinen** `item.code`."
  * item[+]
    * linkId = "AN_biography"
    * code[+] = PcorItemDictionaryCS#AN_biography
    * text = "Wie lange sind Sie bereits von Ihrer Essstörung betroffen?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnDauerAngabeVS)
  * item[+]
    * linkId = "AN_biography-wert"
    * text = "Dauer — Anzahl (Einheit nach der Auswahl oben: Monate oder Jahre)"
    * type = #integer
    * extension[+].url = $designNote
    * extension[=].valueMarkdown = "**PCOR-MII-eigenes Hilfsitem**, keine Dictionary-Variable — daher kein `item.code` und kein übernommener Wortlaut. Trägt den Zahlenwert zu `AN_biography`; die Einheit steht in der Auswahl. `type = integer`, weil das Dictionary mit Monaten eine feinere Einheit anbietet und gebrochene Jahre damit nicht gebraucht werden. **Ein** Wert-Item für beide Einheiten, nicht zwei — zwei Felder könnten sich widersprechen."
    * enableWhen[+].question = "AN_biography"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = UkhdAnDauerAngabeCS#1 "seit … Monaten"
    * enableWhen[+].question = "AN_biography"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = UkhdAnDauerAngabeCS#2 "seit … Jahren"
    * enableBehavior = #any
  * item[+]
    * linkId = "lowBMI"
    * code[+] = PcorItemDictionaryCS#lowBMI
    * text = "Welches war Ihr niedrigter BMI?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnBmiAngabeVS)
    * extension[+].url = $designNote
    * extension[=].valueMarkdown = "**Wortlaut unverändert übernommen, einschließlich des Fehlers:** Das Dictionary schreibt „Ihr niedrigter BMI“ statt „niedrigster“. Nach [ADR-010](Designentscheidungen.html) bleibt übernommener Wortlaut unverändert; eine Bereinigung wäre nur als zusätzliche Ebene zulässig und ist hier nicht angelegt, weil keine Vorlage existiert, gegen die sich Druckfehler und Abschreibfehler unterscheiden ließen. **Im Dictionary zu korrigieren.**"
  * item[+]
    * linkId = "lowBMI-wert"
    * text = "Niedrigster BMI — Wert in kg/m²"
    * type = #decimal
    * extension[+].url = $designNote
    * extension[=].valueMarkdown = "**PCOR-MII-eigenes Hilfsitem**, keine Dictionary-Variable — daher kein `item.code` und kein übernommener Wortlaut (die Feldbezeichnung wiederholt den Schreibfehler von `lowBMI` deshalb auch nicht). `type = decimal`, weil ein BMI üblicherweise mit einer Dezimalstelle berichtet wird. Die Einheit kg/m² steht im Text; eine `quantity`-Modellierung wäre hier Aufwand ohne Gewinn, weil das Dictionary keine Einheitenwahl vorsieht."
    * enableWhen[+].question = "lowBMI"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = UkhdAnBmiAngabeCS#1 "BMI-Wert"

// ── UKHD-CT — Aktuelle Behandlung (Kat. TCH) ─────────────────────────────────
* item[+]
  * linkId = "ukhd-ct"
  * text = "Aktuelle Behandlung"
  * type = #group
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "Dictionary-Gruppe `UKHD-CT`, DOMAIN *Current Treatment*, Kategorie TCH — ein Item."
  * item[+]
    * linkId = "treatment_outpatient"
    * code[+] = PcorItemDictionaryCS#treatment_outpatient
    * text = "Sind Sie zurzeit in psychotherapeutischer Behandlung?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnBehandlungsstatusVS)
    * extension[+].url = $designNote
    * extension[=].valueMarkdown = "**Der Variablenname ist irreführend:** `treatment_outpatient` legt eine Frage nach ambulanter Behandlung nahe, aber Stufe 4 der Antwortskala erfasst ausdrücklich **klinische (stationäre) oder tagesklinische (teilstationäre)** Behandlung. Das Item fragt also den Behandlungsstatus insgesamt ab, nicht nur den ambulanten. Der Name bleibt als `linkId` und `item.code` stehen, weil er die Dictionary-Variable ist — **aber er darf nicht als Bedeutungsangabe gelesen werden.** Zur Überschneidung mit `bdkm15` siehe dort. Zur bewussten Entscheidung gegen `ordinalValue` siehe das CodeSystem `ukhd-an-behandlungsstatus`."

// ── UKHD-CTT — Kindheitsbelastungen, Zeit- und Häufigkeitsangaben (Kat. EFA) ─
* item[+]
  * linkId = "ukhd-ctt"
  * text = "Kindheitsbelastungen — Zeit- und Häufigkeitsangaben"
  * type = #group
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "Dictionary-Gruppe `UKHD-CTT`, SCALE *UKHD childhood trauma time specification*, Kategorie EFA. **Der größte offene Punkt dieses Bogens.** Die sechs Items sind **drei identische Paare**: `traumaspecific1/3/5` fragen wortgleich nach einmaligem oder wiederholtem Ereignis, `traumaspecific2/4/6` wortgleich nach der zeitlichen Lage relativ zum Beginn der Essstörung. Drei Paare legen **drei berichtete Ereignisse** nahe — welche, sagt das Dictionary nicht. Die Itemtexte verweisen auf „Ihre Angabe“, also auf ein **vorangehendes Item, das nicht zu dieser Gruppe gehört und im Dictionary nicht benannt ist**. Naheliegend wären die bejahten Items des [ACE](ACE.html) (`ace1`–`ace5`, Kategorie EFA wie diese Gruppe), aber das ist eine Vermutung: Der ACE hat fünf Items, nicht drei. **Konsequenz für die Modellierung:** kein `enableWhen` und keine Wiederholungslogik — ein erfundener Bezug wäre eine Behauptung über die Erhebungslogik. Die Zuordnung der drei Paare zu den berichteten Ereignissen ist mit dem Standort zu klären; bis dahin stehen die sechs Items als flache Folge."
  * item[+]
    * linkId = "traumaspecific1"
    * code[+] = PcorItemDictionaryCS#traumaspecific1
    * text = "Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich wiederholendes Ereignis?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnEreignishaeufigkeitVS)
  * item[+]
    * linkId = "traumaspecific2"
    * code[+] = PcorItemDictionaryCS#traumaspecific2
    * text = "Passierte dieses Ereignis vor oder nach den ersten Anzeichen der Essstörung? Passierte der Beginn dieser Ereignisse vor oder nach den ersten Anzeichen der Essstörung?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnEreigniszeitpunktVS)
    * extension[+].url = $designNote
    * extension[=].valueMarkdown = "**Zwei Fragesätze in einem Item** — so steht es im Dictionary, und so ist es wortgleich übernommen. Die Formulierungen unterscheiden sich nur im Numerus („dieses Ereignis“ gegen „der Beginn dieser Ereignisse“) und sind damit sehr wahrscheinlich **alternative Darbietungen**, die vom Vorgängeritem `traumaspecific1` abhängen: Einzelereignis → erster Satz, Mehrfachereignis → zweiter Satz. Das ist eine **Vermutung**; sie ist nicht in eine `enableWhen`-Verzweigung umgesetzt, weil beide Sätze dieselbe Variable mit derselben Antwortskala bedienen und eine Aufspaltung aus dem Dictionary nicht belegbar wäre. Mit dem Standort zu klären. Gilt gleichlautend für `traumaspecific4` und `traumaspecific6`."
  * item[+]
    * linkId = "traumaspecific3"
    * code[+] = PcorItemDictionaryCS#traumaspecific3
    * text = "Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich wiederholendes Ereignis?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnEreignishaeufigkeitVS)
  * item[+]
    * linkId = "traumaspecific4"
    * code[+] = PcorItemDictionaryCS#traumaspecific4
    * text = "Passierte dieses Ereignis vor oder nach den ersten Anzeichen der Essstörung? Passierte der Beginn dieser Ereignisse vor oder nach den ersten Anzeichen der Essstörung?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnEreigniszeitpunktVS)
  * item[+]
    * linkId = "traumaspecific5"
    * code[+] = PcorItemDictionaryCS#traumaspecific5
    * text = "Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich wiederholendes Ereignis?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnEreignishaeufigkeitVS)
  * item[+]
    * linkId = "traumaspecific6"
    * code[+] = PcorItemDictionaryCS#traumaspecific6
    * text = "Passierte dieses Ereignis vor oder nach den ersten Anzeichen der Essstörung? Passierte der Beginn dieser Ereignisse vor oder nach den ersten Anzeichen der Essstörung?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnEreigniszeitpunktVS)

// ── UKHD-LE — Belastende Lebensereignisse (Kat. EFA) ─────────────────────────
* item[+]
  * linkId = "ukhd-le"
  * text = "Belastende Lebensereignisse"
  * type = #group
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "Dictionary-Gruppe `UKHD-LE`, DOMAIN *Life Events*, Kategorie EFA. Die drei Ja/Nein-Items sind **dieselbe Frage für drei Erhebungszeitpunkte** (`TIMING` i / alle außer Aufnahme und Entlassung / Entlassung) und unterscheiden sich nur im Zeitfenster — „in Ihrem Leben“, „seit der letzten Befragung“, „seit Ihrer Aufnahme“. Pro Termin wird genau eine gestellt; `lifev_text` hängt deshalb mit `enableBehavior = any` an allen drei. **Zwei Dictionary-Befunde:** (a) Die Variablennamen sind uneinheitlich — `life_event1_screening`/`life_event1_monitoring` gegen `lifev_discharge`/`lifev_text`, und ein `life_event2` existiert nicht. (b) Die Beispielliste von `life_event1_screening` nennt bloß „Partnerschaften“, wo die beiden anderen „Auflösung einer Partnerschaften“ sagen — dort fehlt offenbar der Kopf der Wendung."
  * item[+]
    * linkId = "life_event1_screening"
    * code[+] = PcorItemDictionaryCS#life_event1_screening
    * text = "Gab es in Ihrem Leben prägende belastende Lebensereignisse, die Sie nachhaltig beeinflussen? (z.B. Tod einer nahestehenden Person, Partnerschaften, Missbrauch, Verlust ihres Zuhauses)"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinVS)
  * item[+]
    * linkId = "life_event1_monitoring"
    * code[+] = PcorItemDictionaryCS#life_event1_monitoring
    * text = "Gab es seit der letzten Befragung prägende belastende Lebensereignisse, die Sie nachhaltig beeinflussen? (z.B. Tod einer nahestehenden Person, Auflösung einer Partnerschaften, Missbrauch, Verlust ihres Zuhauses)"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinVS)
  * item[+]
    * linkId = "lifev_discharge"
    * code[+] = PcorItemDictionaryCS#lifev_discharge
    * text = "Gab es seit Ihrer Aufnahme prägende belastende Lebensereignisse, die Sie nachhaltig beeinflussen? (z.B. Tod einer nahestehenden Person, Auflösung einer Partnerschaften, Missbrauch, Verlust ihres Zuhauses)"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinVS)
  * item[+]
    * linkId = "lifev_text"
    * code[+] = PcorItemDictionaryCS#lifev_text
    * text = "Bitte benennen Sie diese Lebensereignisse:"
    * type = #text
    * extension[+].url = $designNote
    * extension[=].valueMarkdown = "`enableWhen` auf **alle drei** Ja/Nein-Items der Gruppe mit `enableBehavior = any` (Muster: `edeq30` im [EDE-Q6](EDE-Q6.html)). Begründung: Die drei sind dieselbe Frage für drei verschiedene Erhebungszeitpunkte, pro Termin wird genau eine gestellt, und „diese Lebensereignisse“ bezieht sich auf die gestellte. Eine Bindung an nur eines der drei wäre an zwei Dritteln der Termine falsch; `enableBehavior = all` wäre es immer, weil nie alle drei beantwortet sind."
    * enableWhen[+].question = "life_event1_screening"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
    * enableWhen[+].question = "life_event1_monitoring"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
    * enableWhen[+].question = "lifev_discharge"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
    * enableBehavior = #any

// ── UKHD-ND — Neue Diagnosen (Kat. DCH) ──────────────────────────────────────
* item[+]
  * linkId = "ukhd-nd"
  * text = "Neue Diagnosen"
  * type = #group
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "Dictionary-Gruppe `UKHD-ND`, DOMAIN *New Diagnosis*, Kategorie DCH. Dieselbe Zeitfenster-Konstruktion wie `UKHD-LE`, aber mit **zwei** statt drei Ja/Nein-Items: Ein Aufnahme-Item fehlt, und das ist konsistent — bei Aufnahme gibt es definitionsgemäß keine „weiteren“ Diagnosen seit der letzten Befragung, und die Aufnahmediagnosen erhebt stattdessen `UKHD_D`."
  * item[+]
    * linkId = "new_diagnosis_monitoring"
    * code[+] = PcorItemDictionaryCS#new_diagnosis_monitoring
    * text = "Gab es seit der letzten Befragung weitere medizinische / psychische Diagnosen?"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinVS)
  * item[+]
    * linkId = "new_diagnosis_discharge"
    * code[+] = PcorItemDictionaryCS#new_diagnosis_discharge
    * text = "Gab es seit Ihrer Aufnahme weitere medizinische / psychische Diagnosen?"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinVS)
  * item[+]
    * linkId = "new_diagnosis_text"
    * code[+] = PcorItemDictionaryCS#new_diagnosis_text
    * text = "Bitte tragen Sie diese Diagnosen in das folgende Textfeld ein."
    * type = #text
    * extension[+].url = $designNote
    * extension[=].valueMarkdown = "`enableWhen` auf **beide** Ja/Nein-Items der Gruppe mit `enableBehavior = any` — gleiche Begründung wie bei `lifev_text`, nur mit zwei statt drei Vorbedingungen, weil `UKHD-ND` kein Aufnahme-Item hat."
    * enableWhen[+].question = "new_diagnosis_monitoring"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
    * enableWhen[+].question = "new_diagnosis_discharge"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
    * enableBehavior = #any

// ── UKHD_D — Diagnosen bei Aufnahme (Kat. DCH) ───────────────────────────────
// Die Gruppen-ID traegt im Dictionary einen UNTERSTRICH (UKHD_D), waehrend alle
// sechs anderen Gruppen einen Bindestrich fuehren (UKHD-PT, UKHD-ANB, …). Die
// linkId des Gruppen-Items folgt der Hauskonvention (ukhd-d); die abweichende
// Dictionary-Schreibweise bleibt in der Property „instrument" des CodeSystems
// pcor-item-dictionary erhalten und ist im Dictionary zu vereinheitlichen.
* item[+]
  * linkId = "ukhd-d"
  * text = "Diagnosen bei Aufnahme"
  * type = #group
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "Dictionary-Gruppe `UKHD_D` — **mit Unterstrich**, während alle sechs anderen Gruppen einen Bindestrich tragen (`UKHD-PT`, `UKHD-ANB`, …). Im Dictionary zu vereinheitlichen; die `linkId` des Gruppen-Items folgt der Hauskonvention. DOMAIN *Diagnosis*, Kategorie DCH, beide Items `TIMING` i. **Überschneidung mit [MHI](MHI.html):** Dort erheben `CPCOR-DIAG` (Diagnosegruppe zur Selbstzuordnung) und `GIPS13` (Liste chronischer Erkrankungen) kodiert, was hier als Freitext erhoben wird. Welche der beiden Darstellungen für die Auswertung maßgeblich ist, ist fachlich zu klären."
  * item[+]
    * linkId = "diagnosis_admit"
    * code[+] = PcorItemDictionaryCS#diagnosis_admit
    * text = "Welche Diagnose/-n sollen bei Ihnen hier behandelt werden?"
    * type = #text
  * item[+]
    * linkId = "comorbid1"
    * code[+] = PcorItemDictionaryCS#comorbid1
    * text = "Gibt es außer den zurvor genannten Diagnosen noch andere Diagnosen?"
    * type = #text
    * extension[+].url = $designNote
    * extension[=].valueMarkdown = "**Zwei Befunde.** (a) Wortlaut unverändert übernommen, einschließlich des Fehlers: Das Dictionary schreibt „den zurvor genannten“ statt „zuvor“ — im Dictionary zu korrigieren. (b) **Fragesatz und Antwortformat passen nicht zusammen:** Die Frage ist eine Ja/Nein-Frage („Gibt es … noch andere Diagnosen?“), das Dictionary sieht als Antwort aber ein Textfeld vor (TYPE *Text*, OPTIONS *Textfeld*). Umgesetzt ist das Antwortformat des Dictionary (`type = text`), weil modelliert wird, was erhoben wird — die Frageformulierung ist mit dem Standort zu klären. Wörtlich beantwortet würde das Feld „ja“ enthalten statt der Diagnosen."
