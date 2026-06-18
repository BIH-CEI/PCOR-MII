CodeSystem: MhiCpcorDiagCS
Id: mhi-cpcor-diag
Title: "MHI Diagnosegruppe (CPCOR) (Codes)"
Description: "Diagnosegruppe zur Selbstzuordnung (CPCOR-DIAG)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "Essstörung"
* #2 "Nierenerkrankung"
* #3 "Nierenspender"
* #4 "Anhaltende körperliche Beschwerden"

ValueSet: MhiCpcorDiagVS
Id: mhi-cpcor-diag-vs
Title: "MHI Diagnosegruppe (CPCOR)"
Description: "Diagnosegruppe zur Selbstzuordnung (CPCOR-DIAG)."
* ^status = #draft
* ^experimental = true
* include codes from system MhiCpcorDiagCS
* ^expansion.timestamp = "2026-06-17T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-cpcor-diag|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-cpcor-diag"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Essstörung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-cpcor-diag"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Nierenerkrankung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-cpcor-diag"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Nierenspender"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-cpcor-diag"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Anhaltende körperliche Beschwerden"

CodeSystem: MhiChronischCS
Id: mhi-chronisch
Title: "MHI Chronische Erkrankungen (GIPS13) (Codes)"
Description: "Liste chronischer Erkrankungen (GIPS13, Mehrfachauswahl)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #0 "keine chronische Erkrankung"
* #1 "Herzerkrankung (z.B. Herzinfarkt)"
* #2 "Bluthochdruck"
* #3 "Beinschmerz bei Laufen"
* #4 "Lungenerkrankung (z.B. Asthma)"
* #5 "Diabetes"
* #6 "Nierenerkrankung"
* #7 "Lebererkrankung"
* #8 "Bluterkrankungen (z.B. Anämie)"
* #9 "Schlaganfall"
* #10 "Nervenerkrankung (z.B. Parkinson)"
* #11 "Krebs (in den letzten 5 Jahren)"
* #12 "Arthritis (z.B. Rheuma)"
* #13 "Arthrose (z.B. Gelenkabnutzung)"
* #14 "Magen-Darm-Erkrankungen"
* #15 "Hauterkrankungen"
* #16 "Rückenschmerzen"
* #17 "Chronische Schmerzerkrankung"
* #18 "Depression"
* #19 "Angststörung"
* #20 "Suchterkrankung"
* #21 "Somatoforme Störung (unerklärte körperliche Beschwerden)"
* #22 "Persönlichkeitsstörung"
* #23 "Schizophrenie"
* #24 "sonstige"

ValueSet: MhiChronischVS
Id: mhi-chronisch-vs
Title: "MHI Chronische Erkrankungen (GIPS13)"
Description: "Liste chronischer Erkrankungen (GIPS13, Mehrfachauswahl)."
* ^status = #draft
* ^experimental = true
* include codes from system MhiChronischCS
* ^expansion.timestamp = "2026-06-17T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "keine chronische Erkrankung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Herzerkrankung (z.B. Herzinfarkt)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Bluthochdruck"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Beinschmerz bei Laufen"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Lungenerkrankung (z.B. Asthma)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Diabetes"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "Nierenerkrankung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #7
* ^expansion.contains[=].display = "Lebererkrankung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "Bluterkrankungen (z.B. Anämie)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "Schlaganfall"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #10
* ^expansion.contains[=].display = "Nervenerkrankung (z.B. Parkinson)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #11
* ^expansion.contains[=].display = "Krebs (in den letzten 5 Jahren)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #12
* ^expansion.contains[=].display = "Arthritis (z.B. Rheuma)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #13
* ^expansion.contains[=].display = "Arthrose (z.B. Gelenkabnutzung)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #14
* ^expansion.contains[=].display = "Magen-Darm-Erkrankungen"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #15
* ^expansion.contains[=].display = "Hauterkrankungen"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #16
* ^expansion.contains[=].display = "Rückenschmerzen"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #17
* ^expansion.contains[=].display = "Chronische Schmerzerkrankung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #18
* ^expansion.contains[=].display = "Depression"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #19
* ^expansion.contains[=].display = "Angststörung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #20
* ^expansion.contains[=].display = "Suchterkrankung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #21
* ^expansion.contains[=].display = "Somatoforme Störung (unerklärte körperliche Beschwerden)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #22
* ^expansion.contains[=].display = "Persönlichkeitsstörung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #23
* ^expansion.contains[=].display = "Schizophrenie"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-chronisch"
* ^expansion.contains[=].code = #24
* ^expansion.contains[=].display = "sonstige"

CodeSystem: MhiEinnahmezeitCS
Id: mhi-einnahmezeit
Title: "MHI Einnahmezeitpunkt Medikament (Codes)"
Description: "Tageszeit der Medikamenteneinnahme (medi_02_time)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #0 "morgens"
* #1 "mittags"
* #2 "abends"
* #3 "nachts"
* #4 "bei Bedarf"

ValueSet: MhiEinnahmezeitVS
Id: mhi-einnahmezeit-vs
Title: "MHI Einnahmezeitpunkt Medikament"
Description: "Tageszeit der Medikamenteneinnahme (medi_02_time)."
* ^status = #draft
* ^experimental = true
* include codes from system MhiEinnahmezeitCS
* ^expansion.timestamp = "2026-06-17T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-einnahmezeit|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-einnahmezeit"
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "morgens"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-einnahmezeit"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "mittags"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-einnahmezeit"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "abends"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-einnahmezeit"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "nachts"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-einnahmezeit"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "bei Bedarf"

CodeSystem: MhiGewichtsmethodeCS
Id: mhi-gewichtsmethode
Title: "MHI Gewichtsmessung Methode (Codes)"
Description: "Wie wurde das Gewicht ermittelt? (weight_outpatient_2)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "Hausarzt"
* #2 "Apotheke"
* #3 "zuhause mit einer anderen Person"
* #4 "zuhause alleine"
* #5 "anders"
* #6 "ich möchte keine Angabe dazu machen"

ValueSet: MhiGewichtsmethodeVS
Id: mhi-gewichtsmethode-vs
Title: "MHI Gewichtsmessung Methode"
Description: "Wie wurde das Gewicht ermittelt? (weight_outpatient_2)."
* ^status = #draft
* ^experimental = true
* include codes from system MhiGewichtsmethodeCS
* ^expansion.timestamp = "2026-06-17T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewichtsmethode|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewichtsmethode"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Hausarzt"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewichtsmethode"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Apotheke"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewichtsmethode"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "zuhause mit einer anderen Person"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewichtsmethode"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "zuhause alleine"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewichtsmethode"
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "anders"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewichtsmethode"
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "ich möchte keine Angabe dazu machen"

CodeSystem: MhiAnSubtypCS
Id: mhi-an-subtyp
Title: "MHI Anorexia-nervosa-Subtyp (Codes)"
Description: "Subtyp der Anorexia nervosa (AN_subtyp)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "restriktiver Typ (Kontrolle des Gewichts vorwiegend über geringe Nahrungsaufnahme und/oder Sport)"
* #2 "Binge-Eating/Purging-Typ (Kontrolle des Gewichts z.B. durch Erbrechen, Abführmittel, exzessiven Sport mit Essanfällen)"
* #3 "Kenne beide Subtypen, aktuell eher restriktiver Subtyp"
* #4 "Kenne beide Subtypen, derzeit eher Binge-Eating/Purging-Typ"

ValueSet: MhiAnSubtypVS
Id: mhi-an-subtyp-vs
Title: "MHI Anorexia-nervosa-Subtyp"
Description: "Subtyp der Anorexia nervosa (AN_subtyp)."
* ^status = #draft
* ^experimental = true
* include codes from system MhiAnSubtypCS
* ^expansion.timestamp = "2026-06-17T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-an-subtyp|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-an-subtyp"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "restriktiver Typ (Kontrolle des Gewichts vorwiegend über geringe Nahrungsaufnahme und/oder Sport)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-an-subtyp"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Binge-Eating/Purging-Typ (Kontrolle des Gewichts z.B. durch Erbrechen, Abführmittel, exzessiven Sport mit Essanfällen)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-an-subtyp"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Kenne beide Subtypen, aktuell eher restriktiver Subtyp"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-an-subtyp"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Kenne beide Subtypen, derzeit eher Binge-Eating/Purging-Typ"

CodeSystem: MhiGewichtAngabeCS
Id: mhi-gewicht-angabe
Title: "MHI Gewichtsangabe (Codes)"
Description: "Einheit/Angabe-Status für Gewicht (Q_WB151)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #kg "kg"
* #weiss-nicht "Ich weiß es nicht"
* #keine-angabe "Ich möchte es nicht sagen"

ValueSet: MhiGewichtAngabeVS
Id: mhi-gewicht-angabe-vs
Title: "MHI Gewichtsangabe"
Description: "Einheit/Angabe-Status für Gewicht (Q_WB151)."
* ^status = #draft
* ^experimental = true
* include codes from system MhiGewichtAngabeCS
* ^expansion.timestamp = "2026-06-17T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewicht-angabe|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewicht-angabe"
* ^expansion.contains[=].code = #kg
* ^expansion.contains[=].display = "kg"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewicht-angabe"
* ^expansion.contains[=].code = #weiss-nicht
* ^expansion.contains[=].display = "Ich weiß es nicht"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-gewicht-angabe"
* ^expansion.contains[=].code = #keine-angabe
* ^expansion.contains[=].display = "Ich möchte es nicht sagen"

CodeSystem: MhiGroesseAngabeCS
Id: mhi-groesse-angabe
Title: "MHI Größenangabe (Codes)"
Description: "Einheit/Angabe-Status für Körpergröße (Q_WB152)."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #cm "cm"
* #weiss-nicht "Ich weiß es nicht"
* #keine-angabe "Ich möchte es nicht sagen"

ValueSet: MhiGroesseAngabeVS
Id: mhi-groesse-angabe-vs
Title: "MHI Größenangabe"
Description: "Einheit/Angabe-Status für Körpergröße (Q_WB152)."
* ^status = #draft
* ^experimental = true
* include codes from system MhiGroesseAngabeCS
* ^expansion.timestamp = "2026-06-17T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-groesse-angabe|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-groesse-angabe"
* ^expansion.contains[=].code = #cm
* ^expansion.contains[=].display = "cm"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-groesse-angabe"
* ^expansion.contains[=].code = #weiss-nicht
* ^expansion.contains[=].display = "Ich weiß es nicht"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhi-groesse-angabe"
* ^expansion.contains[=].code = #keine-angabe
* ^expansion.contains[=].display = "Ich möchte es nicht sagen"

// ─────────────────────────────────────────────────────────────────────────────
// MHI — Medical History
// Quelle: PCOR Item Level Dictionary (Kategorie MHI + zugehörige Folge-Items).
// DEM ist kein PRO; MHI ebenso (Anamnese/Medizinische Vorgeschichte) -> SDC-Base.
// Geteilte Antwort-ValueSets (DemJaNeinVS, DemZigarettenBandVS) liegen in DEM.fsh
//   und werden hier mitgenutzt. MHI-spezifische CS/VS siehe oben in dieser Datei.
// AN-spezifische Items (Gewichtsverlauf, AN_subtyp) nur im Szenario Anorexia nervosa.
// ─────────────────────────────────────────────────────────────────────────────

Instance: MHI
InstanceOf: Questionnaire
Usage: #definition
Title: "MHI — Medical History"
Description: "Medizinische Vorgeschichte (Kategorie MHI im PCOR-Item-Dictionary): Anthropometrie, Diagnosen/chronische Erkrankungen, Lifestyle (Rauchen/Alkohol/Substanzen), aktuelle Medikation und (AN-spezifisch) Gewichtsverlauf. SDC-Basis; kein PRO-Instrument."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/MHI"
* name = "MHI"
* version = "0.1.0"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-06-17"
* publisher = "BIH-CEI"

* item[+]
  * linkId = "anthropometrie"
  * text = "Körpermaße"
  * type = #group
  * item[+]
    * linkId = "Q_WB151"
    * text = "Wie viel wiegen Sie?"
    * type = #choice
    * code = $LOINC#29463-7 "Körpergewicht"
    * answerValueSet = Canonical(MhiGewichtAngabeVS)
  * item[+]
    * linkId = "Q_WB151a"
    * text = "Wie viel wiegen Sie? (kg)"
    * type = #decimal
    * code = $LOINC#29463-7 "Körpergewicht"
    * enableWhen[+].question = "Q_WB151"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = MhiGewichtAngabeCS#kg "kg"
  * item[+]
    * linkId = "Q_WB152"
    * text = "Wie groß sind Sie?"
    * type = #choice
    * code = $LOINC#8302-2 "Körpergröße"
    * answerValueSet = Canonical(MhiGroesseAngabeVS)
  * item[+]
    * linkId = "Q_WB152a"
    * text = "Wie groß sind Sie? (cm)"
    * type = #decimal
    * code = $LOINC#8302-2 "Körpergröße"
    * enableWhen[+].question = "Q_WB152"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = MhiGroesseAngabeCS#cm "cm"

* item[+]
  * linkId = "diagnose"
  * text = "Diagnose & chronische Erkrankungen"
  * type = #group
  * item[+]
    * linkId = "CPCOR-DIAG"
    * text = "Zu welcher Gruppe würden Sie sich zuordnen?"
    * type = #choice
    * repeats = true
    * answerValueSet = Canonical(MhiCpcorDiagVS)
  * item[+]
    * linkId = "CPCOR_ONSET"
    * text = "Bitte geben Sie an, in welchem Jahr Sie Ihre Diagnose erhalten haben"
    * type = #integer
  * item[+]
    * linkId = "GIPS13"
    * text = "Welche chronischen Erkrankungen haben Sie?"
    * type = #choice
    * repeats = true
    * answerValueSet = Canonical(MhiChronischVS)

* item[+]
  * linkId = "lifestyle"
  * text = "Rauchen, Alkohol & Substanzen"
  * type = #group
  * item[+]
    * linkId = "GIPS57a"
    * text = "Rauchen Sie (einschließlich E-Zigaretten)?"
    * type = #choice
    * code = $LOINC#72166-2 "Raucherstatus"
    * answerValueSet = Canonical(DemJaNeinVS)
  * item[+]
    * linkId = "GIPS57b"
    * text = "Wenn ja: Wie viele Zigaretten rauchen Sie pro Tag?"
    * type = #choice
    * code = $LOINC#64218-1 "How many cigarettes do you smoke per day now [PhenX]"
    * answerValueSet = Canonical(DemZigarettenBandVS)
    * enableWhen[+].question = "GIPS57a"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "GIPS56a"
    * text = "Trinken Sie Alkohol?"
    * type = #choice
    * code = $LOINC#11331-6 "History of Alcohol use"
    * answerValueSet = Canonical(DemJaNeinVS)
  * item[+]
    * linkId = "GIPS56b1"
    * text = "Haben Sie jemals daran gedacht, weniger zu trinken? (CAGE 1)"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinVS)
    * enableWhen[+].question = "GIPS56a"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "GIPS56b2"
    * text = "Haben Sie sich schon einmal darüber geärgert, dass Sie von anderen wegen Ihres Alkoholkonsums kritisiert wurden? (CAGE 2)"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinVS)
    * enableWhen[+].question = "GIPS56a"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "GIPS56b3"
    * text = "Haben Sie sich jemals wegen Ihres Trinkens schuldig gefühlt? (CAGE 3)"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinVS)
    * enableWhen[+].question = "GIPS56a"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "GIPS56b4"
    * text = "Haben Sie jemals morgens als erstes Alkohol getrunken, um sich nervlich zu stabilisieren oder einen Kater loszuwerden? (CAGE 4 — Eye-opener)"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinVS)
    * enableWhen[+].question = "GIPS56a"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "GIPS58"
    * text = "Nutzen Sie hin und wieder eine der folgenden Substanzen: Cannabis, Ecstasy, Kokain, Amphetamine, Anabolika, Crystal?"
    * type = #choice
    * code = $LOINC#96873-5 "Illegal or recreational drug(s) used in past 3 months"
    * answerValueSet = Canonical(DemJaNeinVS)

* item[+]
  * linkId = "medikation"
  * text = "Aktuelle Medikamente"
  * type = #group
  * item[+]
    * linkId = "medication1"
    * text = "Nehmen Sie aktuell Medikamente (einschließlich der Pille) ein?"
    * type = #choice
    * answerValueSet = Canonical(DemJaNeinVS)
  * item[+]
    * linkId = "medication_text"
    * text = "Bitte nennen Sie alle Medikamente, die Sie aktuell regelmäßig oder bei Bedarf einnehmen."
    * type = #text
    * enableWhen[+].question = "medication1"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "MEDI_01"
    * text = "Wie viele Medikamente nehmen Sie insgesamt momentan ein?"
    * type = #integer
    * enableWhen[+].question = "medication1"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
  * item[+]
    * linkId = "medi_02_01"
    * text = "Medikament 1"
    * type = #group
    * enableWhen[+].question = "medication1"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
    * item[+]
      * linkId = "medi_02_name_01"
      * text = "Name des Medikaments"
      * type = #string
    * item[+]
      * linkId = "medi_02_onset_01"
      * text = "Seit wann nehmen Sie dieses Medikament ein?"
      * type = #string
    * item[+]
      * linkId = "medi_02_dose_01"
      * text = "Falls bekannt: Wie ist die Dosierung dieses Medikaments?"
      * type = #string
    * item[+]
      * linkId = "medi_02_time_01"
      * text = "Wann nehmen Sie dieses Medikament ein?"
      * type = #choice
      * answerValueSet = Canonical(MhiEinnahmezeitVS)
    * item[+]
      * linkId = "medi_02_frequency_01"
      * text = "Wie häufig nehmen Sie dieses Medikament pro Woche ein?"
      * type = #string
  * item[+]
    * linkId = "medi_02_02"
    * text = "Medikament 2"
    * type = #group
    * enableWhen[+].question = "medication1"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
    * item[+]
      * linkId = "medi_02_name_02"
      * text = "Name des Medikaments"
      * type = #string
    * item[+]
      * linkId = "medi_02_onset_02"
      * text = "Seit wann nehmen Sie dieses Medikament ein?"
      * type = #string
    * item[+]
      * linkId = "medi_02_dose_02"
      * text = "Falls bekannt: Wie ist die Dosierung dieses Medikaments?"
      * type = #string
    * item[+]
      * linkId = "medi_02_time_02"
      * text = "Wann nehmen Sie dieses Medikament ein?"
      * type = #choice
      * answerValueSet = Canonical(MhiEinnahmezeitVS)
    * item[+]
      * linkId = "medi_02_frequency_02"
      * text = "Wie häufig nehmen Sie dieses Medikament pro Woche ein?"
      * type = #string
  * item[+]
    * linkId = "medi_02_03"
    * text = "Medikament 3"
    * type = #group
    * enableWhen[+].question = "medication1"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
    * item[+]
      * linkId = "medi_02_name_03"
      * text = "Name des Medikaments"
      * type = #string
    * item[+]
      * linkId = "medi_02_onset_03"
      * text = "Seit wann nehmen Sie dieses Medikament ein?"
      * type = #string
    * item[+]
      * linkId = "medi_02_dose_03"
      * text = "Falls bekannt: Wie ist die Dosierung dieses Medikaments?"
      * type = #string
    * item[+]
      * linkId = "medi_02_time_03"
      * text = "Wann nehmen Sie dieses Medikament ein?"
      * type = #choice
      * answerValueSet = Canonical(MhiEinnahmezeitVS)
    * item[+]
      * linkId = "medi_02_frequency_03"
      * text = "Wie häufig nehmen Sie dieses Medikament pro Woche ein?"
      * type = #string
  * item[+]
    * linkId = "medi_02_04"
    * text = "Medikament 4"
    * type = #group
    * enableWhen[+].question = "medication1"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
    * item[+]
      * linkId = "medi_02_name_04"
      * text = "Name des Medikaments"
      * type = #string
    * item[+]
      * linkId = "medi_02_onset_04"
      * text = "Seit wann nehmen Sie dieses Medikament ein?"
      * type = #string
    * item[+]
      * linkId = "medi_02_dose_04"
      * text = "Falls bekannt: Wie ist die Dosierung dieses Medikaments?"
      * type = #string
    * item[+]
      * linkId = "medi_02_time_04"
      * text = "Wann nehmen Sie dieses Medikament ein?"
      * type = #choice
      * answerValueSet = Canonical(MhiEinnahmezeitVS)
    * item[+]
      * linkId = "medi_02_frequency_04"
      * text = "Wie häufig nehmen Sie dieses Medikament pro Woche ein?"
      * type = #string
  * item[+]
    * linkId = "medi_02_05"
    * text = "Medikament 5"
    * type = #group
    * enableWhen[+].question = "medication1"
    * enableWhen[=].operator = #=
    * enableWhen[=].answerCoding = DemAntwortCS#ja "Ja"
    * item[+]
      * linkId = "medi_02_name_05"
      * text = "Name des Medikaments"
      * type = #string
    * item[+]
      * linkId = "medi_02_onset_05"
      * text = "Seit wann nehmen Sie dieses Medikament ein?"
      * type = #string
    * item[+]
      * linkId = "medi_02_dose_05"
      * text = "Falls bekannt: Wie ist die Dosierung dieses Medikaments?"
      * type = #string
    * item[+]
      * linkId = "medi_02_time_05"
      * text = "Wann nehmen Sie dieses Medikament ein?"
      * type = #choice
      * answerValueSet = Canonical(MhiEinnahmezeitVS)
    * item[+]
      * linkId = "medi_02_frequency_05"
      * text = "Wie häufig nehmen Sie dieses Medikament pro Woche ein?"
      * type = #string

* item[+]
  * linkId = "gewicht-an"
  * text = "Gewichtsverlauf (Szenario Anorexia nervosa)"
  * type = #group
  * item[+]
    * linkId = "weight_outpatient_1"
    * text = "Ambulant gemessenes Körpergewicht (kg) — empfohlen beim Hausarzt mit geeichter Waage"
    * type = #decimal
    * code = $LOINC#29463-7 "Körpergewicht"
  * item[+]
    * linkId = "weight_outpatient_2"
    * text = "Wie haben Sie das oben genannte Gewicht ermittelt?"
    * type = #choice
    * answerValueSet = Canonical(MhiGewichtsmethodeVS)
  * item[+]
    * linkId = "weight_inpatient"
    * text = "Stationäres Körpergewicht — wie viel wiegen Sie aktuell in kg?"
    * type = #decimal
    * code = $LOINC#29463-7 "Körpergewicht"
  * item[+]
    * linkId = "weight_discharge"
    * text = "Körpergewicht bei Entlassung — wie viel wiegen Sie aktuell in kg?"
    * type = #decimal
    * code = $LOINC#29463-7 "Körpergewicht"
  * item[+]
    * linkId = "AN_subtyp"
    * text = "Welchem Subtyp der Anorexia nervosa würden Sie sich zuordnen?"
    * type = #choice
    * answerValueSet = Canonical(MhiAnSubtypVS)
