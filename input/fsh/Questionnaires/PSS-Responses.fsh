// ─────────────────────────────────────────────────────────────────────────────
// PSS — Beispielantworten der PCOR-MII-eigenen Boegen (Screening-Termin)
//
// SZENARIO: pcor-mii-exa-patient-pss — 48-jaehriger Patient, persistierende
//   somatische Symptome seit etwa zwei Jahren (Erschoepfung, Ruecken- und
//   Magen-Darm-Beschwerden), mittelgradige somatische Belastung (PHQ-15 = 12,
//   SSD-12 = 22), leichte depressive (PHQ-8 = 9) und aengstliche (GAD-7 = 7)
//   Symptomatik, maessig reduzierte Arbeitsfaehigkeit. Screening-Termin
//   25.06.2026; die Upstream-Antworten (PHQ, GAD-7, WHODAS, ...) liegen als
//   JSON unter input/examples/ und gehoeren zum selben Termin.
//
// DIE WERTE SIND AUFEINANDER ABGESTIMMT, nicht gewuerfelt: hohe psychische
//   Belastungsattribution im IPQ-S passt zu SSD-12; der WAI-Wert (6/10,
//   Stufe 3/4) passt zur maessig reduzierten Arbeitsfaehigkeit; GSLTPAQ zeigt
//   reduzierte, aber vorhandene Aktivitaet.
//
// WAI IST METADATA-ONLY — UND DIESE ANTWORT IST DER BELEG, DASS DAS TRAEGT:
//   Sie enthaelt ausschliesslich linkIds und Werte, keinen Itemtext. Eine
//   Antwort exponiert den zurueckgehaltenen Wortlaut nicht und bliebe bei
//   jeder Rechteentscheidung unveraendert gueltig.
//
// SCORE-ITEMS: opd-sfk-globalwert und gsltpaq-score sind die im Questionnaire
//   definierten berechneten Items; die Werte hier sind konsistent mit den
//   Einzelantworten (OPD-SFK: Mittelwert 12 Items; GSLTPAQ: 9x3+5x2+2x1=39... 
//   siehe jeweilige Instanz).
// ─────────────────────────────────────────────────────────────────────────────


Instance: OPDSFKResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "OPD-SFK — Beispielantwort"
Description: "Beispielantwort zum OPD-Strukturfragebogen (Kurzform) für den PSS-Screening-Termin: mäßig eingeschränktes Strukturniveau, Globalwert als Mittelwert der zwölf Items."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/OPDSFK)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-pss)
* authored = "2026-06-25T11:30:00+02:00"
* item[+]
  * linkId = "OPDSFK01"
  * answer.valueCoding = OpdSfkAntwortCS#teils-teils "Teils/teils"
* item[+]
  * linkId = "OPDSFK02"
  * answer.valueCoding = OpdSfkAntwortCS#trifft-eher-zu "Trifft eher zu"
* item[+]
  * linkId = "OPDSFK03"
  * answer.valueCoding = OpdSfkAntwortCS#teils-teils "Teils/teils"
* item[+]
  * linkId = "OPDSFK04"
  * answer.valueCoding = OpdSfkAntwortCS#trifft-eher-nicht-zu "Trifft eher nicht zu"
* item[+]
  * linkId = "OPDSFK05"
  * answer.valueCoding = OpdSfkAntwortCS#trifft-eher-zu "Trifft eher zu"
* item[+]
  * linkId = "OPDSFK06"
  * answer.valueCoding = OpdSfkAntwortCS#teils-teils "Teils/teils"
* item[+]
  * linkId = "OPDSFK07"
  * answer.valueCoding = OpdSfkAntwortCS#teils-teils "Teils/teils"
* item[+]
  * linkId = "OPDSFK08"
  * answer.valueCoding = OpdSfkAntwortCS#trifft-eher-zu "Trifft eher zu"
* item[+]
  * linkId = "OPDSFK09"
  * answer.valueCoding = OpdSfkAntwortCS#trifft-eher-nicht-zu "Trifft eher nicht zu"
* item[+]
  * linkId = "OPDSFK10"
  * answer.valueCoding = OpdSfkAntwortCS#teils-teils "Teils/teils"
* item[+]
  * linkId = "OPDSFK11"
  * answer.valueCoding = OpdSfkAntwortCS#teils-teils "Teils/teils"
* item[+]
  * linkId = "OPDSFK12"
  * answer.valueCoding = OpdSfkAntwortCS#trifft-eher-zu "Trifft eher zu"
// Globalwert = Mittelwert der 12 Items = 3.17
* item[+]
  * linkId = "opd-sfk-globalwert"
  * answer.valueDecimal = 3.17

Instance: GSLTPAQResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "GSLTPAQ — Beispielantwort"
Description: "Beispielantwort zum GSLTPAQ für den PSS-Screening-Termin: reduzierte, aber vorhandene körperliche Aktivität (1× anstrengend, 3× moderat, 4× leicht pro Woche; Leisure Score Index 36). Beantwortet sind die Wochen-Items; die Minuten-Items bleiben leer."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/GSLTPAQ)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-pss)
* authored = "2026-06-25T11:40:00+02:00"
* item[+]
  * linkId = "GSLTPAQ_01_w"
  * answer.valueInteger = 1
* item[+]
  * linkId = "GSLTPAQ_02_w"
  * answer.valueInteger = 3
* item[+]
  * linkId = "GSLTPAQ_03_w"
  * answer.valueInteger = 4
// Score = 9×1 + 5×3 + 3×4 = 36 (Leisure Score Index)
* item[+]
  * linkId = "gsltpaq-score"
  * answer.valueInteger = 36

Instance: EXPECTResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "EXPECT — Beispielantwort"
Description: "Beispielantwort zu den drei EXPECT-NRS-Items für den PSS-Screening-Termin: verhalten positive Verlaufserwartung."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/EXPECT)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-pss)
* authored = "2026-06-25T11:50:00+02:00"
* item[+]
  * linkId = "EXPECT_01"
  * answer.valueInteger = 5
* item[+]
  * linkId = "EXPECT_02"
  * answer.valueInteger = 6
* item[+]
  * linkId = "EXPECT_03"
  * answer.valueInteger = 4

Instance: IPQSResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "IPQ-S — Beispielantwort"
Description: "Beispielantwort zur offenen Ursachenfrage (IPQ-S) für den PSS-Screening-Termin: Stressattribution plus somatische Verdachtsursache plus Sorge — das für PSS typische gemischte Attributionsmuster."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/IPQS)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-pss)
* authored = "2026-06-25T12:00:00+02:00"
* item[+]
  * linkId = "IPQ_S1"
  * answer.valueString = "Dauerstress auf der Arbeit in den letzten Jahren; dazu vielleicht die Bandscheiben. Ich grüble viel darüber, ob etwas Ernstes übersehen wurde."

Instance: WAIResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "WAI — Beispielantwort"
Description: "Beispielantwort zum WAI-Kurzbogen (metadata-only) für den PSS-Screening-Termin: mäßig reduzierte Arbeitsfähigkeit. **Die Antwort belegt das metadata-only-Muster:** Sie enthält nur `linkId`s und Werte — der zurückgehaltene Originalwortlaut wird durch Antworten nicht exponiert."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/WAI)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-pss)
* authored = "2026-06-25T12:10:00+02:00"
* item[+]
  * linkId = "wai"
  * item[+]
    * linkId = "WAI01"
    * answer.valueInteger = 6
  * item[+]
    * linkId = "WAI02a"
    * answer.valueCoding = WaiSkala5CS#stufe-4 "Stufe 4"
  * item[+]
    * linkId = "WAI02b"
    * answer.valueCoding = WaiSkala5CS#stufe-3 "Stufe 3"
