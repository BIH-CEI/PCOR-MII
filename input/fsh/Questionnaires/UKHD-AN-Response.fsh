// ─────────────────────────────────────────────────────────────────────────────
// UKHD-AN — Beispiel-QuestionnaireResponse
//
// SZENARIO: derselbe Erhebungstermin wie die fuenf AN-Instrumente (siehe
//   ERQ-6-Response.fsh), dieselbe Beispiel-Patientin pcor-mii-exa-patient.
//   Die vorhandenen Antworten liegen auf 09:00 (ERQ-S), 09:15 (EDE-Q6),
//   09:30 (ANSOCQ-2), 09:45 (SSUK-2) und 10:00 (ACE); diese Antwort steht auf
//   10:15 und schliesst die Batterie ab. Zusammengehalten wird der Termin nach
//   ADR-011 Entscheidung 3 ueber identisches subject und denselben Erhebungstag
//   (ein Encounter liegt in den Beispielen nicht vor).
//
// ═══ DAS BEISPIEL IST EIN INITIAL-/SCREENING-TERMIN (TIMING i) ══════════════
//
//   Das ist die zentrale Entscheidung dieser Antwort, und sie ist keine
//   Formalie. Die TIMING-Spalte des Dictionary ist im Questionnaire bewusst
//   NICHT modelliert (ein Bogen sagt, WAS gefragt wird, nicht WANN) — sichtbar
//   wird sie erst in einer Antwort. Diese Antwort macht das vor: Beantwortet
//   sind genau die Items, die zum Initial-Termin erhoben werden.
//
//   NICHT beantwortet und daher GAR NICHT ENTHALTEN sind deshalb:
//     life_event1_monitoring .... TIMING "at ausser Aufnahme und Entlassung"
//     lifev_discharge ........... TIMING e
//     die GESAMTE Gruppe UKHD-ND  new_diagnosis_monitoring: "a, ausser i und e"
//                                 new_diagnosis_discharge:  e
//                                 new_diagnosis_text:       haengt an beiden
//
//   Dass UKHD-ND damit in diesem Beispiel vollstaendig leer bleibt, ist ein
//   BEWUSSTES ERGEBNIS und kein Versaeumnis: Zum Initial-Termin kann es
//   definitionsgemaess keine Diagnosen "seit der letzten Befragung" geben, und
//   die Aufnahmediagnosen erhebt stattdessen UKHD_D (diagnosis_admit,
//   comorbid1) — beide hier beantwortet. Eine Antwort, die alle 20 Items
//   fuellt, kann es an keinem realen Erhebungszeitpunkt geben. Wer die
//   ND-Items und lifev_discharge in einer Antwort sehen will, braucht ein
//   zweites Beispiel fuer einen Entlassungstermin; das ist bewusst nicht
//   angelegt, weil es nichts Technisches zeigen wuerde, was hier nicht schon
//   steht (Ja/Nein ueber DemJaNeinVS, Freitext mit enableWhen).
//
// ═══ WARUM DIESE ANTWORTWERTE ═══════════════════════════════════════════════
//
//   Der Fall ist in DEM und MHI schon festgelegt: Anorexia nervosa,
//   restriktiver Typ (MHI AN_subtyp = 1), Diagnose 2020 (MHI CPCOR_ONSET),
//   62 kg bei 170 cm (MHI Q_WB151a/Q_WB152a, also BMI 21,5 — teilrestituiert),
//   komorbide Depression (MHI GIPS13 = 18) mit Dauermedikation seit 2021, und
//   im ACE zwei bejahte Items in der emotionalen Dimension (ace1 emotionale
//   Misshandlung, ace4 emotionale Vernachlaessigung). Diese Antwort schreibt
//   das fort, statt neue Fakten zu erfinden.
//
//   bdkm15 = 2 (zurzeit in Behandlung) und treatment_outpatient = 3 (ambulante
//     Psychotherapie). Die beiden Items ueberschneiden sich inhaltlich (siehe
//     designNote am Questionnaire); hier sind sie bewusst KONSISTENT belegt —
//     ein Beispiel, das sie widerspruechlich fuellt, waere zwar lehrreich,
//     wuerde aber als Fehler gelesen. Ambulant und nicht stationaer, weil der
//     Initial-Termin im Erhebungsplan das Screening ist und das MHI-Beispiel
//     eine ambulante Gewichtsmessung beim Hausarzt fuehrt.
//
//   bdkm16 = 3 (zweimalig) Arztbesuche in den letzten 4 Wochen. Plausibel bei
//     ambulanter Psychotherapie mit Gewichtskontrolle beim Hausarzt. Bewusst
//     nicht die Randstufe "gar nicht" oder "drei oder mehrfach" — eine
//     Mittelstufe belegt, dass die Skala als Rangskala gelesen wird, und
//     erinnert daran, dass ordinalValue hier Rangplaetze traegt und keine
//     Besuchszahlen (vgl. das CodeSystem ukhd-an-arztbesuche).
//
//   AN_biography = Jahre, Wert 8. ACHTUNG, DAS IST KEIN WIDERSPRUCH ZU
//     CPCOR_ONSET = 2020: Das Item fragt, wie lange die Person BETROFFEN ist,
//     nicht wann sie diagnostiziert wurde. Acht Jahre bei einer Diagnose 2020
//     bedeuten erste Anzeichen um 2018, also rund zwei Jahre Vorlauf — das ist
//     die vielfach beschriebene Latenz zwischen Erkrankungsbeginn und
//     Behandlungsbeginn bei Anorexia nervosa. Das Beispiel zeigt damit
//     absichtlich, dass die beiden Felder NICHT dasselbe erheben. Einheit
//     "Jahre" und nicht "Monate", weil die Einheitenauswahl nur dann einen
//     Zweck hat, wenn sie bei langen Verlaeufen die groebere Einheit zulaesst.
//
//   lowBMI = 1 (Wert wird angegeben), lowBMI-wert = 14.8. Bei 170 cm sind das
//     42,8 kg. Ein BMI unter 15 ist der Bereich, in dem eine stationaere
//     Behandlung indiziert ist, und passt damit zu einer Vorgeschichte mit
//     stationaerem Aufenthalt (MHI weight_inpatient / weight_discharge); vom
//     aktuellen BMI 21,5 ist er deutlich getrennt, sodass niemand die beiden
//     Felder verwechselt. Dezimalstelle bewusst gesetzt — das Item ist decimal,
//     und ein glatter Ganzzahlwert haette das nicht belegt.
//
//   UKHD-CTT: ZWEI der drei Paare belegt, das dritte leer. Das ist die
//     inhaltlich tragfaehigste Wahl, die ohne eine Klaerung des offenen
//     Bezugspunkts moeglich ist (siehe designNote am Gruppen-Item: worauf sich
//     "Ihre Angabe" bezieht, sagt das Dictionary nicht). Im ACE sind ZWEI
//     Items bejaht — also gibt es zwei berichtete Belastungen und damit zwei
//     auszufuellende Paare. Dass das dritte leer bleibt, ist genau die
//     Information, die der Bogen hier tragen soll.
//       traumaspecific1 = 2 / traumaspecific3 = 2 (mehrfaches Ereignis):
//         Beide ACE-Items fragen nach "oft oder sehr oft" — eine einmalige
//         Angabe waere mit der bejahten ACE-Antwort unvereinbar.
//       traumaspecific2 = 1 / traumaspecific4 = 1 (vor den ersten Anzeichen):
//         Der ACE fragt nach Erfahrungen vor dem 18. Lebensjahr; die ersten
//         Anzeichen der Essstoerung liegen nach AN_biography um 2018. Die
//         Reihenfolge ist damit aus den uebrigen Angaben erzwungen, nicht
//         gewaehlt.
//
//   UKHD-LE: life_event1_screening = Ja, und lifev_text ist gefuellt — damit
//     belegt die Antwort die enableWhen-Kette (Freitextitem nur bei Ja). Der
//     Freitext benennt ZWEI Ereignisse und bleibt damit konsistent mit den
//     zwei bejahten ACE-Items und den zwei belegten CTT-Paaren. Formuliert ist
//     er bewusst zurueckhaltend: Ein Beispiel im Implementation Guide wird
//     vorgefuehrt und gelesen, und ein drastischer Freitext belegt technisch
//     nichts, was ein sachlicher nicht auch belegt (dieselbe redaktionelle
//     Linie wie bei ace3 in ACE-Response.fsh).
//
//   UKHD_D: diagnosis_admit nennt die Behandlungsdiagnose wortgleich zum
//     MHI-AN_subtyp, comorbid1 die Komorbiditaet wortgleich zu MHI GIPS13 = 18
//     (Depression) samt der dort dokumentierten Medikation seit 2021. Die
//     Doppelerhebung — hier Freitext, im MHI kodiert — ist Absicht des
//     Dictionary und als offener Punkt am Gruppen-Item vermerkt; das Beispiel
//     macht sie sichtbar, indem beide Darstellungen dasselbe sagen.
//     comorbid1 ist WOERTLICH eine Ja/Nein-Frage, hat aber ein Textfeld als
//     Antwortformat (siehe designNote dort). Hier steht deshalb die Diagnose
//     und nicht "ja" — das ist die Lesart, die der Variablenname comorbid1
//     nahelegt und die allein auswertbar ist.
//
// ═══ REIHENFOLGE ════════════════════════════════════════════════════════════
//
//   Die Items stehen in der Reihenfolge des Questionnaire, Gruppen eingehalten
//   und verschachtelt. Der FHIR-Validator prueft das (QuestionnaireResponse
//   muss der Struktur des Questionnaire folgen) und SUSHI faengt es nicht ab.
//   Uebersprungene Items verschieben die Reihenfolge nicht.
//
// MII-PRO-PROFIL AUF DER ANTWORT: Alle 20 Items sind im Dictionary als
//   "Patient-reported" gefuehrt, also PROs — deshalb traegt die Antwort
//   mii-pr-pro-questionnaire-response (Basis: SDC QuestionnaireResponse), wie
//   die fuenf AN-Instrumente. DEM und MHI tun das bewusst nicht. Die Version
//   des Profils ist absichtlich nicht angepinnt; sie loest sich aus der
//   Abhaengigkeit in sushi-config.yaml auf. Der QUESTIONNAIRE dagegen ist ueber
//   das RuleSet QuestionnaireRef versioniert referenziert — ohne Pin ist aus
//   der Antwort nicht ablesbar, welcher Wortlaut vorlag.
//
// RECHTELAGE: Fuer den Wortlaut der Items liegt keine dokumentierte Freigabe
//   des Standorts vor (siehe copyright des Questionnaire). Diese Antwort
//   enthaelt keine Itemtexte, sondern nur linkIds und Antwortwerte — sie ist
//   von der Frage also nicht betroffen und bliebe auch bei einer Umstellung
//   auf metadata-only gueltig.
// ─────────────────────────────────────────────────────────────────────────────

Instance: UKHDANResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "UKHD-AN — Beispielantwort (Initial-/Screening-Termin)"
Description: "Beispielantwort zum UKHD-AN-Questionnaire für einen Initial-/Screening-Termin: Vorbehandlung, Essstörungsanamnese (Dauer 8 Jahre, niedrigster BMI 14,8), ambulante Psychotherapie, zwei von drei Ereignis-Paaren der Kindheitsbelastungen, ein bejahtes Lebensereignis-Item mit Freitext und die Aufnahmediagnosen. Die Gruppe `UKHD-ND` sowie `life_event1_monitoring` und `lifev_discharge` bleiben bewusst leer — sie werden zum Initial-Termin nicht erhoben (`TIMING`). Derselbe Erhebungstermin und dieselbe Patientin wie die fünf AN-Instrumente."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDAN)
* status = #completed
* subject = Reference(pcor-mii-exa-patient)
* authored = "2026-06-18T10:15:00+02:00"

// ── UKHD-PT — Vorbehandlung ───────────────────────────────────────────────────
* item[+]
  * linkId = "ukhd-pt"
  * item[+]
    * linkId = "bdkm15"
    * answer.valueCoding = UkhdAnPsychotherapieCS#2 "zurzeit in Behandlung"
  * item[+]
    * linkId = "bdkm16"
    * answer.valueCoding = UkhdAnArztbesucheCS#3 "zweimalig"

// ── UKHD-ANB — Essstörungsanamnese ────────────────────────────────────────────
// Dauer in Jahren; der Zahlenwert steht im PCOR-MII-eigenen Hilfsitem.
* item[+]
  * linkId = "ukhd-anb"
  * item[+]
    * linkId = "AN_biography"
    * answer.valueCoding = UkhdAnDauerAngabeCS#2 "seit … Jahren"
  * item[+]
    * linkId = "AN_biography-wert"
    * answer.valueInteger = 8
  * item[+]
    * linkId = "lowBMI"
    * answer.valueCoding = UkhdAnBmiAngabeCS#1 "BMI-Wert"
  * item[+]
    * linkId = "lowBMI-wert"
    * answer.valueDecimal = 14.8

// ── UKHD-CT — Aktuelle Behandlung ─────────────────────────────────────────────
* item[+]
  * linkId = "ukhd-ct"
  * item[+]
    * linkId = "treatment_outpatient"
    * answer.valueCoding = UkhdAnBehandlungsstatusCS#3 "Ja, ich befinde mich zurzeit in ambulanter psychotherapeutischer Behandlung"

// ── UKHD-CTT — Kindheitsbelastungen, zwei von drei Paaren ─────────────────────
// Paar 1 und 2 entsprechen den zwei bejahten ACE-Items (ace1, ace4); Paar 3
// (traumaspecific5/6) bleibt leer, weil kein drittes Ereignis berichtet ist.
* item[+]
  * linkId = "ukhd-ctt"
  * item[+]
    * linkId = "traumaspecific1"
    * answer.valueCoding = UkhdAnEreignishaeufigkeitCS#2 "um ein mehrfaches Ereignis"
  * item[+]
    * linkId = "traumaspecific2"
    * answer.valueCoding = UkhdAnEreigniszeitpunktCS#1 "vor den ersten Anzeichen der Essstörung"
  * item[+]
    * linkId = "traumaspecific3"
    * answer.valueCoding = UkhdAnEreignishaeufigkeitCS#2 "um ein mehrfaches Ereignis"
  * item[+]
    * linkId = "traumaspecific4"
    * answer.valueCoding = UkhdAnEreigniszeitpunktCS#1 "vor den ersten Anzeichen der Essstörung"

// ── UKHD-LE — Belastende Lebensereignisse ─────────────────────────────────────
// Nur das Screening-Item (TIMING i); Monitoring und Entlassung bleiben leer.
// Das bejahte Screening-Item schaltet lifev_text frei (enableWhen, any).
* item[+]
  * linkId = "ukhd-le"
  * item[+]
    * linkId = "life_event1_screening"
    * answer.valueCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "lifev_text"
    * answer.valueString = "Wiederholte Abwertungen durch einen Elternteil in Kindheit und Jugend; über Jahre das Gefühl, in der Familie nicht wichtig zu sein."

// ── UKHD-ND — bewusst nicht enthalten ─────────────────────────────────────────
// Keines der drei Items wird zum Initial-Termin erhoben: new_diagnosis_
// monitoring hat TIMING "a, außer i und e", new_diagnosis_discharge TIMING e,
// und new_diagnosis_text hängt per enableWhen an beiden. Die Aufnahmediagnosen
// erhebt stattdessen UKHD_D.

// ── UKHD_D — Diagnosen bei Aufnahme ───────────────────────────────────────────
* item[+]
  * linkId = "ukhd-d"
  * item[+]
    * linkId = "diagnosis_admit"
    * answer.valueString = "Anorexia nervosa, restriktiver Typ"
  * item[+]
    * linkId = "comorbid1"
    * answer.valueString = "Depression, seit 2021 medikamentös behandelt"
