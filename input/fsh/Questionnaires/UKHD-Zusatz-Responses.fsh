// ─────────────────────────────────────────────────────────────────────────────
// UKHD-Zusatzitems AN — Beispielantworten (Initial-/Screening-Termin)
//
// SZENARIO: dieselbe Patientin und derselbe Erhebungstermin wie die fuenf
//   AN-Instrumente (pcor-mii-exa-patient, 18.06.2026; siehe ERQ-6-Response.fsh
//   und MHI-Response.fsh) — Anorexia nervosa restriktiver Typ seit ca. 2018,
//   in ambulanter Behandlung, niedrigster BMI 14,8.
//
// FUENF ANTWORTEN, NICHT SECHS — UND DAS IST DIE AUSSAGE: Jede Dictionary-
//   Gruppe ist ein eigenes Questionnaire, und die TIMING-Spalte des Dictionary
//   wird dadurch im RESSOURCENZUSCHNITT sichtbar statt in leeren Gruppen:
//   UKHD-ND wird zum Initial-Termin schlicht nicht gestellt (TIMING "a, ausser
//   i und e" bzw. e) — also EXISTIERT dafuer keine QuestionnaireResponse.
//   Im frueheren Sammelbogen musste dieselbe Tatsache als bewusst leere
//   Gruppe erklaert werden.
//
// ANTWORTWERTE unveraendert aus der frueheren Sammelbogen-Antwort
//   (UKHDANResponse) uebernommen; die Begruendungen der Wertwahl stehen dort
//   in der Git-Historie und auf der Seite UKHD-Zusatzitems.
//
// MII-PRO-PROFIL: Alle Items sind im Dictionary "Patient-reported" — die
//   Antworten tragen mii-pr-pro-questionnaire-response wie die AN-Instrumente.
//   Profilversion bewusst nicht gepinnt; der Questionnaire ist ueber das
//   RuleSet QuestionnaireRef versioniert referenziert.
//
// RECHTELAGE: Die Antworten enthalten keine Itemtexte, nur linkIds und Werte —
//   sie blieben auch bei einer Umstellung der Questionnaires auf metadata-only
//   unveraendert gueltig.
// ─────────────────────────────────────────────────────────────────────────────


Instance: UKHDPTResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "UKHD-PT — Beispielantwort"
Description: "Beispielantwort zum UKHD-PT-Questionnaire (Vorbehandlung): zurzeit in psychotherapeutischer Behandlung, zwei Arztbesuche in den letzten 4 Wochen."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDPT)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-06-18T10:15:00+02:00"
* item[+]
  * linkId = "bdkm15"
  * answer.valueCoding = UkhdAnPsychotherapieCS#2 "zurzeit in Behandlung"
* item[+]
  * linkId = "bdkm16"
  * answer.valueCoding = UkhdAnArztbesucheCS#3 "zweimalig"


Instance: UKHDANBResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "UKHD-ANB — Beispielantwort"
Description: "Beispielantwort zum UKHD-ANB-Questionnaire (Essstörungsanamnese): Erkrankungsdauer 8 Jahre, niedrigster BMI 14,8. Die Zahlenwerte stehen in den PCOR-MII-eigenen Hilfsitems; die Dezimalstelle bei `lowBMI-wert` belegt bewusst den `decimal`-Typ."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDANB)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-06-18T10:15:00+02:00"
// Dauer in Jahren; der Zahlenwert steht im PCOR-MII-eigenen Hilfsitem.
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


Instance: UKHDCTResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "UKHD-CT — Beispielantwort"
Description: "Beispielantwort zum UKHD-CT-Questionnaire (aktuelle Behandlung): ambulante psychotherapeutische Behandlung — konsistent mit `bdkm15` in der UKHD-PT-Antwort; die Überschneidung der beiden Items ist als Dictionary-Befund dokumentiert."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDCT)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-06-18T10:15:00+02:00"
* item[+]
  * linkId = "treatment_outpatient"
  * answer.valueCoding = UkhdAnBehandlungsstatusCS#3 "Ja, ich befinde mich zurzeit in ambulanter psychotherapeutischer Behandlung"


Instance: UKHDLEResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "UKHD-LE — Beispielantwort"
Description: "Beispielantwort zum UKHD-LE-Questionnaire (belastende Lebensereignisse) für einen Initial-/Screening-Termin: nur das Screening-Item ist beantwortet (`TIMING` i), das bejahte Item schaltet den Freitext frei. `life_event1_monitoring` und `lifev_discharge` fehlen, weil sie zu diesem Termin nicht erhoben werden. Der Freitext bleibt konsistent mit den zwei bejahten ACE-Items derselben Patientin."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDLE)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-06-18T10:15:00+02:00"
// Nur das Screening-Item (TIMING i); Monitoring und Entlassung fehlen.
* item[+]
  * linkId = "life_event1_screening"
  * answer.valueCoding = DemAntwortCS#ja "Ja"
* item[+]
  * linkId = "lifev_text"
  * answer.valueString = "Wiederholte Abwertungen durch einen Elternteil in Kindheit und Jugend; über Jahre das Gefühl, in der Familie nicht wichtig zu sein."


Instance: UKHDDResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "UKHD-D — Beispielantwort"
Description: "Beispielantwort zum UKHD-D-Questionnaire (Diagnosen bei Aufnahme). `comorbid1` enthält Diagnosetext und kein „ja“, obwohl die Frage wörtlich eine Ja/Nein-Frage ist — das Dictionary sieht ein Textfeld vor; siehe die designNote am Item."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDD)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-06-18T10:15:00+02:00"
* item[+]
  * linkId = "diagnosis_admit"
  * answer.valueString = "Anorexia nervosa, restriktiver Typ"
* item[+]
  * linkId = "comorbid1"
  * answer.valueString = "Depression, seit 2021 medikamentös behandelt"

