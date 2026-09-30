// ─────────────────────────────────────────────────────────────────────────────
// PROPr — PROMIS-Preference Score (Utility)
// Quelle: Dewitt B, Feeny D, Fischhoff B, Cella D, Hays RD, Hess R, Pilkonis PA,
//   Revicki DA, Roberts MS, Tsevat J, Yu L, Hanmer J. "Estimation of a
//   Preference-Based Summary Score for the Patient-Reported Outcomes Measurement
//   Information System: The PROMIS-Preference (PROPr) Scoring System."
//   Med Decis Making 2018;38(6):683-698. doi:10.1177/0272989X18776637
//
// EINORDNUNG: PROPr ist ein PROMIS-SPEZIFISCHER Score — er beruht auf den
//   PROMIS-Domänenkalibrierungen und ist außerhalb von PROMIS nicht berechenbar.
//   Er ist aber NICHT profilspezifisch: Er rechnet auf DOMAENEN-T-SCORES
//   (theta = (T - 50) / 10), nicht auf Items, und ist daher aus jedem
//   PROMIS-Profil ableitbar, das die sieben Eingangsdomänen abdeckt —
//   PROMIS-16, PROMIS-29+2 oder CATs. Deshalb steht er hier als eigenes
//   Artefakt und nicht als "PROMIS-16-Score". Strukturell ist er das
//   Gegenstück zum EQ-5D-5L-Index (siehe mii-obsdef-pro-score-eq5d5l-index).
//
// ZUSTAENDIGKEIT: Weil PROPr PROMIS-spezifisch ist und das MII-PRO-Modul die
//   PROMIS-Artefakte pflegt, gehört dieses Artefakt der Sache nach DORTHIN —
//   sowohl der Katalogcode als auch diese ObservationDefinition. Was hier
//   steht, ist eine ARBEITSFAEHIGE VORWEGNAHME für die Erprobung in PCOR-MII,
//   kein Anspruch auf dauerhafte Zuständigkeit. Nachzuziehen upstream:
//   (1) Code "promis-propr-utility" im mii-cs-pro-score-catalogue
//       (Konvention dort: <Instrumentenfamilie>-<Score>, vgl.
//       promis-29-anxiety-tscore, promis-cognitive-function-sf4a-raw),
//   (2) mii-obsdef-pro-score-promis-propr-utility nach dem Muster des
//       EQ-5D-Index,
//   (3) Verweis vom PROMIS-16-Questionnaire auf den Score.
//   Sobald das geschehen ist, wird der MII-Code hier als zusätzliches
//   code.coding ergänzt (siehe unten) und die Pflege wandert upstream.
//   Siehe ADR-003 und ADR-004.
//
// SIEBEN EINGANGSDOMAENEN (Anxiety gehört NICHT dazu):
//   Cognitive Function-Abilities, Depression, Fatigue, Pain Interference,
//   Physical Function, Sleep Disturbance, Ability to Participate in Social
//   Roles and Activities.
//   In PCOR-MII liefert der PROMIS-16 alle sieben; das Anxiety-Item des
//   PROMIS-16 bleibt für den PROPr ungenutzt.
//
// WERTEBEREICH -0.022 bis 1.0: 0 = tot, 1 = bestmögliche Gesundheit. Der
//   negative Rand entsteht, weil einzelne PROMIS-Zustände in der
//   Standard-Gamble-Erhebung als "schlechter als tot" bewertet wurden.
//   Höherer Wert = bessere Gesundheit (ScoreHealthCorrelation = increase).
//
// CODE: Für PROPr existiert WEDER ein LOINC- NOCH ein SNOMED-Code
//   (geprüft 2026-09-29 via fhir-terminology MCP: LOINC 2.83 und
//   SNOMED CT 2026-05-01, je 0 Treffer), und im mii-cs-pro-score-catalogue
//   ist er ebenfalls noch nicht geführt. Daher ein PCOR-MII-eigener Code.
//   Das Blueprint-Profil lässt das ausdrücklich zu — und zwar deutlicher als
//   ein "extensible" Binding es täte (geprüft 2026-09-29 gegen das Profil im
//   Dependency-Paket):
//     - Auf ObservationDefinition.code setzt das Blueprint GAR KEIN eigenes
//       Binding. Es gilt allein das ererbte FHIR-Basisbinding mit der Stärke
//       "example" (http://hl7.org/fhir/ValueSet/observation-codes) — die
//       schwächste Stufe, rein illustrativ.
//     - Der Score-Katalog ist NICHT per Binding eingebunden, sondern als
//       Slice mit fixedUri auf coding.system.
//     - code.coding hat slicing.rules = OPEN (Diskriminator: value on system).
//       Zusätzliche Codings mit anderem System sind also vorgesehen, nicht
//       nur geduldet.
//   Die Slices snomed/loinc/mii sind zudem sämtlich 0..1; verpflichtend ist
//   allein code.coding 1..*. Weil code.coding mehrfach belegbar ist, kann ein
//   künftiger MII-Katalogcode später ERGAENZT werden, ohne den lokalen zu
//   entfernen — Migration durch Hinzufügen statt Ersetzen. Siehe ADR-004.
//
// KEINE AUSFUEHRBARE BERECHNUNG: Hier wird nur DEFINIERT, was der Score ist
//   und in welchem Bereich er liegt — die Berechnung selbst (multiplikatives
//   Multi-Attribute-Utility-Modell) ist bewusst nicht mitgeliefert. Sie steht
//   als Referenzimplementierung in R, SAS, Stata und Python unter
//   https://github.com/janelhanmer/PROPr bereit. Das folgt der MDR-Abgrenzung
//   des MII-PRO-Moduls (siehe ADR-004).
// ─────────────────────────────────────────────────────────────────────────────

// Der Score-Katalog PcorScoreCatalogueCS liegt in ScoreCatalogue.fsh.

Instance: PcorObsDefProprUtility
InstanceOf: mii-pr-pro-score-blueprint
Usage: #definition
Title: "PROPr — PROMIS-Preference Utility Score"
Description: "Präferenzbasierter Nutzwert (Utility) über sieben PROMIS-Domänen: Cognitive Function-Abilities, Depression, Fatigue, Pain Interference, Physical Function, Sleep Disturbance sowie Ability to Participate in Social Roles and Activities. Die Anxiety-Domäne geht NICHT ein. Wertebereich -0,022 bis 1,0 (0 = tot, 1 = bestmögliche Gesundheit); höhere Werte zeigen bessere Gesundheit an. Berechnet wird aus Domänen-T-Scores (theta = (T-50)/10), nicht aus Items — damit aus PROMIS-16, PROMIS-29+2 oder CATs gleichermaßen ableitbar. PROMIS-spezifisch, aber nicht an ein einzelnes PROMIS-Profil gebunden. Quelle: Dewitt et al., Med Decis Making 2018;38(6):683-698. Vorläufig in PCOR-MII gepflegt; die Zuständigkeit liegt beim MII-PRO-Modul."
* insert ObsDefVersion
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-score-blueprint"

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code.coding[+] = PcorScoreCatalogueCS#promis-propr-utility "PROMIS-Preference (PROPr) Utility Score"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* quantitativeDetails.unit = $UCUM#1
* quantitativeDetails.decimalPrecision = 3

* qualifiedInterval.category = #absolute
* qualifiedInterval.range.low.value = -0.022
* qualifiedInterval.range.high.value = 1
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase
* qualifiedInterval.range.extension[ScoreHealthCorrelation].valueCodeableConcept.text = "Higher score indicates better health status"
