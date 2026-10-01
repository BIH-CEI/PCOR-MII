// ─────────────────────────────────────────────────────────────────────────────
// AN — Beispielantworten des MONITORING-Termins (30.07.2026)
//
// SZENARIO: dieselbe Patientin wie der Initial-Termin (pcor-mii-exa-patient-an,
//   18.06.2026), sechs Wochen spaeter unter laufender ambulanter Behandlung.
//   Der Verlauf ist LEICHT GEBESSERT, nicht remittiert — die Werte bewegen
//   sich um ein bis zwei Stufen, nie ueber Nacht: Unterdrueckung sinkt leicht,
//   Neubewertung steigt leicht (ERQ-6); Essstoerungspathologie geht etwas
//   zurueck (EDE-Q6); die Veraenderungsmotivation nimmt zu (ANSOCQ-2 — genau
//   dafuer ist die Kurzform das Monitoring-Instrument des Erhebungsplans).
//
// WELCHE BOEGEN HIER FEHLEN, SAGT TIMING: ACE, UKHD-PT (bdkm15), UKHD-ANB und
//   UKHD-D sind Initial-Items und werden nicht wiederholt. NEU ist dafuer die
//   erste UKHD-ND-Antwort ueberhaupt — die Gruppe wird NUR zwischen Aufnahme
//   und Entlassung erhoben; zum Initial-Termin existiert bewusst keine.
//   bdkm16 (Arztbesuche, "at") steht als EINZELNES Item in der PT-Antwort —
//   eine Teilantwort ist hier die korrekte Form, nicht ein leeres bdkm15.
//
// UKHD-EDP (metadata-only) ist ebenfalls beantwortet ("at"): Die Antwort
//   enthaelt nur linkIds und Stufenwerte — der Beleg, dass metadata-only
//   die Nachnutzung von Antworten nicht behindert.
// ─────────────────────────────────────────────────────────────────────────────


Instance: ERQ6MonitoringResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "ERQ-6 — Beispielantwort (Monitoring)"
Description: "Monitoring-Antwort sechs Wochen nach dem Initial-Termin: Unterdrückung leicht rückläufig (6/6/7 → 5/5/6), Neubewertung leicht steigend. Werte je Item um höchstens eine Stufe verändert — plausibler Sechs-Wochen-Verlauf, keine Remission."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/ERQ6)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-07-30T09:00:00+02:00"
* item[+]
  * linkId = "erq1"
  * answer.valueInteger = 5
* item[+]
  * linkId = "erq2"
  * answer.valueInteger = 5
* item[+]
  * linkId = "erq3"
  * answer.valueInteger = 4
* item[+]
  * linkId = "erq6"
  * answer.valueInteger = 5
* item[+]
  * linkId = "erq8"
  * answer.valueInteger = 4
* item[+]
  * linkId = "erq9"
  * answer.valueInteger = 6

Instance: EDEQ6MonitoringResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "EDE-Q6 — Beispielantwort (Monitoring)"
Description: "Monitoring-Antwort: Essstörungspathologie leicht rückläufig (Tage-Items von Stufe 3–4 auf 3, Essanfälle von 4 auf 3, `edeq30` von 3 auf 2); `edeq29` weiter bejaht, die `enableWhen`-Kette bleibt belegt."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/EDEQ6)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-07-30T09:15:00+02:00"
* item[+]
  * linkId = "edeq1"
  * answer.valueCoding = EdeQ6TageCS#3 "13-15 days"
* item[+]
  * linkId = "edeq7"
  * answer.valueCoding = EdeQ6TageCS#3 "13-15 days"
* item[+]
  * linkId = "edeq12"
  * answer.valueCoding = EdeQ6TageCS#3 "13-15 days"
* item[+]
  * linkId = "edeq27"
  * answer.valueInteger = 3
* item[+]
  * linkId = "edeq29"
  * answer.valueCoding = DemAntwortCS#ja "Ja"
* item[+]
  * linkId = "edeq30"
  * answer.valueInteger = 2

Instance: ANSOCQ2MonitoringResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "ANSOCQ-2 — Beispielantwort (Monitoring)"
Description: "Monitoring-Antwort: Veränderungsmotivation von Entscheidungs- in die Handlungsphase (`ansocq3` 3 → 4). Genau dafür ist der Zwei-Item-Zuschnitt laut Erhebungsplan das Monitoring-Instrument."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/ANSOCQ2)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-07-30T09:30:00+02:00"
* item[+]
  * linkId = "ansocq3"
  * answer.valueCoding = AnsocqKoerperteileCS#4 "I am presently trying to gain weight on these body parts."
* item[+]
  * linkId = "ansocq14"
  * answer.valueCoding = AnsocqGedankenCS#4 "I am using strategies to help me reduce the amount of time I spend thinking about food and my weight."

Instance: SSUK2MonitoringResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "SSUK-2 — Beispielantwort (Monitoring)"
Description: "Monitoring-Antwort: soziale Unterstützung unverändert (oft unterstützt, selten belastende Interaktion) — auch ein unveränderter Wert ist ein Verlaufsbefund."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/SSUK2)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-07-30T09:45:00+02:00"
* item[+]
  * linkId = "ssuk-stamm"
  * item[+]
    * linkId = "ssuk14"
    * answer.valueCoding = SsukAntwortCS#3 "oft"
  * item[+]
    * linkId = "ssuk10"
    * answer.valueCoding = SsukAntwortCS#1 "selten"

Instance: UKHDPTMonitoringResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "UKHD-PT — Beispielantwort (Monitoring)"
Description: "Monitoring-Teilantwort: nur `bdkm16` (Arztbesuche, `TIMING` at) — `bdkm15` ist ein Initial-Item und fehlt bewusst. Drei oder mehr Kontakte passen zur laufenden ambulanten Behandlung."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDPT)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-07-30T10:00:00+02:00"
// Teilantwort: bdkm15 ist ein Initial-Item (TIMING i) und wird nicht wiederholt.
* item[+]
  * linkId = "bdkm16"
  * answer.valueCoding = UkhdAnArztbesucheCS#4 "drei oder mehrfach"

Instance: UKHDCTMonitoringResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "UKHD-CT — Beispielantwort (Monitoring)"
Description: "Monitoring-Antwort: weiterhin ambulante psychotherapeutische Behandlung."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDCT)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-07-30T10:05:00+02:00"
* item[+]
  * linkId = "treatment_outpatient"
  * answer.valueCoding = UkhdAnBehandlungsstatusCS#3 "Ja, ich befinde mich zurzeit in ambulanter psychotherapeutischer Behandlung"

Instance: UKHDLEMonitoringResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "UKHD-LE — Beispielantwort (Monitoring)"
Description: "Monitoring-Antwort: keine neuen belastenden Lebensereignisse seit der letzten Befragung — das verneinte Item lässt `lifev_text` per `enableWhen` gesperrt; die Antwort belegt damit die Gegenrichtung zur Initial-Antwort."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDLE)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-07-30T10:10:00+02:00"
// Nur das Monitoring-Item (TIMING "a, außer Aufnahme und Entlassung"). Es ist
// verneint — lifev_text bleibt deshalb per enableWhen gesperrt und fehlt.
* item[+]
  * linkId = "life_event1_monitoring"
  * answer.valueCoding = DemAntwortCS#nein "Nein"

Instance: UKHDNDMonitoringResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "UKHD-ND — Beispielantwort (Monitoring)"
Description: "Die **erste UKHD-ND-Antwort überhaupt** — die Gruppe wird nur zwischen Aufnahme und Entlassung erhoben, zum Initial-Termin existiert bewusst keine Antwort. Das bejahte Monitoring-Item schaltet den Freitext frei; `new_diagnosis_discharge` fehlt (`TIMING` e)."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDND)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-07-30T10:15:00+02:00"
* item[+]
  * linkId = "new_diagnosis_monitoring"
  * answer.valueCoding = DemAntwortCS#ja "Ja"
* item[+]
  * linkId = "new_diagnosis_text"
  * answer.valueString = "Eisenmangelanämie, festgestellt bei der Laborkontrolle im Juli 2026"

Instance: UKHDEDPMonitoringResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "UKHD-EDP — Beispielantwort (Monitoring)"
Description: "Erste Beispielantwort zum metadata-only-Bogen UKHD-EDP: elf Stufenwerte (1–6) ohne jeden Itemtext. **Der Beleg, dass metadata-only die Nachnutzung von Antworten nicht behindert** — `linkId`s und Werte genügen, der zurückgehaltene Wortlaut wird nicht exponiert."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDEDP)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-07-30T10:30:00+02:00"
// Stufenwerte 1-6; die Itemtexte sind metadata-only zurueckgehalten —
// die Antwort braucht sie nicht.
* item[+]
  * linkId = "edp1"
  * answer.valueCoding = UkhdEdpStufe6CS#4
* item[+]
  * linkId = "edp2"
  * answer.valueCoding = UkhdEdpStufe6CS#2
* item[+]
  * linkId = "edp3"
  * answer.valueCoding = UkhdEdpStufe6CS#4
* item[+]
  * linkId = "edp4"
  * answer.valueCoding = UkhdEdpStufe6CS#3
* item[+]
  * linkId = "edp5"
  * answer.valueCoding = UkhdEdpStufe6CS#5
* item[+]
  * linkId = "edp6"
  * answer.valueCoding = UkhdEdpStufe6CS#3
* item[+]
  * linkId = "edp7"
  * answer.valueCoding = UkhdEdpStufe6CS#4
* item[+]
  * linkId = "edp8"
  * answer.valueCoding = UkhdEdpStufe6CS#3
* item[+]
  * linkId = "edp9"
  * answer.valueCoding = UkhdEdpStufe6CS#4
* item[+]
  * linkId = "edp10"
  * answer.valueCoding = UkhdEdpStufe6CS#2
* item[+]
  * linkId = "edp11"
  * answer.valueCoding = UkhdEdpStufe6CS#3
