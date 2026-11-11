// ─────────────────────────────────────────────────────────────────────────────
// PROMIS-GH — PROMIS Scale v1.2 "Global Health", 2-Item-Subset (Global01/Global02)
// Quelle: PCOR Item Level Dictionary (Kategorie GHS — Generic Health Status),
//   Zeilen 8 (Global01, Domain "Generic Health") und 3 (Global02, Domain
//   "Quality of Life"); identisch in den Blättern PSS, NTx und AN.
// Originalinstrument: PROMIS® Scale v1.2 – Global Health (10 Items, Global01–
//   Global10), PROMIS Health Organization / Northwestern University.
//
// ⚠️ 2-ITEM-SHORTFORM — BEWUSST NUR 2 VON 10 ITEMS.
//   Bis 2026.7.0 enthielt das MII-PRO-Modul keinen Global-Health-Questionnaire
//   (geprüft gegen 2026.5.2 und 2026.6.0: weder 61577-3 noch 61578-1 in den
//   31 Questionnaires, kein Katalogeintrag); deshalb entstand dieser lokale
//   2-Item-Bogen. Seit 2027.0.0-ballot.2 führt das Modul die vollständige
//   Skala als mii-qst-pro-promis-global-health (10 Items, LOINC-Panel 85524-7,
//   status draft, linkIds promis-global01 … promis-global10, Antwortoptionen
//   inline mit itemWeight 5…1, Katalogcode promis-global-health). Dieser Bogen
//   ist seitdem per derivedFrom als 2-Item-Zuschnitt davon ausgewiesen.
//
//   OFFEN (Entscheidung Maintainer, nicht Teil von 0.9.0):
//   - linkIds: hier die Dictionary-Variablen Global01/Global02, upstream
//     promis-global01/promis-global02. ADR-008 (Original-IDs der Langform)
//     spräche für die Upstream-IDs — Breaking Change für Bestandsantworten.
//   - Fortbestand: entfällt der lokale Bogen zugunsten der Upstream-Definition,
//     erheben die Standorte 10 statt 2 Items — das entscheidet der
//     Erhebungsplan, nicht die Technik.
//
// ABGRENZUNG Global07: Das dritte GHS-Einzelitem der Mastertabelle, Global07
//   ("PROMIS Numeric Rating Scale - Pain Intensity 1a", LOINC 61583-1), ist hier
//   NICHT enthalten — es wird bereits über den referenzierten PROMIS-29 des
//   MII-PRO-Moduls abgedeckt (dort linkId "promis-global07" in
//   mii-qst-pro-promis-29 / -promis-29-de). Fachlich gehört Global07 ebenfalls
//   zur GH-10 und wäre mit deren Aufnahme ins PRO-Modul mitabgedeckt.
//
// Terminologie-Recherche (mcp__fhir-terminology, MII Ontoserver, LOINC 2.83,
// Stand 2026-09-14):
//   - Global01 -> 61577-3 "In general, would you say your health is [PROMIS]"
//   - Global02 -> 61578-1 "In general, would you say your quality of life is [PROMIS]"
//   - Antwortskala beider Items -> LOINC-Answerlist LL4280-5
//     "[PROMIS]Excel-5|Very good-4|Good-3|Fair-2|Poor-1" mit den Members
//     LA9206-9 / LA13913-1 / LA8967-7 / LA8968-5 / LA8969-3.
//     Die Scores 5…1 der Answerlist entsprechen 1:1 der Spalte RESPONSE OPTIONS
//     der Mastertabelle ("5 = Ausgezeichnet" … "1 = Schlecht").
//   - 61577-3, 61578-1 und das Panel 85524-7 teilen sich in LOINC 2.83 den
//     Parent LP248772-8 — Beleg für die Zugehörigkeit der Items zur v1.2-Skala.
//
// PROFIL: mii-pr-pro-questionnaire (PROMIS ist ein PRO-Instrument). Das Profil
//   erzwingt zwei Angaben, die eine 2-Item-ShortForm strenggenommen nicht sauber
//   abbilden kann:
//     - capabilities-Extension (1..1) -> gesetzt, calculatable/extractable/
//       domainAligned bewusst false.
//     - Questionnaire.code (1..*) -> 85524-7, der Panel-Code der vollständigen
//       10-Item-Skala. Ein Code für das 2-Item-Subset existiert nicht; der
//       MII-Katalog führt seit 2027.0.0-ballot.2 promis-global-health für die
//       10-Item-Skala, SNOMED CT kein passendes Assessment-Konzept. Der Code benennt
//       daher das Herkunftsinstrument, nicht den Erhebungsumfang — dieser
//       Vorbehalt steht in Title und Description.
//   Ob der lokale Questionnaire zugunsten der Upstream-Definition entfällt,
//   ist offen (siehe oben).
//
// SCORING: Nicht implementiert. Die PROMIS-Scores Global Physical Health
//   (71972-4) und Global Mental Health (71970-8) setzen jeweils vier bzw. vier
//   der zehn Items voraus (GPH: Global03/06/07/08, GMH: Global02/04/05/10) und
//   sind aus Global01+Global02 allein nicht berechenbar. Beide Items werden
//   deshalb als Einzelindikatoren verwendet.
//
// ANTWORT-MUSTER: item.answerValueSet -> lokales ValueSet mit gebackener
//   expansion (Repo-Konvention, siehe DEM/MHI/OPD-SFK — ohne expansion zeigt die
//   IG-Publisher-Formularvorschau nur den Code statt des Displays). Die
//   expansion.contains führen die deutschen Displays der validierten PROMIS-
//   Übersetzung; die zugehörigen englischen LOINC-Displays stehen als
//   designation daneben.
// ─────────────────────────────────────────────────────────────────────────────

ValueSet: PromisGlobalSkala5VS
Id: promis-global-skala-5-vs
Title: "PROMIS Global Health Antwortskala 5-stufig (Ausgezeichnet–Schlecht)"
Description: "5-stufige Antwortskala der PROMIS-Global-Health-Items Global01 und Global02 (LOINC-Answerlist LL4280-5): 5 = Ausgezeichnet … 1 = Schlecht. Displays in der expansion sind die deutschen Formulierungen der validierten PROMIS-Übersetzung, die englischen LOINC-Displays als designation."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^copyright = "LOINC® ist eingetragene Marke des Regenstrief Institute, Inc. LOINC-Codes und -Answerlists © Regenstrief Institute, Inc., Nutzung unter http://loinc.org/terms-of-use."
* $LOINC#LA9206-9
* $LOINC#LA13913-1
* $LOINC#LA8967-7
* $LOINC#LA8968-5
* $LOINC#LA8969-3
* ^expansion.timestamp = "2026-09-14T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "http://loinc.org|2.83"
* ^expansion.contains[0].system = "http://loinc.org"
* ^expansion.contains[=].code = #LA9206-9
* ^expansion.contains[=].display = "Ausgezeichnet"
* ^expansion.contains[=].designation[0].language = #en
* ^expansion.contains[=].designation[=].value = "Excellent"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].code = #LA13913-1
* ^expansion.contains[=].display = "Sehr gut"
* ^expansion.contains[=].designation[0].language = #en
* ^expansion.contains[=].designation[=].value = "Very Good"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].code = #LA8967-7
* ^expansion.contains[=].display = "Gut"
* ^expansion.contains[=].designation[0].language = #en
* ^expansion.contains[=].designation[=].value = "Good"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].code = #LA8968-5
* ^expansion.contains[=].display = "Einigermaßen"
* ^expansion.contains[=].designation[0].language = #en
* ^expansion.contains[=].designation[=].value = "Fair"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].code = #LA8969-3
* ^expansion.contains[=].display = "Schlecht"
* ^expansion.contains[=].designation[0].language = #en
* ^expansion.contains[=].designation[=].value = "Poor"

Instance: PROMISGH
InstanceOf: Questionnaire
Usage: #definition
Title: "PROMIS-GH — PROMIS Global Health (2-Item-ShortForm)"
Description: "Die beiden in PCOR-MII erhobenen Einzelitems der PROMIS® Scale v1.2 – Global Health: Global01 (Gesundheitszustand insgesamt, LOINC 61577-3) und Global02 (Lebensqualität insgesamt, LOINC 61578-1), je 5-stufig (5 = Ausgezeichnet … 1 = Schlecht, LOINC-Answerlist LL4280-5). 2-ITEM-SHORTFORM: 2 von 10 Items der Originalskala — der vollständige Fragebogen (LOINC-Panel 85524-7) ist seit MII-PRO-Modul 2027.0.0-ballot.2 als mii-qst-pro-promis-global-health enthalten; dieser Questionnaire ist per derivedFrom als 2-Item-Zuschnitt davon ausgewiesen (linkIds nach Item Level Dictionary: Global01/Global02, upstream promis-global01/promis-global02). Global07 (Schmerzintensität) ist bewusst nicht enthalten — es wird über den referenzierten PROMIS-29 abgedeckt. Profil: MII PR PRO Questionnaire (SDC-Basis)."
// PROMIS ist ein PRO-Instrument -> MII-PRO-Profil (nicht ISiKFormularDefinition,
// die nur für die Nicht-PRO-Bögen DEM/MHI/GSLTPAQ/OPD-SFK/WAI gesetzt wird).
* meta.profile = $mii-pro-questionnaire
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/PROMISGH"
// 2-Item-Zuschnitt der Modul-Definition (seit 2027.0.0-ballot.2); Pin wie in
// den Manifesten, damit die Herkunft versionsgenau bleibt.
* derivedFrom = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-global-health|2027.0.0-ballot.2"
* name = "PROMISGH"
* insert Version
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-09-14"
* publisher = "BIH-CEI"
// Vom MII-PRO-Profil gefordert: capabilities-Extension (1..1).
// calculatable/extractable = false, weil kein Score berechenbar ist (GPH/GMH
// brauchen je vier Items der Gesamtskala) und keine SDC-Extraction definiert ist.
// domainAligned = false, weil nur ein 2-Item-Subset der Domäne abgebildet ist.
* extension[+].url = $mii-pro-capabilities
* extension[=].extension[+].url = "displayable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "collectable"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "calculatable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "extractable"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "domainAligned"
* extension[=].extension[=].valueBoolean = false
// Vom MII-PRO-Profil gefordert: code (1..*). Verfügbar ist nur der LOINC-Panel-
// Code der vollständigen 10-Item-Skala; ein eigener Code für das 2-Item-Subset
// existiert nicht (der MII-Katalog mii-cs-pro-questionnaire-catalogue führt
// seit 2027.0.0-ballot.2 promis-global-health für die 10-Item-Skala, SNOMED CT
// kein passendes Assessment-Konzept).
// Der Code benennt daher das Instrument, aus dem die Items stammen — dass nur
// 2 der 10 Items realisiert sind, steht in Title und Description.
* code = $LOINC#85524-7 "PROMIS short form - global - version 1.2"
// Dazu der PCOR-MII-Katalogcode (ADR-004/-007): Canonical identifiziert das
// Artefakt, code das Konzept — hier den 2-Item-Zuschnitt.
* code[+] = PcorQuestionnaireCatalogueCS#promis-gh "PROMIS-GH"
* copyright = "PROMIS® ist eingetragene Marke der PROMIS Health Organization (PHO). Die Item-Inhalte der PROMIS Scale v1.2 – Global Health sind © PROMIS Health Organization / Northwestern University; die hier verwendeten deutschen Formulierungen entstammen der offiziellen deutschen PROMIS-Übersetzung, kuratiert durch das PROMIS National Center Deutschland (CPCOR, Charité). LOINC-Codes und -Answerlists © Regenstrief Institute, Inc. (http://loinc.org/terms-of-use). Nur der PCOR-MII-eigene FHIR-Inhalt (Struktur, linkIds, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0). Nutzungsbedingungen für das Instrument selbst siehe https://www.healthmeasures.net/explore-measurement-systems/promis."

* item[+]
  * linkId = "Global01"
  * text = "Wie würden Sie Ihren Gesundheitszustand insgesamt beschreiben?"
  * type = #choice
  * code = $LOINC#61577-3 "In general, would you say your health is [PROMIS]"
  * answerValueSet = Canonical(PromisGlobalSkala5VS)

* item[+]
  * linkId = "Global02"
  * text = "Wie würden Sie Ihre Lebensqualität insgesamt beschreiben?"
  * type = #choice
  * code = $LOINC#61578-1 "In general, would you say your quality of life is [PROMIS]"
  * answerValueSet = Canonical(PromisGlobalSkala5VS)
