// ─────────────────────────────────────────────────────────────────────────────
// OPD-SFK: Abbildung der Dictionary-Variablen-IDs (= linkIds bis 0.3.0) auf die FHIR-linkIds
//
// Die linkIds des Questionnaire OPDSFK sind seit dieser Aenderung die Itemnummern
//   der 95-Item-LANGFORM OPD-SF (Tabelle 2 in Ehrenthal et al. 2015), nicht mehr
//   die sequenziellen Dictionary-IDs OPDSFK01-12 (linkId-Regel ADR-003/ADR-008,
//   Muster ERQ-6). Die Map dient zweifach: (1) Lesehilfe fuer Studiendaten, die
//   unter den Dictionary-Variablennamen erhoben wurden, (2) MIGRATION fuer
//   QuestionnaireResponses gegen OPDSFK|0.3.0, die noch OPDSFK01-12 tragen.
// Muster: pcor-cm-erq-s-linkids (Geltungsbereich in group.source/target als uri).
// ─────────────────────────────────────────────────────────────────────────────

Instance: pcor-cm-opd-sfk-linkids
InstanceOf: ConceptMap
Usage: #definition
Title: "OPD-SFK: Dictionary-Variablen-IDs (linkIds bis 0.3.0) → FHIR-linkIds (OPD-SF-Itemnummern)"
Description: "Bildet die Variablen-IDs des PCOR-MII Item Level Dictionary (OPDSFK01–OPDSFK12, zugleich die linkIds des Questionnaire OPDSFK bis Version 0.3.0) auf die linkIds des OPD-SFK-Questionnaire ab, die den Itemnummern der OPD-SF-Langform entsprechen (Ehrenthal et al. 2015, Tabelle 2)."
* url = "https://bih-cei.github.io/PCOR-MII/ConceptMap/pcor-cm-opd-sfk-linkids"
* name = "PcorCmOpdSfkLinkIds"
* insert InstanceVersion
* status = #draft
* experimental = true
* date = "2026-11-05"
* publisher = "BIH-CEI"
* purpose = "Lesehilfe für die Übernahme von Studiendaten unter den Dictionary-Variablennamen und Migrationstabelle für QuestionnaireResponses gegen OPDSFK|0.3.0."

* group[+].source = "https://bih-cei.github.io/PCOR-MII/linkid/item-level-dictionary/OPD-SFK"
* group[=].target = "https://bih-cei.github.io/PCOR-MII/linkid/Questionnaire/OPDSFK"

* group[=].element[+].code = #OPDSFK01
* group[=].element[=].display = "Dictionary OPDSFK01 — Ich erlebe mich manchmal wie eine fremde Person."
* group[=].element[=].target.code = #opdsf3
* group[=].element[=].target.display = "OPD-SFK-Item 1 = OPD-SF-Item 3 (Selbstwahrnehmung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK02
* group[=].element[=].display = "Dictionary OPDSFK02 — Wenn ich viel über mich nachdenke, gerate ich eher in Ver …"
* group[=].element[=].target.code = #opdsf27
* group[=].element[=].target.display = "OPD-SFK-Item 2 = OPD-SF-Item 27 (Selbstwahrnehmung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK03
* group[=].element[=].display = "Dictionary OPDSFK03 — Wenn man andere zu nahe an sich heran lässt, kann das gef …"
* group[=].element[=].target.code = #opdsf32
* group[=].element[=].target.display = "OPD-SFK-Item 3 = OPD-SF-Item 32 (Beziehungsmodell)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK04
* group[=].element[=].display = "Dictionary OPDSFK04 — Ich kann mich anderen oft schwer verständlich machen."
* group[=].element[=].target.code = #opdsf81
* group[=].element[=].target.display = "OPD-SFK-Item 4 = OPD-SF-Item 81 (Kontaktgestaltung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK05
* group[=].element[=].display = "Dictionary OPDSFK05 — In mir herrscht oft ein solches Gefühlschaos, dass ich es …"
* group[=].element[=].target.code = #opdsf41
* group[=].element[=].target.display = "OPD-SFK-Item 5 = OPD-SF-Item 41 (Selbstwahrnehmung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK06
* group[=].element[=].display = "Dictionary OPDSFK06 — Ich schätze manchmal falsch ein, wie mein Verhalten auf a …"
* group[=].element[=].target.code = #opdsf49
* group[=].element[=].target.display = "OPD-SFK-Item 6 = OPD-SF-Item 49 (Kontaktgestaltung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK07
* group[=].element[=].display = "Dictionary OPDSFK07 — Wenn andere viel über mich wissen, fühle ich mich oft irg …"
* group[=].element[=].target.code = #opdsf50
* group[=].element[=].target.display = "OPD-SFK-Item 7 = OPD-SF-Item 50 (Beziehungsmodell)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK08
* group[=].element[=].display = "Dictionary OPDSFK08 — Meine Gefühle sind manchmal so intensiv, dass ich Angst b …"
* group[=].element[=].target.code = #opdsf73
* group[=].element[=].target.display = "OPD-SFK-Item 8 = OPD-SF-Item 73 (Selbstwahrnehmung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK09
* group[=].element[=].display = "Dictionary OPDSFK09 — Ich bin schon sehr verletzt worden, weil ich mich in eine …"
* group[=].element[=].target.code = #opdsf78
* group[=].element[=].target.display = "OPD-SFK-Item 9 = OPD-SF-Item 78 (Beziehungsmodell)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK10
* group[=].element[=].display = "Dictionary OPDSFK10 — Es fällt mir schwer, zu anderen Kontakt aufzunehmen."
* group[=].element[=].target.code = #opdsf79
* group[=].element[=].target.display = "OPD-SFK-Item 10 = OPD-SF-Item 79 (Kontaktgestaltung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK11
* group[=].element[=].display = "Dictionary OPDSFK11 — Ich habe kein gutes Selbstbewusstsein."
* group[=].element[=].target.code = #opdsf40
* group[=].element[=].target.display = "OPD-SFK-Item 11 = OPD-SF-Item 40 (Kontaktgestaltung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK12
* group[=].element[=].display = "Dictionary OPDSFK12 — Meine Erfahrung ist: Wenn man Menschen zu sehr vertraut, …"
* group[=].element[=].target.code = #opdsf90
* group[=].element[=].target.display = "OPD-SFK-Item 12 = OPD-SF-Item 90 (Beziehungsmodell)"
* group[=].element[=].target.equivalence = #equal

* group[+].source = "https://bih-cei.github.io/PCOR-MII/linkid/Questionnaire/OPDSFK/0.3.0"
* group[=].target = "https://bih-cei.github.io/PCOR-MII/linkid/Questionnaire/OPDSFK"

* group[=].element[+].code = #OPDSFK01
* group[=].element[=].display = "Dictionary OPDSFK01 — Ich erlebe mich manchmal wie eine fremde Person."
* group[=].element[=].target.code = #opdsf3
* group[=].element[=].target.display = "OPD-SFK-Item 1 = OPD-SF-Item 3 (Selbstwahrnehmung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK02
* group[=].element[=].display = "Dictionary OPDSFK02 — Wenn ich viel über mich nachdenke, gerate ich eher in Ver …"
* group[=].element[=].target.code = #opdsf27
* group[=].element[=].target.display = "OPD-SFK-Item 2 = OPD-SF-Item 27 (Selbstwahrnehmung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK03
* group[=].element[=].display = "Dictionary OPDSFK03 — Wenn man andere zu nahe an sich heran lässt, kann das gef …"
* group[=].element[=].target.code = #opdsf32
* group[=].element[=].target.display = "OPD-SFK-Item 3 = OPD-SF-Item 32 (Beziehungsmodell)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK04
* group[=].element[=].display = "Dictionary OPDSFK04 — Ich kann mich anderen oft schwer verständlich machen."
* group[=].element[=].target.code = #opdsf81
* group[=].element[=].target.display = "OPD-SFK-Item 4 = OPD-SF-Item 81 (Kontaktgestaltung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK05
* group[=].element[=].display = "Dictionary OPDSFK05 — In mir herrscht oft ein solches Gefühlschaos, dass ich es …"
* group[=].element[=].target.code = #opdsf41
* group[=].element[=].target.display = "OPD-SFK-Item 5 = OPD-SF-Item 41 (Selbstwahrnehmung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK06
* group[=].element[=].display = "Dictionary OPDSFK06 — Ich schätze manchmal falsch ein, wie mein Verhalten auf a …"
* group[=].element[=].target.code = #opdsf49
* group[=].element[=].target.display = "OPD-SFK-Item 6 = OPD-SF-Item 49 (Kontaktgestaltung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK07
* group[=].element[=].display = "Dictionary OPDSFK07 — Wenn andere viel über mich wissen, fühle ich mich oft irg …"
* group[=].element[=].target.code = #opdsf50
* group[=].element[=].target.display = "OPD-SFK-Item 7 = OPD-SF-Item 50 (Beziehungsmodell)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK08
* group[=].element[=].display = "Dictionary OPDSFK08 — Meine Gefühle sind manchmal so intensiv, dass ich Angst b …"
* group[=].element[=].target.code = #opdsf73
* group[=].element[=].target.display = "OPD-SFK-Item 8 = OPD-SF-Item 73 (Selbstwahrnehmung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK09
* group[=].element[=].display = "Dictionary OPDSFK09 — Ich bin schon sehr verletzt worden, weil ich mich in eine …"
* group[=].element[=].target.code = #opdsf78
* group[=].element[=].target.display = "OPD-SFK-Item 9 = OPD-SF-Item 78 (Beziehungsmodell)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK10
* group[=].element[=].display = "Dictionary OPDSFK10 — Es fällt mir schwer, zu anderen Kontakt aufzunehmen."
* group[=].element[=].target.code = #opdsf79
* group[=].element[=].target.display = "OPD-SFK-Item 10 = OPD-SF-Item 79 (Kontaktgestaltung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK11
* group[=].element[=].display = "Dictionary OPDSFK11 — Ich habe kein gutes Selbstbewusstsein."
* group[=].element[=].target.code = #opdsf40
* group[=].element[=].target.display = "OPD-SFK-Item 11 = OPD-SF-Item 40 (Kontaktgestaltung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #OPDSFK12
* group[=].element[=].display = "Dictionary OPDSFK12 — Meine Erfahrung ist: Wenn man Menschen zu sehr vertraut, …"
* group[=].element[=].target.code = #opdsf90
* group[=].element[=].target.display = "OPD-SFK-Item 12 = OPD-SF-Item 90 (Beziehungsmodell)"
* group[=].element[=].target.equivalence = #equal
