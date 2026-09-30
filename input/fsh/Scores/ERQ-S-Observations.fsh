// ─────────────────────────────────────────────────────────────────────────────
// ERQ-S — die beiden Score-Observations zur Beispielantwort
//
// WOZU: ERQ-S ist das einzige der fuenf AN-Instrumente mit einer validierten
//   Scoring-Vorschrift, und PcorObsDefErqsReappraisal /
//   PcorObsDefErqsSuppression definieren die beiden Scores. Ohne Instanz bleibt
//   diese Definition aber unbelegt — diese zwei Observations zeigen, wie ein
//   Score aus einer QuestionnaireResponse hervorgeht und wie er an seine
//   Definition gebunden wird.
//
// HERKUNFT DER WERTE: gerechnet aus ERQ6Response (siehe ERQ-6-Response.fsh)
//   nach den FHIRPath-Variablen des Questionnaire:
//     erqsReappraisal = erq1 + erq3 + erq8 = 4 + 3 + 4 = 11
//     erqsSuppression = erq2 + erq6 + erq9 = 6 + 6 + 7 = 19
//   derivedFrom verweist auf genau diese Antwort, effectiveDateTime traegt
//   deren authored-Zeitpunkt. Ein Score ohne nachvollziehbare Quelle waere als
//   Beispiel wertlos.
//
// WARUM KEIN instantiatesCanonical AUF DIE OBSERVATIONDEFINITION: Das Profil
//   mii-pr-pro-score-instance bietet die Extension (0..1) an, aber R4-
//   ObservationDefinitions im MII-PRO-Modul setzen selbst kein url-Element —
//   geprueft an mii-obsdef-pro-score-gad-7. Eine Canonical liesse sich also
//   nicht aufloesen. Die Bindung laeuft stattdessen ueber Observation.code:
//   Definition und Instanz tragen DENSELBEN Katalogcode aus
//   PcorScoreCatalogueCS. Genau dafuer ist der Katalog da.
//
// EINHEIT: UCUM "1" (dimensionslos), identisch zu quantitativeDetails.unit der
//   ObservationDefinition. Quantity.unit traegt zusaetzlich "Punkte" als
//   lesbare Anzeige — Quantity.code ist der maschinenlesbare Teil, beides
//   nebeneinander ist erlaubt und hier hilfreich.
//
// KEINE INTERPRETATION: Observation.interpretation bleibt bewusst leer. Die
//   ObservationDefinition weist mit qualifiedInterval und der
//   ScoreHealthCorrelation die Richtung aus (Neubewertung: hoeher = guenstiger;
//   Unterdrueckung: hoeher = unguenstiger); eine ausfuehrbare Einordnung in
//   Kategorien waere nach MDCG 2019-11 Regel 11 ein regulatorisches Problem
//   und wird hier nicht ausgeliefert. Dass die Beispielpatientin mit 11 zu 19
//   ein fuer Anorexia nervosa typisches Muster zeigt, steht als Kommentar in
//   ERQ-6-Response.fsh und nicht als Befund in der Ressource.
//
// KEIN PROPR-BEISPIEL: PcorObsDefProprUtility bleibt ohne Instanz, weil der
//   PROMIS-16-Questionnaire nicht in PCOR-MII liegt, sondern im MII-PRO-Modul.
//   Es gibt hier also keine QuestionnaireResponse, aus der sich ein PROPr
//   ableiten liesse — ein Score ohne derivedFrom waere genau das erfundene
//   Beispiel, das oben vermieden wird.
// ─────────────────────────────────────────────────────────────────────────────

Instance: ErqsReappraisalObservation
InstanceOf: mii-pr-pro-score-instance
Usage: #example
Title: "ERQ-S Neubewertung — Beispiel-Score"
Description: "Subskalen-Score Neubewertung (11 von 3–21), berechnet aus der ERQ-S-Beispielantwort. Gebunden an PcorObsDefErqsReappraisal über den Katalogcode `erq-s-reappraisal`."
* status = #final
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = PcorScoreCatalogueCS#erq-s-reappraisal "ERQ-S Cognitive Reappraisal Subscale Score (3-21)"
* subject = Reference(pcor-mii-exa-patient)
* effectiveDateTime = "2026-06-18T09:00:00+02:00"
// performer = die Patientin selbst: ein PRO-Score geht auf eine Selbstauskunft
// zurueck. Ohne performer warnt der Validator ("Alle Observations sollten einen
// Performer haben"), und die Angabe ist hier inhaltlich richtig, nicht bloss
// warnungsvermeidend.
* performer = Reference(pcor-mii-exa-patient)
* valueQuantity.value = 11
* valueQuantity.unit = "Punkte"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #1
* derivedFrom = Reference(ERQ6Response)


Instance: ErqsSuppressionObservation
InstanceOf: mii-pr-pro-score-instance
Usage: #example
Title: "ERQ-S Unterdrückung — Beispiel-Score"
Description: "Subskalen-Score Unterdrückung (19 von 3–21), berechnet aus der ERQ-S-Beispielantwort. Gebunden an PcorObsDefErqsSuppression über den Katalogcode `erq-s-suppression`."
* status = #final
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = PcorScoreCatalogueCS#erq-s-suppression "ERQ-S Expressive Suppression Subscale Score (3-21)"
* subject = Reference(pcor-mii-exa-patient)
* effectiveDateTime = "2026-06-18T09:00:00+02:00"
// performer = die Patientin selbst: ein PRO-Score geht auf eine Selbstauskunft
// zurueck. Ohne performer warnt der Validator ("Alle Observations sollten einen
// Performer haben"), und die Angabe ist hier inhaltlich richtig, nicht bloss
// warnungsvermeidend.
* performer = Reference(pcor-mii-exa-patient)
* valueQuantity.value = 19
* valueQuantity.unit = "Punkte"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #1
* derivedFrom = Reference(ERQ6Response)
