// ─────────────────────────────────────────────────────────────────────────────
// ERQ-6: Abbildung der Dictionary-Variablen-IDs auf die FHIR-linkIds
//
// ID BLEIBT pcor-cm-erq-s-linkids, obwohl der Bogen NICHT der ERQ-S ist (siehe
//   ERQ-6.fsh). Die Id ist eine veroeffentlichte Canonical aus Release 0.3.0; sie
//   umzubenennen waere ein Bruch fuer jeden, der sie referenziert. Eine Id ist ein
//   Identifikator, keine Aussage — die Aussage steht in Title und Description.
//
// RICHTUNG — WICHTIG: Diese Map geht NICHT von PCOR-MII auf normative
//   ERQ-Nummern. Die FHIR-linkIds des Questionnaire SIND bereits die
//   normativen ERQ-Itemnummern (1, 2, 3, 6, 8, 9), verifiziert gegen den
//   autorisierten deutschen Originalbogen und den ERQ-Originalbogen.
//   Was auseinanderlaeuft, ist das ITEM LEVEL DICTIONARY: Dort laufen die
//   Variablen-IDs sequenziell erq1..erq6 durch.
//
// WARUM DIESE MAP NOETIG IST — KOLLISION: Drei Dictionary-IDs weichen ab,
//   und eine davon KOLLIDIERT:
//     erq1 -> erq1   (gleich)
//     erq2 -> erq2   (gleich)
//     erq3 -> erq3   (gleich)
//     erq4 -> erq6   (abweichend)
//     erq5 -> erq8   (abweichend)
//     erq6 -> erq9   (abweichend — UND "erq6" existiert in BEIDEN Systemen!)
//   Ein naives Mapping ueber Namensgleichheit wuerde Dictionary-erq6
//   ("Wenn ich negative Gefuehle empfinde, sorge ich dafuer, sie nicht nach
//   aussen zu zeigen") auf den FHIR-linkId erq6 legen — dort steht aber
//   "Ich halte meine Gefuehle unter Kontrolle, indem ich sie nicht nach
//   aussen zeige". Beides sind Suppressions-Items, sie klingen aehnlich,
//   und der Fehler faellt bei einer Sichtpruefung nicht auf. Genau deshalb
//   ist die Abbildung hier maschinenlesbar hinterlegt und nicht nur als
//   Tabelle auf der Instrumentenseite.
//
// MUSTER: mii-cm-pro-gad-7-linkids im MII-PRO-Modul. Wie dort steht der
//   Geltungsbereich in group.source/group.target (Typ uri), nicht in
//   ConceptMap.source[x] — Letzteres verlangt in R4 eine Canonical auf ein
//   ValueSet, waehrend die abgebildeten "Codes" hier Questionnaire-linkIds
//   sind.
//
// KEINE MIGRATIONS-MAP: Der PCOR-MII-Questionnaire wurde nie mit den
//   sequenziellen IDs veroeffentlicht. Dies ist eine Lesehilfe fuer die
//   Uebernahme von Studiendaten, die unter den Dictionary-Variablennamen
//   erhoben wurden.
// ─────────────────────────────────────────────────────────────────────────────

Instance: pcor-cm-erq-s-linkids
InstanceOf: ConceptMap
Usage: #definition
Title: "ERQ-6: Dictionary-Variablen-IDs → FHIR-linkIds"
Description: "Bildet die sequenziellen Variablen-IDs des PCOR-MII Item Level Dictionary (erq1–erq6) auf die linkIds des ERQ-6-Questionnaire ab, die den Original-ERQ-Itemnummern entsprechen (1, 2, 3, 6, 8, 9). Erforderlich, weil drei IDs abweichen und `erq6` in beiden Systemen existiert, dort aber verschiedene Items bezeichnet — ein Mapping über Namensgleichheit führt zu einer stillen Fehlzuordnung. Hinweis: Die Id dieser ConceptMap enthält historisch „erq-s“; der Bogen ist jedoch nicht der ERQ-S (siehe [ERQ-6](ERQ-6.html))."
* url = "https://bih-cei.github.io/PCOR-MII/ConceptMap/pcor-cm-erq-s-linkids"
* name = "PcorCmErqSLinkIds"
* insert InstanceVersion
* status = #draft
* experimental = true
* date = "2026-09-29"
* publisher = "BIH-CEI"
* purpose = "Lesehilfe für die Übernahme von Studiendaten, die unter den Variablennamen des Item Level Dictionary erhoben wurden, in QuestionnaireResponses zum ERQ-6-Questionnaire."

* group[+].source = "https://bih-cei.github.io/PCOR-MII/linkid/item-level-dictionary/ERQ-6"
* group[=].target = "https://bih-cei.github.io/PCOR-MII/linkid/Questionnaire/ERQ6"

* group[=].element[+].code = #erq1
* group[=].element[=].display = "Dictionary erq1 — Mehr positive Gefühle: ändere, woran ich denke"
* group[=].element[=].target.code = #erq1
* group[=].element[=].target.display = "ERQ-Item 1 (Neubewertung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #erq2
* group[=].element[=].display = "Dictionary erq2 — Ich behalte meine Gefühle für mich"
* group[=].element[=].target.code = #erq2
* group[=].element[=].target.display = "ERQ-Item 2 (Unterdrückung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #erq3
* group[=].element[=].display = "Dictionary erq3 — Weniger negative Gefühle: ändere, woran ich denke"
* group[=].element[=].target.code = #erq3
* group[=].element[=].target.display = "ERQ-Item 3 (Neubewertung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #erq4
* group[=].element[=].display = "Dictionary erq4 — Kontrolle, indem ich Gefühle nicht nach außen zeige"
* group[=].element[=].target.code = #erq6
* group[=].element[=].target.display = "ERQ-Item 6 (Unterdrückung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #erq5
* group[=].element[=].display = "Dictionary erq5 — Kontrolle, indem ich über die Situation anders nachdenke"
* group[=].element[=].target.code = #erq8
* group[=].element[=].target.display = "ERQ-Item 8 (Neubewertung)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #erq6
* group[=].element[=].display = "Dictionary erq6 — Bei negativen Gefühlen: sorge dafür, sie nicht zu zeigen (ACHTUNG: NICHT auf linkId erq6 abbilden)"
* group[=].element[=].target.code = #erq9
* group[=].element[=].target.display = "ERQ-Item 9 (Unterdrückung)"
* group[=].element[=].target.equivalence = #equal
