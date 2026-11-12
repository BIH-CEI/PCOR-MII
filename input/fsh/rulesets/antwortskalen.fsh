// ─────────────────────────────────────────────────────────────────────────────
// Geteilte Antwortskalen als RuleSets (projektweit, instrumentenübergreifend)
//
// JA/NEIN NACH TC-TERMINOLOGIEN-BEST-PRACTICE (ADR-013, 2026-11-05):
//   Für generische Ja/Nein-Antworten empfiehlt der Leitfaden "Best Practice bei der
//   Implementierung und Spezifizierung mit HL7" (TC Terminologien, HL7 Deutschland /
//   Interop Council) die SNOMED-CT-Codes 373066001 (Yes) und 373067005 (No). Das
//   MII-PRO-Modul setzt das seit 2026.6.0 so um (RuleSet YesNoAnswerOptions in
//   rulesets/answer-scales.fsh, genutzt von SCOFF, PC-PTSD, WI-7, SSD-12).
//
// WARUM INLINE answerOption: An SNOMED-Konzepte lässt sich keine eigene Property hängen,
//   ein answerValueSet über SNOMED trüge also weder itemWeight noch Übersetzungen. Inline
//   ist zugleich der Weg des PRO-Moduls — identisches Muster beim Übergang nach upstream.
//
// SPRACHE: Bewusst keine hartkodierte deutsche Übersetzung für Ja/Nein — SNOMED CT führt
//   die deutschen Designations selbst ("Ja"/"Nein", geprüft 2026-11-10 über den
//   MII-Snowstorm, deutschsprachige Editionen); sie kommen über den Terminologie-Service.
//   Als display steht trotzdem das englische "Yes"/"No" wie im Modul: Der IG Publisher
//   validiert gegen tx.fhir.org (International Edition ohne deutsche Designations), dort
//   ist "Ja" ein FEHLER ("Wrong Display Name"), "Yes" nur eine Warnung (kein de-Display).
//   Geprüft 2026-11-10 mit beiden Varianten. AUSNAHME: 385432009 "Not applicable" hat in keiner
//   deutschsprachigen Edition eine Designation, LOINC LA31066-6 nur Englisch. Diese beiden
//   tragen deshalb die deutsche Fassung als translation-Extension am display (Muster DEM).
//   Übersetzungswunsch für 385432009 und 1156316003 an das NRC (snomed@bfarm.de) vorbereitet
//   (2026-11-10); sobald die Designations im de-DE-Release stehen, Extensions entfernen.
//
// GEWICHTE: Keine. Die Ja/Nein-Items der Anamnese werden nicht gescort. Wo ein Score ein
//   Ja/Nein zählt, ist die itemWeight-Extension an der answerOption nachzurüsten
//   (SDC 3, Muster [[itemweight-statt-ordinalvalue]] im Modul: itemWeight).
//
// MIGRATION (2026-11-10, Release 0.9.0): Alle sieben Bestandsbögen (DEM, MHI, ACE,
//   EDE-Q6, UKHD-LE, UKHD-ND, PHQ-D Panik-Block; 26 Items) sind auf diese RuleSets
//   umgestellt; das lokale CodeSystem dem-antwort und seine drei ValueSets sind entfernt.
//   Breaking Change gegenüber 0.3.0 (Release-Notes). Die beiden dreiwertigen Fälle des DEM
//   folgen derselben Empfehlung: "Nicht zutreffend" = SNOMED 385432009 (Level 0),
//   "Möchte ich nicht sagen" = LOINC LA31066-6 Refused to answer (Level 1, Equal).
// ─────────────────────────────────────────────────────────────────────────────

// Anwendung: * item[+] ... * type = #choice ... * insert JaNeinSnomed
RuleSet: JaNeinSnomed
* answerOption[+].valueCoding = $SCT#373066001 "Yes"
* answerOption[+].valueCoding = $SCT#373067005 "No"

// Anwendung: Q_MONMED im DEM (Ja/Nein/Nicht zutreffend)
RuleSet: JaNeinNichtZutreffendSnomed
* answerOption[+].valueCoding = $SCT#373066001 "Yes"
* answerOption[+].valueCoding = $SCT#373067005 "No"
* answerOption[+].valueCoding = $SCT#385432009 "Not applicable"
* answerOption[=].valueCoding.display.extension[+].url = $translation
* answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Nicht zutreffend"

// Anwendung: Q_GENDERID im DEM (Ja/Nein/Möchte ich nicht sagen = Antwort verweigert)
RuleSet: JaNeinKeineAngabeSnomed
* answerOption[+].valueCoding = $SCT#373066001 "Yes"
* answerOption[+].valueCoding = $SCT#373067005 "No"
* answerOption[+].valueCoding = $LOINC#LA31066-6 "Refused to answer"
* answerOption[=].valueCoding.display.extension[+].url = $translation
* answerOption[=].valueCoding.display.extension[=].extension[+].url = "lang"
* answerOption[=].valueCoding.display.extension[=].extension[=].valueCode = #de
* answerOption[=].valueCoding.display.extension[=].extension[+].url = "content"
* answerOption[=].valueCoding.display.extension[=].extension[=].valueString = "Möchte ich nicht sagen"
