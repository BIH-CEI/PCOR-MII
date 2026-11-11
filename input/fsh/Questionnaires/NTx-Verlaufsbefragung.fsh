// ─────────────────────────────────────────────────────────────────────────────
// NTx-Verlaufsbefragung — Verlaufsanamnese nach Nierentransplantation (MHH-Standortitems, Entität NTx)
// Quelle: PCOR-MII Item Level Dictionary, Blatt NTx, Dictionary-Gruppen MHH-DIAL, MHH-PTx-DIAB,
//   MHH-T, MHH-UTI, MHH-Infection, MHH-BP, MHH-Medi und die zwei Items MHH_PTH1/2 ohne
//   Gruppenlabel (Kategorie DCH). 18 Variablen, alle REPORTING SOURCE "Patient-reported".
//   Die drei Screening-Items der MHH (MHH-DON, MHH-Tx-DATE, MHH-PRIOR-TX) liegen NICHT hier,
//   sondern im eigenen Ergänzungsbogen MHI-NTx (MHI-NTx.fsh).
//
// EIN BOGEN, NICHT ACHT: Entscheidung des Maintainers (2026-11-05). Die Standortgruppen-Regel
//   aus ADR-011 (je Dictionary-Gruppe ein Questionnaire, Muster UKHD-Zusatzitems) ist hier
//   bewusst nicht angewandt: Die MHH-Items sind kein Zuschnitt fremder Instrumente, sondern
//   eine zusammenhängende VERLAUFSBEFRAGUNG eines einzigen Standorts mit einheitlicher
//   Herkunft und Rechtelage — dieselbe Lage wie beim MHI, der deshalb auch ein Sammelbogen
//   ist. Die Dictionary-Gruppen bleiben als Gruppen-Items sichtbar; item.code trägt die
//   Dictionary-Variable, sodass die Zuordnung nicht an der Ressourcengrenze hängt.
//
// KEIN PRO-INSTRUMENT: Anamnese wie der MHI -> ISiKFormularDefinition, nicht das
//   MII-PRO-Profil. Gleiches Muster wie MHI.fsh.
//
// ERHEBUNGSPLAN (Blatt Domain Overview, Spalten NTXr): Alle Gruppen liegen im MONITORING,
//   quartalsweise — Harnwegsinfekt unter Treatment Effects, der Rest unter Disease Progress
//   (Blutdruck Prio B, alles andere Prio A). Das ist eine andere Erhebungseinheit als der
//   MHI (Screening), deshalb ein eigener Bogen.
//
// WORTLAUT: unverändert aus dem Dictionary (ADR-005), mit zwei orthografischen Korrekturen
//   in Antwortoptionen ("lebendpende" -> "Lebendspende", "verstorbenen Spende" ->
//   "Verstorbenenspende") und einer ergänzten schließenden Klammer bei MHH_DIAL2 Option 4;
//   Itemtexte sind nicht angefasst, auch dort nicht, wo das Dictionary Tippfehler trägt.
//
// JA/NEIN: nach TC-Terminologien-Best-Practice als SNOMED CT 373066001/373067005 inline
//   (RuleSet JaNeinSnomed, ADR-013) — erster Bogen in PCOR-MII mit dieser Kodierung; die
//   Bestandsbögen sind seit 0.9.0 ebenfalls umgestellt. ACHTUNG ETL: Das Dictionary kodiert "Nein"
//   uneinheitlich — 0 bei MHH_DIAL1, MHH_PTX_DIAB, MHH_T01-03; 2 bei MHH_UTI01-04,
//   MHH_Infekt1-3, MHH_Medi, MHH_PTH1-2. Die SNOMED-Codes sind davon unabhängig; wer
//   Rohdaten einspielt, muss beide Kodierungen abbilden.
//
// BLUTDRUCK: Das Dictionary führt EINE Variable MHH_BP mit zwei Werten (systolisch/
//   diastolisch). Modelliert als Gruppe MHH_BP (trägt den Dictionary-Code) mit zwei
//   PCOR-MII-eigenen Integer-Items ohne Dictionary-Code (Muster AN_biography-wert im
//   UKHD-ANB), jeweils mit LOINC-Code und Einheit mmHg.
//
// RECHTELAGE: Standortitems der MHH, in der DIZ-Implementierungsliste nicht geführt; keine
//   dokumentierte Freigabe, Herkunft des Wortlauts nicht belegt (Muster UKHD-Zusatzitems).
//   status = draft, experimental = true; bei Einschränkung Umstellung auf metadata-only.
//
// OFFEN (für MHH): (a) Gruppenlabel für MHH_PTH1/MHH_PTH2 im Dictionary nachtragen;
//   (b) Freigabe des Wortlauts; (c) ob die Gruppen quartalsweise als ein Bogen oder
//   getrennt erhoben werden (Erhebungseinheit).
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: MhhNierenersatzCS
Id: mhh-nierenersatz
Title: "NTx-Verlaufsbefragung Nierenersatztherapie vor Transplantation (Codes)"
Description: "Zuletzt vor der Transplantation durchgeführte Form der Nierenersatztherapie (`MHH_DIAL2`). Nominal, Dictionary-Codes 1–4; Option 4 = präemptive Transplantation ohne vorherige Dialyse."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhh-nierenersatz"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "Heim-Hämodialyse (Dialyse zu Hause)"
* #2 "Bauchfelldialyse"
* #3 "Hämodialyse in der Dialysepraxis"
* #4 "Ich war vor Transplantation nicht dialysepflichtig (nur bei präemptiver Lebendspende)"

ValueSet: MhhNierenersatzVS
Id: mhh-nierenersatz-vs
Title: "NTx-Verlaufsbefragung Nierenersatztherapie vor Transplantation"
Description: "Zuletzt vor der Transplantation durchgeführte Form der Nierenersatztherapie (`MHH_DIAL2`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/mhh-nierenersatz-vs"
* ^status = #draft
* ^experimental = true
* include codes from system MhhNierenersatzCS
* ^expansion.timestamp = "2026-11-05T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhh-nierenersatz|0.9.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhh-nierenersatz"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Heim-Hämodialyse (Dialyse zu Hause)"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhh-nierenersatz"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Bauchfelldialyse"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhh-nierenersatz"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Hämodialyse in der Dialysepraxis"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/mhh-nierenersatz"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Ich war vor Transplantation nicht dialysepflichtig (nur bei präemptiver Lebendspende)"

// ─────────────────────────────────────────────────────────────────────────────
// NTx-Verlaufsbefragung — Questionnaire
// ─────────────────────────────────────────────────────────────────────────────

Instance: NTXVERLAUF
InstanceOf: Questionnaire
Usage: #definition
Title: "NTx-Verlaufsbefragung — Verlaufsanamnese nach Nierentransplantation (MHH)"
Description: "Quartalsweise Verlaufsbefragung des Standorts Hannover (MHH) für den Use Case Nierentransplantation, 18 patient-reported Variablen aus dem NTx-Dictionary (Kategorie DCH): Dialyse, Post-Tx-Diabetes, Tumoren, Harnwegsinfekte, Infektionen, Blutdruck, ASS-Einnahme und Hyperparathyreoidismus. Ein Sammelbogen nach dem Muster des MHI; die drei Screening-Items der MHH (Spendeart, Transplantationsdatum, Anzahl Spendernieren) liegen im Ergänzungsbogen MHI-NTx. Kein PRO-Instrument, kein Score."
// Kein PRO-Instrument -> ISiKFormularDefinition wie beim MHI.
* meta.profile = $isik-formulardefinition
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/NTXVERLAUF"
* name = "NTXVERLAUF"
* language = #de-DE
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#ntx-verlauf "NTx-Verlaufsbefragung (MHH)"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-11-05"
* publisher = "BIH-CEI"
* copyright = "Die Items dieses Bogens sind **vom Standort Hannover (MHH) für die PCOR-MII-Erhebung zusammengestellt** und stammen aus dem PCOR-MII Item Level Dictionary (Entität NTx, Gruppen `MHH-*`). Das `MHH`-Präfix ist ein Zusammenstellungs-Etikett des Dictionary, keine Autorenschaftsangabe: Woher der Wortlaut stammt, ist nicht belegt, und eine Freigabe zur Veröffentlichung ist nicht dokumentiert — die Gruppen kommen in der DIZ-Implementierungsliste nicht vor. Bis zur Klärung gilt derselbe Vorbehalt wie bei den UKHD-Zusatzitems; bei einer Einschränkung würde der Bogen auf metadata-only umgestellt. Der PCOR-MII-eigene FHIR-Inhalt (Struktur, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0)."
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen:** (1) **Ein Verlaufsbogen statt acht Gruppen-Questionnaires** (Maintainer, 2026-11-05): Die Standortgruppen-Regel aus [ADR-011](Designentscheidungen.html) gilt für Zuschnitte mit je eigener Herkunft; die MHH-Items sind dagegen eine zusammenhängende Verlaufsbefragung eines Standorts mit einheitlicher Rechtelage, wie der [MHI](MHI.html). Die Dictionary-Gruppen bleiben als Gruppen-Items erhalten, `item.code` trägt die Dictionary-Variable. (2) **Kein PRO-Instrument**, daher ISiKFormularDefinition wie beim MHI. (3) **Nur Monitoring:** alle Gruppen sind laut Erhebungsplan quartalsweise; die drei Screening-Items der MHH (Spendeart, Transplantationsdatum, Anzahl Spendernieren) liegen im Ergänzungsbogen [MHI-NTx](Questionnaire-MHINTX.html), weil Screening und Monitoring verschiedene Erhebungseinheiten sind. (4) **Ja/Nein** nach der Best-Practice-Empfehlung des TC Terminologien als SNOMED CT `373066001`/`373067005` inline ([ADR-013](Designentscheidungen.html)), wie im MII-PRO-Modul; das Dictionary kodiert „Nein“ uneinheitlich (0 bzw. 2), die SNOMED-Codes sind davon unabhängig. (5) **Blutdruck** als Gruppe mit zwei PCOR-MII-eigenen Integer-Items (systolisch, diastolisch, mmHg, LOINC), weil das Dictionary eine Variable mit zwei Werten führt. (6) **Wortlaut** unverändert bis auf zwei Tippfehler in Antwortoptionen und eine fehlende Klammer. (7) **Offen für MHH:** Gruppenlabel für `MHH_PTH1`/`MHH_PTH2`, Freigabe des Wortlauts, Erhebungseinheit der Monitoring-Gruppen. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

// ── Monitoring: Dialyse (MHH-DIAL; DCH) ─────────────────────────────────────────────────
* item[+]
  * linkId = "dialyse"
  * text = "Dialyse"
  * type = #group
  * item[+]
    * linkId = "MHH_DIAL1"
    * code[+] = PcorItemDictionaryCS#MHH_DIAL1
    * text = "Befinden Sie sich wieder an der Dialyse (seit mindestens 4 Wochen)?"
    * type = #choice
    * insert JaNeinSnomed
  * item[+]
    * linkId = "MHH_DIAL2"
    * code[+] = PcorItemDictionaryCS#MHH_DIAL2
    * text = "Welche Form der Nierenersatztherapie haben Sie zuletzt vor der Transplantation gemacht?"
    * type = #choice
    * answerValueSet = Canonical(MhhNierenersatzVS)

// ── Monitoring: Post-Tx-Diabetes (MHH-PTx-DIAB; DCH) ────────────────────────────────────
* item[+]
  * linkId = "diabetes"
  * text = "Diabetes nach Transplantation"
  * type = #group
  * item[+]
    * linkId = "MHH_PTX_DIAB"
    * code[+] = PcorItemDictionaryCS#MHH_PTX_DIAB
    * text = "Wurde bei Ihnen nach der Transplantation ein Diabetes Mellitus festgestellt?"
    * type = #choice
    * insert JaNeinSnomed

// ── Monitoring: Tumoren (MHH-T; DCH) ────────────────────────────────────────────────────
* item[+]
  * linkId = "tumoren"
  * text = "Tumoren"
  * type = #group
  * item[+]
    * linkId = "MHH_T01"
    * code[+] = PcorItemDictionaryCS#MHH_T01
    * text = "Wurde bei Ihnen nach der Transplantation ein Hauttumor festgestellt?"
    * type = #choice
    * insert JaNeinSnomed
  * item[+]
    * linkId = "MHH_T02"
    * code[+] = PcorItemDictionaryCS#MHH_T02
    * text = "Wurde bei Ihnen seit der letzten Vorstellung in der Transplantationsambulanz ein Hauttumor festgestellt?"
    * type = #choice
    * insert JaNeinSnomed
  * item[+]
    * linkId = "MHH_T03"
    * code[+] = PcorItemDictionaryCS#MHH_T03
    * text = "Wurden bei Ihnen nach der Transplantation andere Tumore festgestellt?"
    * type = #choice
    * insert JaNeinSnomed

// ── Monitoring: Harnwegsinfekte (MHH-UTI; DCH) ──────────────────────────────────────────
* item[+]
  * linkId = "harnwegsinfekte"
  * text = "Harnwegsinfekte"
  * type = #group
  * item[+]
    * linkId = "MHH_UTI01"
    * code[+] = PcorItemDictionaryCS#MHH_UTI01
    * text = "Bestand seit dem letzten Kontakt in der Transplantationsambulanz eine Infektion der Harnwege?"
    * type = #choice
    * insert JaNeinSnomed
  * item[+]
    * linkId = "MHH_UTI02"
    * code[+] = PcorItemDictionaryCS#MHH_UTI02
    * text = "Bestand in den letzten 6 Monaten mindestens zwei Infektion der Harnwege mit typischen Beschwerden (z.B.  Fieber, Brennen beim Wasserlassen, Unterleibsschmerzen, häufiges Wasserlassen? usw.)"
    * type = #choice
    * insert JaNeinSnomed
  * item[+]
    * linkId = "MHH_UTI03"
    * code[+] = PcorItemDictionaryCS#MHH_UTI03
    * text = "Erhalten Sie eine Antibiotika-Prophylaxe gegen chronische Harnwegsinfekte (z.B.: mehrmals wöchentlich Nitrofurantoin, Fosfomycin, Nitroxilin)?"
    * type = #choice
    * insert JaNeinSnomed
  * item[+]
    * linkId = "MHH_UTI04"
    * code[+] = PcorItemDictionaryCS#MHH_UTI04
    * text = "Erfolgte seit Transplantation eine Impfung gegen Harnwegsinfekte (mit z.B: Strovac oder Urovaxom)?"
    * type = #choice
    * insert JaNeinSnomed

// ── Monitoring: Infektionen (MHH-Infection; DCH) ────────────────────────────────────────
* item[+]
  * linkId = "infektionen"
  * text = "Infektionen"
  * type = #group
  * item[+]
    * linkId = "MHH_Infekt1"
    * code[+] = PcorItemDictionaryCS#MHH_Infekt1
    * text = "Bestand in den letzten 3 Monaten eine Infektion mit Antibiotika Gabe?"
    * type = #choice
    * insert JaNeinSnomed
  * item[+]
    * linkId = "MHH_Infekt2"
    * code[+] = PcorItemDictionaryCS#MHH_Infekt2
    * text = "Müssen Sie pro Jahre mehr als 3-mal Antibiotika, aufgrund eines Infekts, einnehmen?"
    * type = #choice
    * insert JaNeinSnomed
  * item[+]
    * linkId = "MHH_Infekt3"
    * code[+] = PcorItemDictionaryCS#MHH_Infekt3
    * text = "Wurden Sie, seit Transplantation, aufgrund einer Infektions-Komplikation (z.B. Blutvergiftung/Sepsis) auf einer Intensivstation in Behandlung?"
    * type = #choice
    * insert JaNeinSnomed

// ── Monitoring: Blutdruck (MHH-BP; DCH) ─────────────────────────────────────────────────
// Eine Dictionary-Variable, zwei Werte -> Gruppe trägt den Dictionary-Code, die beiden
// Wert-Items sind PCOR-MII-eigene Hilfsitems ohne Dictionary-Code.
* item[+]
  * linkId = "MHH_BP"
  * code[+] = PcorItemDictionaryCS#MHH_BP
  * text = "Was war ihr letzter Blutdruck?"
  * type = #group
  * item[+]
    * linkId = "MHH_BP-systolisch"
    * code[+] = $LOINC#8480-6 "Systolischer Blutdruck"
    * text = "Systolisch (mmHg)"
    * type = #integer
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
    * extension[=].valueCoding = http://unitsofmeasure.org#mm[Hg]
  * item[+]
    * linkId = "MHH_BP-diastolisch"
    * code[+] = $LOINC#8462-4 "Diastolischer Blutdruck"
    * text = "Diastolisch (mmHg)"
    * type = #integer
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
    * extension[=].valueCoding = http://unitsofmeasure.org#mm[Hg]

// ── Monitoring: Medikation (MHH-Medi; DCH) ──────────────────────────────────────────────
* item[+]
  * linkId = "medikation"
  * text = "Medikation"
  * type = #group
  * item[+]
    * linkId = "MHH_Medi"
    * code[+] = PcorItemDictionaryCS#MHH_Medi
    * text = "Nehmen Sie aktuell Aspirin (ASS) ein?"
    * type = #choice
    * insert JaNeinSnomed

// ── Monitoring: Hyperparathyreoidismus (ohne Gruppenlabel im Dictionary; DCH) ───────────
* item[+]
  * linkId = "nebenschilddruese"
  * text = "Nebenschilddrüse"
  * type = #group
  * item[+]
    * linkId = "MHH_PTH1"
    * code[+] = PcorItemDictionaryCS#MHH_PTH1
    * text = "Erfolgte bei Ihnen eine Operation an ihrer Nebenschilddrüse?"
    * type = #choice
    * insert JaNeinSnomed
  * item[+]
    * linkId = "MHH_PTH2"
    * code[+] = PcorItemDictionaryCS#MHH_PTH2
    * text = "Nehmen Sie Cinacalcet (z.B.Mimpara ®) ein?"
    * type = #choice
    * insert JaNeinSnomed
