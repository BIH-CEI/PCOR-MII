// ─────────────────────────────────────────────────────────────────────────────
// DEM — Beispiel-QuestionnaireResponse (+ minimaler Patient als subject)
// Ausgefülltes Beispiel zum DEM-Questionnaire (siehe DEM.fsh). Wird auf der
// Seite Demographie.md zusätzlich zur leeren Form gerendert.
// Hinweis: nur Items mit erfüllter enableWhen-Bedingung sind beantwortet.
// DEM ist kein PRO -> kein MII-PRO-Profil auf der QR.
// ─────────────────────────────────────────────────────────────────────────────

Instance: pcor-mii-exa-patient-an
InstanceOf: Patient
Usage: #example
Title: "Beispiel-Patientin AN"
Description: "Synthetische Beispiel-Patientin des Use Case AN (Anorexia nervosa, restriktiver Typ, erste Anzeichen um 2018): subject aller AN-, DEM- und MHI-Beispielantworten. Zwei Erhebungstermine: Initial-/Screening-Termin 18.06.2026 und Monitoring-Termin 30.07.2026 — siehe die beiden Bundles pcor-mii-exa-bundle-an-initial und -an-monitoring."
* language = #de-DE
* gender = #female
* birthDate = "1985-03-12"

Instance: pcor-mii-exa-patient-pss
InstanceOf: Patient
Usage: #example
Title: "Beispiel-Patient PSS"
Description: "Synthetischer Beispiel-Patient des Use Case PSS (persistierende somatische Symptome: Erschöpfung, Rücken- und Magen-Darm-Beschwerden seit etwa zwei Jahren, mittelgradige somatische Belastung, leichte depressive und ängstliche Symptomatik): subject der PSS-Beispielantworten. Ein Screening-Termin 25.06.2026 — siehe Bundle pcor-mii-exa-bundle-pss-screening."
* language = #de-DE
* gender = #male
* birthDate = "1977-09-03"


Instance: DEMResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "DEM — Beispielantwort"
Description: "Ausgefülltes Beispiel zum DEM-Questionnaire (Demographie)."
* language = #de-DE
* insert QuestionnaireRef(https://bih-cei.github.io/PCOR-MII/Questionnaire/DEM)
* status = #completed
* subject = Reference(pcor-mii-exa-patient-an)
* authored = "2026-06-16T10:00:00+02:00"

// ── Soziodemographie ──────────────────────────────────────────────────────────
* item[+]
  * linkId = "soziodemographie"
  * item[+]
    * linkId = "AGE"
    * answer.valueDate = "1985-03-12"
  * item[+]
    * linkId = "Q_ISCED"
    * answer.valueCoding = DemIscedCS#master "Master oder äquivalent (inkl. Diplom, staatl./kirchl. Prüfung)"
  * item[+]
    * linkId = "Q_SEX"
    * answer.valueCoding = DemGeschlechtCS#weiblich "Weiblich"
  * item[+]
    * linkId = "Q_GENDERID"
    * answer.valueCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "Q_OECDLIT5a"
    * answer.valueCoding = DemErwerbsstatusCS#angestellt "Angestellt"
  * item[+]
    * linkId = "Q_OECDLIT7a"
    * answer.valueCoding = DemEinkommenCS#band-mittel "Zwischen 2.300 € und 5.200 € pro Monat"
  * item[+]
    * linkId = "Q_MONMED"
    * answer.valueCoding = DemAntwortCS#nein "Nein"
  * item[+]
    * linkId = "Q_MON"
    * item[+]
      * linkId = "MONMEAL"
      * answer.valueCoding = DemHaeufigkeit5CS#selten "Selten"
    * item[+]
      * linkId = "MONRENT"
      * answer.valueCoding = DemHaeufigkeit5CS#nie "Nie"
    * item[+]
      * linkId = "MONBILLS"
      * answer.valueCoding = DemHaeufigkeit5CS#selten "Selten"
  * item[+]
    * linkId = "MEDHIMS6"
    * answer.valueCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "MEDHIMS7"
    * answer.valueCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "Q_OECDLITii"
    * answer.valueCoding = DemUrbanizitaetCS#stadt "Stadt"
  * item[+]
    * linkId = "Zipcode"
    * answer.valueString = "10117"
  * item[+]
    * linkId = "OECDLIT2a"
    * answer.valueInteger = 1
  * item[+]
    * linkId = "OECDLIT2b"
    * answer.valueInteger = 1
  * item[+]
    * linkId = "WHODIS"
    * item[+]
      * linkId = "WHODIS1"
      * answer.valueCoding = DemLeichtigkeit6CS#einfach "Einfach"
    * item[+]
      * linkId = "WHODIS2"
      * answer.valueCoding = DemLeichtigkeit6CS#weder-noch "Weder einfach noch schwierig"

// ── Weitere Angaben ───────────────────────────────────────────────────────────
* item[+]
  * linkId = "weitere"
  * item[+]
    * linkId = "GIPS04"
    * answer.valueCoding = DemBeziehungsstatusCS#feste "Feste Partnerschaft"
  * item[+]
    * linkId = "GIPS10"
    * answer.valueCoding = DemRentenstatusCS#keine "Keine Rente"
  * item[+]
    * linkId = "CPCOR_REQ"
    * answer.valueCoding = DemAntwortCS#ja "Ja"
