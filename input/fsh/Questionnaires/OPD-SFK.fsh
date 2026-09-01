// ─────────────────────────────────────────────────────────────────────────────
// OPD-SFK — OPD-Strukturfragebogen, 12-Item-Kurzversion
// Quelle: Ehrenthal JC, Dinger U, Schauenburg H, Horsch L, Dahlbender RW, Gierk B.
//   "Entwicklung einer Zwölf-Item-Version des OPD-Strukturfragebogens (OPD-SFK)."
//   Z Psychosom Med Psychother 2015; 61(3):262-274. doi:10.13109/zptm.2015.61.3.262
// Rechtehinweise: siehe `copyright` auf dem Questionnaire unten.
//
// STRUKTUR: 12 Items, 5-stufige Skala (0-4): trifft gar nicht zu ... trifft
//   völlig zu. Item 1 trägt im Original einen für alle 12 Items geltenden
//   Instruktionstext -> hier als eigenständiges display-Item vorangestellt.
//
// ANTWORT-MUSTER: item.answerValueSet -> lokales ValueSet (analog DEM/MHI).
//   Eigenes CodeSystem OpdSfkAntwortCS mit ordinalValue-Property je Konzept
//   (0-4) für SDC-Summenscoring via .ordinal() (Muster: mii-cs-pro-whodas-12
//   im MII-PRO-Modul). Display-Werte deutsch (Fragebogensprache); keine
//   erfundenen englischen designations ergänzt, da keine belegte offizielle
//   englische Übersetzung dieser Kurzskala vorliegt.
//
// SCORING: Laut Publikation (S. 271) wird primär der Globalwert empfohlen;
//   die drei Subskalen (Selbstwahrnehmung, Beziehungsmodell, Kontaktgestaltung,
//   je 4 Items) sind laut Autor:innen nur explorativ auszuwerten.
//   Globalwert = SUMMENWERT über alle 12 Items (nicht Mittelwert), belegt durch
//   Tabelle 2 (S. 269): "Summenwert (Cronbachs α=0.88;0.89) 18.32 9.16 21.82 9.93"
//   bei Item-Mittelwerten von ca. 1.0-2.1 je Item über 12 Items - nur als Summe
//   (nicht Mittelwert) konsistent mit diesen Werten. Zusätzlich Diskussion (S. 270):
//   "[...] beim Zusammenfassen aller 12 Items zu einer einzigen Skala scheint das
//   Aggregieren der einzelnen Itemwerte zu einem Summenwert gerechtfertigt" und
//   Fazit (S. 271): "Primär wird empfohlen, den Globalwert zu verwenden [...]
//   Ebenso ist er durch die Bildung von Summen- anstelle von Mittelwerten leichter
//   auszuwerten als die Vollversion des OPD-SF." -> Range 0-48 (12 Items x 0-4).
//   Globalwert-Item unten als SDC calculatedExpression (Summe via .ordinal()) umgesetzt.
//
//   Subskalen NICHT implementiert (Auftrag): die inhaltliche Zusammensetzung der
//   drei Subskalen wird im Fließtext beschrieben (S. 402-411: Selbstwahrnehmung /
//   Beziehungsmodell / Kontaktgestaltung), eine explizite Item-Nummer-zu-Subskala-
//   Zuordnungstabelle liegt im Text jedoch nicht vor; die zugehörige Faktorladungs-
//   Abbildung (Abbildung 1, S. 269 im PDF) ist eine Grafik und war aus dem PDF nicht
//   zuverlässig als Text extrahierbar. Offener Punkt, falls Subskalen später doch
//   gebraucht werden: Zuordnung anhand von Abbildung 1 im Original-PDF verifizieren.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: OpdSfkAntwortCS
Id: opd-sfk-antwort
Title: "OPD-SFK Antwortskala (Codes)"
Description: "5-stufige Antwortskala des OPD-SFK (0 = trifft gar nicht zu ... 4 = trifft völlig zu). ordinalValue-Property je Konzept für SDC-Summenscoring via .ordinal()."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerischer Ordinalwert (0-4) für SDC-Summenscoring über .ordinal()."
* ^property[=].type = #decimal
* #trifft-gar-nicht-zu "Trifft gar nicht zu"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 0
* #trifft-eher-nicht-zu "Trifft eher nicht zu"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #teils-teils "Teils/teils"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2
* #trifft-eher-zu "Trifft eher zu"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 3
* #trifft-voellig-zu "Trifft völlig zu"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 4

ValueSet: OpdSfkAntwortVS
Id: opd-sfk-antwort-vs
Title: "OPD-SFK Antwortskala"
Description: "5-stufige Antwortskala des OPD-SFK (0 = trifft gar nicht zu ... 4 = trifft völlig zu)."
* ^status = #draft
* ^experimental = true
* include codes from system OpdSfkAntwortCS
* ^expansion.timestamp = "2026-09-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/opd-sfk-antwort|0.1.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/opd-sfk-antwort"
* ^expansion.contains[=].code = #trifft-gar-nicht-zu
* ^expansion.contains[=].display = "Trifft gar nicht zu"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/opd-sfk-antwort"
* ^expansion.contains[=].code = #trifft-eher-nicht-zu
* ^expansion.contains[=].display = "Trifft eher nicht zu"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/opd-sfk-antwort"
* ^expansion.contains[=].code = #teils-teils
* ^expansion.contains[=].display = "Teils/teils"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/opd-sfk-antwort"
* ^expansion.contains[=].code = #trifft-eher-zu
* ^expansion.contains[=].display = "Trifft eher zu"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/opd-sfk-antwort"
* ^expansion.contains[=].code = #trifft-voellig-zu
* ^expansion.contains[=].display = "Trifft völlig zu"

Instance: OPD-SFK
InstanceOf: Questionnaire
Usage: #definition
Title: "OPD-SFK — OPD-Strukturfragebogen, 12-Item-Kurzversion"
Description: "OPD-Strukturfragebogen Kurzform (OPD-SFK): 12 Items, 5-stufige Skala (trifft gar nicht zu ... trifft völlig zu). Screeninginstrument für strukturelle Persönlichkeitsfunktion (Ehrenthal et al. 2015). Globalwert = Summe über alle 12 Items (0-48); die drei Subskalen (Selbstwahrnehmung, Beziehungsmodell, Kontaktgestaltung) sind laut Autor:innen nur explorativ und hier nicht implementiert. Rechtehinweise siehe `copyright`."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/OPD-SFK"
* name = "OPDSFK"
* version = "0.1.0"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-09-01"
* publisher = "BIH-CEI"
* copyright = "Quelle: Ehrenthal JC, Dinger U, Schauenburg H, Horsch L, Dahlbender RW, Gierk B. Entwicklung einer Zwölf-Item-Version des OPD-Strukturfragebogens (OPD-SFK). Z Psychosom Med Psychother 2015; 61(3):262-274. doi:10.13109/zptm.2015.61.3.262. Verlagsrechte: © 2015 Vandenhoeck & Ruprecht GmbH & Co. KG, Göttingen. Der Artikel ist beim Verlag als Open Access verfügbar; eine explizite Creative-Commons-Lizenz ist dort nicht ausgewiesen. Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei verfügbar, nach erfolgter Rücksprache mit den Autor:innen. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen bzw. beim Verlag; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt (Profile, Codes, Kodierung) unterliegt der Repository-Lizenz (CC-BY-4.0)."

// FHIR variable: Globalwert = Summe der 12 Item-Antworten (ordinalValue 0-4).
// Beleg für Summe (statt Mittelwert): siehe Kopfkommentar / Ehrenthal et al. 2015, Tab. 2 + S. 271.
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "opdSfkSumme"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId.matches('^OPDSFK(0[1-9]|1[0-2])$')).answer.value.ordinal().sum()"

// ── Instruktionstext (gilt für alle 12 Items) ─────────────────────────────────
* item[+]
  * linkId = "opd-sfk-intro"
  * text = "Auf der folgenden Seite finden Sie eine Reihe von Aussagen, mit denen verschiedene Eigenschaften von Personen beschrieben werden. Bitte geben Sie an, wie sehr diese Aussagen auf Sie zutreffen. Kreuzen Sie bitte diejenige Antwort an, die im Allgemeinen auf Sie am besten zutrifft. Dabei gibt es keine richtigen oder falschen Antworten, weil jeder Mensch im Erleben anders ist."
  * type = #display

// ── 12 Items (linkId = PCOR-Variablen-ID OPDSFK01-12) ─────────────────────────
* item[+]
  * linkId = "OPDSFK01"
  * text = "Ich erlebe mich manchmal wie eine fremde Person."
  * type = #choice
  * answerValueSet = Canonical(OpdSfkAntwortVS)
* item[+]
  * linkId = "OPDSFK02"
  * text = "Wenn ich viel über mich nachdenke, gerate ich eher in Verwirrung."
  * type = #choice
  * answerValueSet = Canonical(OpdSfkAntwortVS)
* item[+]
  * linkId = "OPDSFK03"
  * text = "Wenn man andere zu nahe an sich heran lässt, kann das gefährlich werden."
  * type = #choice
  * answerValueSet = Canonical(OpdSfkAntwortVS)
* item[+]
  * linkId = "OPDSFK04"
  * text = "Ich kann mich anderen oft schwer verständlich machen."
  * type = #choice
  * answerValueSet = Canonical(OpdSfkAntwortVS)
* item[+]
  * linkId = "OPDSFK05"
  * text = "In mir herrscht oft ein solches Gefühlschaos, dass ich es gar nicht beschreiben könnte."
  * type = #choice
  * answerValueSet = Canonical(OpdSfkAntwortVS)
* item[+]
  * linkId = "OPDSFK06"
  * text = "Ich schätze manchmal falsch ein, wie mein Verhalten auf andere wirkt."
  * type = #choice
  * answerValueSet = Canonical(OpdSfkAntwortVS)
* item[+]
  * linkId = "OPDSFK07"
  * text = "Wenn andere viel über mich wissen, fühle ich mich oft irgendwie kontrolliert oder beobachtet."
  * type = #choice
  * answerValueSet = Canonical(OpdSfkAntwortVS)
* item[+]
  * linkId = "OPDSFK08"
  * text = "Meine Gefühle sind manchmal so intensiv, dass ich Angst bekomme."
  * type = #choice
  * answerValueSet = Canonical(OpdSfkAntwortVS)
* item[+]
  * linkId = "OPDSFK09"
  * text = "Ich bin schon sehr verletzt worden, weil ich mich in einem Menschen getäuscht hatte."
  * type = #choice
  * answerValueSet = Canonical(OpdSfkAntwortVS)
* item[+]
  * linkId = "OPDSFK10"
  * text = "Es fällt mir schwer, zu anderen Kontakt aufzunehmen."
  * type = #choice
  * answerValueSet = Canonical(OpdSfkAntwortVS)
* item[+]
  * linkId = "OPDSFK11"
  * text = "Ich habe kein gutes Selbstbewusstsein."
  * type = #choice
  * answerValueSet = Canonical(OpdSfkAntwortVS)
* item[+]
  * linkId = "OPDSFK12"
  * text = "Meine Erfahrung ist: Wenn man Menschen zu sehr vertraut, kann man böse Überraschungen erleben."
  * type = #choice
  * answerValueSet = Canonical(OpdSfkAntwortVS)

// ── Globalwert (Summenwert, primäre Auswertung laut Publikation) ─────────────
* item[+]
  * linkId = "opd-sfk-globalwert"
  * text = "OPD-SFK Globalwert (Summenwert, 0-48)"
  * type = #decimal
  * readOnly = true
  * extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
  * extension[=].valueExpression.name = "opdSfkGlobalwert"
  * extension[=].valueExpression.language = #text/fhirpath
  * extension[=].valueExpression.expression = "%opdSfkSumme"
