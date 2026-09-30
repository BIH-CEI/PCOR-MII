// ─────────────────────────────────────────────────────────────────────────────
// ERQ-S — die beiden Subskalen-Scores
// Instrument: siehe input/fsh/Questionnaires/ERQ-6.fsh (Instance ERQ6).
//
// QUELLE DER SCORING-VORSCHRIFT: "ERQ-S: Copy of Questionnaire and Scoring
//   Instructions" (Preece DA, Petrova K, Mehta A, Gross JJ, 2023;
//   (c) Stanford Psychophysiology Laboratory), Begleitdokument zu
//   J Affect Disord 2023;340:855-861, doi:10.1016/j.jad.2023.08.076.
//   Woertlich dort: "Two scale scores can be derived from the ERQ-S:
//   Cognitive reappraisal: sum items 1, 3, and 5. Expressive suppression:
//   sum items 2, 4, and 6."
//
// UMRECHNUNG AUF DIE HIER VERWENDETEN LINKIDS: Die linkIds sind die
//   Original-ERQ-Itemnummern, nicht die ERQ-S-Zaehlung. Daher:
//     ERQ-S 1, 3, 5  ->  erq1, erq3, erq8   (Neubewertung / Reappraisal)
//     ERQ-S 2, 4, 6  ->  erq2, erq6, erq9   (Unterdrueckung / Suppression)
//   Je 3 Items x 1-7 => Wertebereich 3-21. KEIN Gesamtscore: Der ERQ kennt
//   keinen, die beiden Subskalen sind getrennt auszuwerten.
//
// SCORING-RICHTUNG: Laut Scoring Instructions ist hohe Nutzung der
//   Neubewertung "typically associated with good well-being and interpersonal
//   outcomes", hohe Nutzung der Unterdrueckung "with poor well-being and
//   interpersonal outcomes". Daraus die ScoreHealthCorrelation:
//   Neubewertung = increase, Unterdrueckung = decrease. Gemessen wird
//   allerdings die HAEUFIGKEIT der Strategie, nicht Gesundheit selbst —
//   die Richtung ist also eine dokumentierte Assoziation, keine Definition.
//
// KEINE REFERENZINTERVALLE: Die Scoring Instructions nennen Schwellen fuer
//   "hoch" (>= 1 SD ueber dem Mittelwert; nach US-Normen 19+ bzw. 17+) und
//   US-Normwerte (N=508: Reappraisal M=14.39 SD=4.06; Suppression M=12.25
//   SD=4.46). Beides ist hier bewusst NICHT als qualifiedInterval mit
//   category #reference hinterlegt: Es sind US-Normen, die fuer eine deutsche
//   Stichprobe nicht ohne Weiteres gelten. Ausserdem folgt das der
//   MDR-Abgrenzung (ADR-004) — Interpretation wird dokumentiert, nicht
//   ausgeliefert.
//
// CODES: Fuer den ERQ und seine Subskalen fuehrt weder LOINC 2.83 noch
//   SNOMED CT 2026-05-01 einen Code (geprueft via fhir-terminology MCP),
//   und im mii-cs-pro-score-catalogue stehen sie ebenfalls nicht. Daher
//   lokale Codes aus dem pcor-score-catalogue. Zur Migrierbarkeit siehe
//   ScoreCatalogue.fsh und ADR-004.
// ─────────────────────────────────────────────────────────────────────────────

Instance: PcorObsDefErqsReappraisal
InstanceOf: mii-pr-pro-score-blueprint
Usage: #definition
Title: "ERQ-S Neubewertung (Cognitive Reappraisal)"
Description: "Subskala Neubewertung des ERQ-S: Summe der Items erq1, erq3 und erq8 (ERQ-S-Zählung 1, 3, 5), je 1-7. Wertebereich 3-21. Höhere Werte zeigen häufigere Nutzung der Neubewertung an, was laut Instrument mit besserem Wohlbefinden assoziiert ist. Quelle: Preece, Petrova, Mehta & Gross (2023), Scoring Instructions zum ERQ-S."
* insert ObsDefVersion
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint"

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[+] = PcorScoreCatalogueCS#erq-s-reappraisal "ERQ-S Cognitive Reappraisal Subscale Score (3-21)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 3
* qualifiedInterval.range.high.value = 21
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates more frequent use of cognitive reappraisal, which is associated with better well-being"

Instance: PcorObsDefErqsSuppression
InstanceOf: mii-pr-pro-score-blueprint
Usage: #definition
Title: "ERQ-S Unterdrückung (Expressive Suppression)"
Description: "Subskala Unterdrückung des ERQ-S: Summe der Items erq2, erq6 und erq9 (ERQ-S-Zählung 2, 4, 6), je 1-7. Wertebereich 3-21. Höhere Werte zeigen häufigere Nutzung der Unterdrückung an, was laut Instrument mit schlechterem Wohlbefinden assoziiert ist. Quelle: Preece, Petrova, Mehta & Gross (2023), Scoring Instructions zum ERQ-S."
* insert ObsDefVersion
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint"

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[+] = PcorScoreCatalogueCS#erq-s-suppression "ERQ-S Expressive Suppression Subscale Score (3-21)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 0

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = 3
* qualifiedInterval.range.high.value = 21
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates more frequent use of expressive suppression, which is associated with poorer well-being"
