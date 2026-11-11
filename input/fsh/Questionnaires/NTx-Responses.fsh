// ─────────────────────────────────────────────────────────────────────────────
// NTx — Beispielpatient und Beispielantworten (Erstbefragung 06.10.2026)
//
// Ein synthetischer Empfänger einer Nierentransplantation (Lebendspende
// 14.11.2024, erste Spenderniere, vorher Hämodialyse in der Praxis) mit einem
// Erhebungstermin, an dem Screening (MHI-NTx) und das erste quartalsweise
// Monitoring (NTx-Verlaufsbefragung, BAASIS, ABQ, MTSOSD-R59) zusammenfallen.
// Bundle: pcor-mii-exa-bundle-ntx-erstbefragung (scripts/build-example-bundles.py).
//
// Die Antworten zu BAASIS, ABQ und MTSOSD-R59 belegen das metadata-only-Muster
// (ADR-012/ADR-014): nur linkIds und Codes, kein Wortlaut. Nur Items mit
// erfüllter enableWhen-Bedingung sind beantwortet (Belastung nur bei Auftreten
// ungleich Stufe 0; keine Freitext-Symptome 60–62).
// MHI-NTx und Verlaufsbefragung sind keine PROs -> ISiKFormularDaten wie der MHI.
// ─────────────────────────────────────────────────────────────────────────────

Instance: pcor-mii-exa-patient-ntx
InstanceOf: Patient
Usage: #example
Title: "Beispiel-Patient NTx"
Description: "Synthetischer Beispiel-Patient des Use Case NTx (Empfänger; Lebendspende am 14.11.2024, erste Spenderniere, vor Transplantation Hämodialyse in der Dialysepraxis; unter Immunsuppression mit Tremor und Durchfall als belastendsten Nebenwirkungen, gelegentlich vergessene Einnahmen): subject der NTx-Beispielantworten. Ein Erhebungstermin 06.10.2026 — siehe Bundle pcor-mii-exa-bundle-ntx-erstbefragung."
* language = #de-DE
* gender = #male
* birthDate = "1968-05-21"

Instance: MHINTXResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "MHI-NTx — Beispielantwort"
Description: "Beispielantwort zur Transplantationsanamnese für den NTx-Termin: Lebendspende, Transplantation am 14.11.2024, erste Spenderniere."
* language = #de-DE
* meta.profile = $isik-formulardaten
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/MHINTX)
* questionnaire.extension[+].url = $display
* questionnaire.extension[=].valueString = "MHI-NTx — Transplantationsanamnese"
* status = #completed
* subject = Reference(pcor-mii-exa-patient-ntx)
* authored = "2026-10-06T09:30:00+02:00"
* item[+]
  * linkId = "transplantation"
  * item[+]
    * linkId = "MHH_DON"
    * answer.valueCoding = MhiNtxSpendeartCS#1 "Lebendspende"
  * item[+]
    * linkId = "MHH_TX_DATE"
    * answer.valueDate = "2024-11-14"
  * item[+]
    * linkId = "MHH_PRIOR_TX"
    * answer.valueCoding = MhiNtxSpendernierenCS#1 "eine"

Instance: NTXVERLAUFResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "NTx-Verlaufsbefragung — Beispielantwort"
Description: "Beispielantwort zur quartalsweisen Verlaufsbefragung (MHH) für den NTx-Termin: Hämodialyse in der Dialysepraxis vor Transplantation, kein Post-Transplantations-Diabetes, keine Tumoren, ein Harnwegsinfekt und eine sonstige Infektion im Quartal, Blutdruck 132/84 mmHg, Medikationsänderung ja, Nebenschilddrüse unauffällig. Ja/Nein als SNOMED CT (ADR-013)."
* language = #de-DE
* meta.profile = $isik-formulardaten
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/NTXVERLAUF)
* questionnaire.extension[+].url = $display
* questionnaire.extension[=].valueString = "NTx-Verlaufsbefragung (MHH)"
* status = #completed
* subject = Reference(pcor-mii-exa-patient-ntx)
* authored = "2026-10-06T09:40:00+02:00"
* item[+]
  * linkId = "dialyse"
  * item[+]
    * linkId = "MHH_DIAL1"
    * answer.valueCoding = $SCT#373066001 "Yes"
  * item[+]
    * linkId = "MHH_DIAL2"
    * answer.valueCoding = MhhNierenersatzCS#3 "Hämodialyse in der Dialysepraxis"
* item[+]
  * linkId = "diabetes"
  * item[+]
    * linkId = "MHH_PTX_DIAB"
    * answer.valueCoding = $SCT#373067005 "No"
* item[+]
  * linkId = "tumoren"
  * item[+]
    * linkId = "MHH_T01"
    * answer.valueCoding = $SCT#373067005 "No"
  * item[+]
    * linkId = "MHH_T02"
    * answer.valueCoding = $SCT#373067005 "No"
  * item[+]
    * linkId = "MHH_T03"
    * answer.valueCoding = $SCT#373067005 "No"
* item[+]
  * linkId = "harnwegsinfekte"
  * item[+]
    * linkId = "MHH_UTI01"
    * answer.valueCoding = $SCT#373066001 "Yes"
  * item[+]
    * linkId = "MHH_UTI02"
    * answer.valueCoding = $SCT#373067005 "No"
  * item[+]
    * linkId = "MHH_UTI03"
    * answer.valueCoding = $SCT#373067005 "No"
  * item[+]
    * linkId = "MHH_UTI04"
    * answer.valueCoding = $SCT#373067005 "No"
* item[+]
  * linkId = "infektionen"
  * item[+]
    * linkId = "MHH_Infekt1"
    * answer.valueCoding = $SCT#373066001 "Yes"
  * item[+]
    * linkId = "MHH_Infekt2"
    * answer.valueCoding = $SCT#373067005 "No"
  * item[+]
    * linkId = "MHH_Infekt3"
    * answer.valueCoding = $SCT#373067005 "No"
* item[+]
  * linkId = "MHH_BP"
  * item[+]
    * linkId = "MHH_BP-systolisch"
    * answer.valueInteger = 132
  * item[+]
    * linkId = "MHH_BP-diastolisch"
    * answer.valueInteger = 84
* item[+]
  * linkId = "medikation"
  * item[+]
    * linkId = "MHH_Medi"
    * answer.valueCoding = $SCT#373066001 "Yes"
* item[+]
  * linkId = "nebenschilddruese"
  * item[+]
    * linkId = "MHH_PTH1"
    * answer.valueCoding = $SCT#373067005 "No"
  * item[+]
    * linkId = "MHH_PTH2"
    * answer.valueCoding = $SCT#373067005 "No"

Instance: BAASISResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "BAASIS — Beispielantwort"
Description: "Beispielantwort zum BAASIS (metadata-only) für den NTx-Termin: Implementierungsproblem — in den letzten vier Wochen Einnahmen vergessen (1A ja, Häufigkeit Stufe 2) und daraus aufeinanderfolgende Dosen ausgelassen (1B ja, Stufe 1); kein Einnahmezeitpunkt-Problem (2), keine Dosisänderung (3), kein Absetzen (4); neu verordnete Medikation ja und begonnen (5, 5_a). Ja/Nein als SNOMED CT (ADR-013). **Belegt das metadata-only-Muster:** nur `linkId`s und Codes, kein Wortlaut; nur Items mit erfüllter `enableWhen`-Bedingung sind beantwortet."
* meta.profile = $mii-pro-questionnaire-response
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/BAASIS)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-ntx)
* authored = "2026-10-06T09:50:00+02:00"
* item[+]
  * linkId = "BAASIS1A"
  * answer.valueCoding = $SCT#373066001 "Yes"
* item[+]
  * linkId = "BAASIS1A_a"
  * answer.valueCoding = BaasisHaeufigkeit5CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "BAASIS1B"
  * answer.valueCoding = $SCT#373066001 "Yes"
* item[+]
  * linkId = "BAASIS1B_a"
  * answer.valueCoding = BaasisHaeufigkeit5CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "BAASIS2"
  * answer.valueCoding = $SCT#373067005 "No"
* item[+]
  * linkId = "BAASIS3"
  * answer.valueCoding = $SCT#373067005 "No"
* item[+]
  * linkId = "BAASIS4"
  * answer.valueCoding = $SCT#373067005 "No"
* item[+]
  * linkId = "BAASIS5"
  * answer.valueCoding = $SCT#373066001 "Yes"
* item[+]
  * linkId = "BAASIS5_a"
  * answer.valueCoding = $SCT#373066001 "Yes"

Instance: ABQResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "ABQ — Beispielantwort"
Description: "Beispielantwort zum ABQ (metadata-only) für den NTx-Termin, ausgelöst durch das Implementierungsproblem im BAASIS: überwiegend niedrige Barrieren, drei Items auf Stufe 3; Summe 26 (Bereich 16–64) im berechneten Item `abq-summe`. **Belegt das metadata-only-Muster:** nur `linkId`s und Codes, kein Wortlaut."
* meta.profile = $mii-pro-questionnaire-response
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/ABQ)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-ntx)
* authored = "2026-10-06T10:00:00+02:00"
* item[+]
  * linkId = "ABQ_01"
  * answer.valueCoding = AbqSkala4CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "ABQ_02"
  * answer.valueCoding = AbqSkala4CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "ABQ_03"
  * answer.valueCoding = AbqSkala4CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "ABQ_04"
  * answer.valueCoding = AbqSkala4CS#stufe-3 "Stufe 3"
* item[+]
  * linkId = "ABQ_05"
  * answer.valueCoding = AbqSkala4CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "ABQ_06"
  * answer.valueCoding = AbqSkala4CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "ABQ_07"
  * answer.valueCoding = AbqSkala4CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "ABQ_08"
  * answer.valueCoding = AbqSkala4CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "ABQ_09"
  * answer.valueCoding = AbqSkala4CS#stufe-3 "Stufe 3"
* item[+]
  * linkId = "ABQ_10"
  * answer.valueCoding = AbqSkala4CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "ABQ_11"
  * answer.valueCoding = AbqSkala4CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "ABQ_12"
  * answer.valueCoding = AbqSkala4CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "ABQ_13"
  * answer.valueCoding = AbqSkala4CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "ABQ_14"
  * answer.valueCoding = AbqSkala4CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "ABQ_15"
  * answer.valueCoding = AbqSkala4CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "ABQ_16"
  * answer.valueCoding = AbqSkala4CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "abq-summe"
  * answer.valueDecimal = 26

Instance: MTSOSDR59Response
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "MTSOSD-R59 — Beispielantwort"
Description: "Beispielantwort zum MTSOSD-R59 (metadata-only) für den NTx-Termin: 11 der 59 Symptome aufgetreten, darunter Tremor (Nr. 16, Auftreten Stufe 3, Belastung Stufe 3) und Durchfall (Nr. 30, Stufe 2/2) als die beiden Monitoring-Domänen des Erhebungsplans; Symptom 27 in der männlichen Variante; keine Freitext-Symptome. Belastungsitems nur dort, wo das Auftreten ungleich Stufe 0 ist (`enableWhen`). Kein Score: die Auswertung ist kohortenrelativ (Ridit), siehe [NTx-Instrumente](NTx-Instrumente.html). **Belegt das metadata-only-Muster:** nur `linkId`s und Codes, kein Wortlaut."
* meta.profile = $mii-pro-questionnaire-response
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/MTSOSDR59)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-ntx)
* authored = "2026-10-06T10:15:00+02:00"
* item[+]
  * linkId = "MTSOSDR59_01"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_02"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "MTSOSDR59_02a"
  * answer.valueCoding = MtsosdR59Belastung5CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "MTSOSDR59_03"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_04"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_05"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "MTSOSDR59_05a"
  * answer.valueCoding = MtsosdR59Belastung5CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "MTSOSDR59_06"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_07"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_08"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_09"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_10"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_11"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_12"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "MTSOSDR59_12a"
  * answer.valueCoding = MtsosdR59Belastung5CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "MTSOSDR59_13"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_14"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_15"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_16"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-3 "Stufe 3"
* item[+]
  * linkId = "MTSOSDR59_16a"
  * answer.valueCoding = MtsosdR59Belastung5CS#stufe-3 "Stufe 3"
* item[+]
  * linkId = "MTSOSDR59_17"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_18"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_19"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_20"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_21"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "MTSOSDR59_21a"
  * answer.valueCoding = MtsosdR59Belastung5CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "MTSOSDR59_22"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_23"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_24"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_25"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_26"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_27_male"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_28"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_29"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_30"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "MTSOSDR59_30a"
  * answer.valueCoding = MtsosdR59Belastung5CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "MTSOSDR59_31"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_32"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_33"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_34"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "MTSOSDR59_34a"
  * answer.valueCoding = MtsosdR59Belastung5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_35"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_36"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_37"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_38"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_39"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_40"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_41"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "MTSOSDR59_41a"
  * answer.valueCoding = MtsosdR59Belastung5CS#stufe-3 "Stufe 3"
* item[+]
  * linkId = "MTSOSDR59_42"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_43"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_44"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_45"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "MTSOSDR59_45a"
  * answer.valueCoding = MtsosdR59Belastung5CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "MTSOSDR59_46"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_47"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_48"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_49"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_50"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_51"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_52"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-1 "Stufe 1"
* item[+]
  * linkId = "MTSOSDR59_52a"
  * answer.valueCoding = MtsosdR59Belastung5CS#stufe-2 "Stufe 2"
* item[+]
  * linkId = "MTSOSDR59_53"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_54"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_55"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_56"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_57"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-3 "Stufe 3"
* item[+]
  * linkId = "MTSOSDR59_57a"
  * answer.valueCoding = MtsosdR59Belastung5CS#stufe-4 "Stufe 4"
* item[+]
  * linkId = "MTSOSDR59_58"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
* item[+]
  * linkId = "MTSOSDR59_59"
  * answer.valueCoding = MtsosdR59Auftreten5CS#stufe-0 "Stufe 0"
