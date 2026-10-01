// ─────────────────────────────────────────────────────────────────────────────
// UKHD-EDP — Essstoerungspathologie, 11 Items (Entitaet AN, Kategorie DCH)
//
// ⚠️ METADATA-ONLY. Dieser Bogen bildet BEWUSST KEINEN ORIGINALWORTLAUT ab.
//    Abgebildet sind nur Struktur, linkIds, Itemzahl, Antwortformat und
//    Wertebereiche. Die Item-Texte unten sind NEUTRALE, selbst formulierte
//    Beschreibungen dessen, WAS erfragt wird — nicht, WIE es erfragt wird. Die
//    Antwortstufen sind neutral als "Stufe 1" bis "Stufe 6" benannt statt mit
//    ihren Originalbezeichnungen. Muster: WAI.fsh im selben Verzeichnis.
//
// WARUM — zwei Gruende, die unabhaengig voneinander tragen:
//
//   (1) VERMUTLICH EIN EDI-2-ZUSCHNITT. Das UKHD-Praefix legt eine
//       Eigenentwicklung nahe, aber die elf Items bilden je genau ein
//       Konstrukt ab, und die Liste entspricht den elf Subskalen des EDI-2
//       (Eating Disorder Inventory-2, Garner 1991; deutsche Fassung Paul &
//       Thiel, Hogrefe): Schlankheitsstreben, Bulimie, Koerperunzufriedenheit,
//       Ineffektivitaet, Perfektionismus, Misstrauen, interozeptive
//       Wahrnehmung, Angst vor dem Erwachsenwerden, Askese, Impulsregulation,
//       soziale Unsicherheit. Das ist dasselbe Zuschnittmuster wie bei EDE-Q6,
//       ANSOCQ-2 und SSUK-2: ein Item je Skala.
//
//       Ein zusaetzliches Indiz ist das ANTWORTFORMAT: eine SECHSSTUFIGE
//       Zustimmungsskala. Das EDI-2 nutzt genau sechs Stufen — die uebrigen
//       Instrumente der AN-Batterie nutzen vier, fuenf oder sieben.
//
//       Das EDI-2 ist deutsch ein HOGREFE-TESTVERFAHREN, also verlegte Ware
//       wie das BDI-II. Fuer das BDI-II fuehrt das MII-PRO-Modul genau diese
//       Konsequenz: "commercial (Pearson) — data + scoring only, not
//       displayable".
//
//       NICHT BESTAETIGT: Die Zuordnung stuetzt sich auf Inhalt und
//       Antwortformat, NICHT auf einen Wortlautabgleich mit dem deutschen
//       EDI-2-Bogen. Das ist der erste zu pruefende Schritt.
//
//   (2) AUCH OHNE DAS: KEINE DOKUMENTIERTE FREIGABE. Die
//       DIZ-Implementierungsliste fuehrt ausschliesslich publizierte
//       Instrumente; weder "EDI" noch "UKHD-EDP" kommen dort vor. Fuer
//       entworfene Item-Batterien der Standorte gilt nach dem offenen Punkt
//       auf der Seite Designentscheidungen: ohne Freigabe kein Wortlaut.
//
//   Metadata-only ist damit unter BEIDEN Lesarten richtig — die Entscheidung
//   haengt nicht daran, die Identifikation vorher aufzuloesen. Das ist der
//   eigentliche Grund, es jetzt so zu modellieren statt zu warten.
//
// KEIN SCORE: Das EDI-2 wertet ueber Subskalen aus, die aus mehreren Items
//   bestehen. Ein Item je Skala bildet die Skala nicht ab — dieselbe Logik wie
//   bei EDE-Q6, ANSOCQ-2 und SSUK-2 (ADR-003 Punkt 3). Die Antwortcodes tragen
//   ordinalValue, damit eine spaetere Auswertung moeglich bleibt.
//
// KEIN Questionnaire.code: Solange die Identifikation nicht bestaetigt ist,
//   waere jede Code-Vergabe eine Behauptung ueber die Instrumentenidentitaet.
//
// LINKIDS: die Dictionary-Variablen-IDs edp1-edp11. Eine Instrumenten-
//   Nummerierung ist nicht bekannt — waere es bestaetigt das EDI-2, muessten
//   die linkIds nach ADR-008 Regel 1 dessen Itemnummern tragen. Auch das ist
//   erst nach der Bestaetigung zu entscheiden.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: UkhdEdpStufe6CS
Id: ukhd-edp-stufe-6
Title: "UKHD-EDP Antwortstufen (neutralisiert, 6-stufig)"
Description: "Sechsstufige Zustimmungsskala des UKHD-EDP, **neutral benannt**. Die Originalbezeichnungen der Antwortstufen sind bewusst nicht abgebildet (metadata-only, siehe Questionnaire). `ordinalValue` 1–6 bildet die Stufenfolge ab, damit eine spätere Auswertung möglich bleibt."
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-edp-stufe-6"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Stufe der Zustimmungsskala (1-6)."
* ^property[=].type = #decimal
* #1 "Stufe 1 (geringste Zustimmung)"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #2 "Stufe 2"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2
* #3 "Stufe 3"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 3
* #4 "Stufe 4"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 4
* #5 "Stufe 5"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 5
* #6 "Stufe 6 (höchste Zustimmung)"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 6

ValueSet: UkhdEdpStufe6VS
Id: ukhd-edp-stufe-6-vs
Title: "UKHD-EDP Antwortstufen (neutralisiert)"
Description: "Antwortstufen des UKHD-EDP in neutralisierter Form — siehe CodeSystem."
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-edp-stufe-6-vs"
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system UkhdEdpStufe6CS


Instance: UKHDEDP
InstanceOf: Questionnaire
Usage: #definition
Title: "UKHD-EDP — Essstörungspathologie (11 Items, metadata-only)"
Description: "Elf Items zur Essstörungspathologie aus der AN-Batterie des UKHD. **Metadata-only:** Struktur, `linkId`s, Antwortformat und Wertebereiche sind abgebildet, der Originalwortlaut der Items und der Antwortstufen bewusst nicht. Grund: Der Block ist vermutlich ein Zuschnitt des EDI-2 (je ein Item pro Subskala) — eines Hogrefe-Testverfahrens —, und unabhängig davon liegt für die Standort-Itemgruppen keine dokumentierte Freigabe vor. Kein Score: Ein Item je Subskala bildet die Subskala nicht ab."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDEDP"
* name = "UKHDEDP"
* language = #de
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#ukhd-edp "UKHD-EDP"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-10-01"
* publisher = "BIH-CEI"
* copyright = "⚠️ Metadata-only. Dieser Questionnaire bildet bewusst KEINEN Originalwortlaut ab — die Item-Texte sind neutrale, selbst formulierte Beschreibungen des erfragten Konstrukts, die Antwortstufen sind neutral benannt. Zwei Gründe, die unabhängig voneinander tragen: (1) Der Block ist vermutlich ein Zuschnitt des Eating Disorder Inventory-2 (EDI-2; Garner 1991, deutsche Fassung Paul & Thiel, Hogrefe) — je ein Item pro Subskala —, also eines verlegten Testverfahrens; die Identifikation stützt sich auf Inhalt und das sechsstufige Antwortformat, nicht auf einen Wortlautabgleich und ist daher nicht bestätigt. (2) Unabhängig davon führt die DIZ-Implementierungsliste PCOR-MII die standortspezifischen Itemgruppen gar nicht; eine Freigabe des Universitätsklinikums Heidelberg liegt nicht dokumentiert vor. Der vollständige Wortlaut ist über den Rechteinhaber zu beziehen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."

// Designentscheidungen maschinenlesbar (ADR-003 Punkt 5)
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen:** (1) **Metadata-only** nach dem Muster des [WAI](WAI.html): Struktur, `linkId`s, Itemzahl, Antwortformat und Wertebereiche sind abgebildet; Item-Texte sind neutrale Beschreibungen des erfragten Konstrukts, Antwortstufen neutral benannt. (2) **Zwei unabhängige Gründe dafür** — der Block ist vermutlich ein EDI-2-Zuschnitt (Hogrefe-Testverfahren), und für die Standort-Itemgruppen liegt ohnehin keine dokumentierte Freigabe vor. Metadata-only ist unter beiden Lesarten richtig; die Entscheidung hängt nicht daran, die Identifikation vorher aufzulösen. (3) **Die Identifikation ist nicht bestätigt** — sie stützt sich auf Inhalt und auf das sechsstufige Antwortformat (das EDI-2 nutzt sechs Stufen), nicht auf einen Wortlautabgleich. Der Abgleich gegen den deutschen EDI-2-Bogen ist der erste zu prüfende Schritt. (4) **Kein Score:** Ein Item je Subskala bildet die Subskala nicht ab (ADR-003 Punkt 3); `ordinalValue` 1–6 ist gesetzt, damit eine spätere Auswertung möglich bleibt. (5) **Kein `Questionnaire.code`** und **keine Instrumenten-`linkId`s**: Beides wäre eine Behauptung über die Instrumentenidentität, solange sie nicht bestätigt ist. Bestätigt sie sich, sind die `linkId`s nach ADR-008 Regel 1 auf die EDI-2-Itemnummern umzustellen. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

* item[+]
  * linkId = "ukhd-edp-intro"
  * text = "Elf Aussagen zu Gefühlen, Gedanken und Verhalten in Bezug auf Essen, Körper und allgemeine Selbsteinschätzung. Die Häufigkeit des Zutreffens wird auf einer sechsstufigen Skala eingeschätzt. Der Originalwortlaut ist in dieser Spezifikation bewusst nicht abgebildet."
  * type = #display

* item[+]
  * linkId = "edp1"
  * code[+] = PcorItemDictionaryCS#edp1
  * text = "Erfasst: Angst vor einer Gewichtszunahme (Konstrukt Schlankheitsstreben)."
  * type = #choice
  * answerValueSet = Canonical(UkhdEdpStufe6VS)
* item[+]
  * linkId = "edp2"
  * code[+] = PcorItemDictionaryCS#edp2
  * text = "Erfasst: eingeschränkte Nahrungsaufnahme in Gegenwart anderer mit Essanfällen im Alleinsein (Konstrukt Bulimie)."
  * type = #choice
  * answerValueSet = Canonical(UkhdEdpStufe6VS)
* item[+]
  * linkId = "edp3"
  * code[+] = PcorItemDictionaryCS#edp3
  * text = "Erfasst: Unzufriedenheit mit einzelnen Körperstellen (Konstrukt Körperunzufriedenheit)."
  * type = #choice
  * answerValueSet = Canonical(UkhdEdpStufe6VS)
* item[+]
  * linkId = "edp4"
  * code[+] = PcorItemDictionaryCS#edp4
  * text = "Erfasst: geringe Selbstbewertung (Konstrukt Ineffektivität)."
  * type = #choice
  * answerValueSet = Canonical(UkhdEdpStufe6VS)
* item[+]
  * linkId = "edp5"
  * code[+] = PcorItemDictionaryCS#edp5
  * text = "Erfasst: Anspruch, der oder die Beste zu sein (Konstrukt Perfektionismus)."
  * type = #choice
  * answerValueSet = Canonical(UkhdEdpStufe6VS)
* item[+]
  * linkId = "edp6"
  * code[+] = PcorItemDictionaryCS#edp6
  * text = "Erfasst: Nähe in Beziehungen zu anderen (Konstrukt Misstrauen, invers formuliert)."
  * type = #choice
  * answerValueSet = Canonical(UkhdEdpStufe6VS)
* item[+]
  * linkId = "edp7"
  * code[+] = PcorItemDictionaryCS#edp7
  * text = "Erfasst: Schwierigkeit, eigene Gefühle zu benennen (Konstrukt interozeptive Wahrnehmung)."
  * type = #choice
  * answerValueSet = Canonical(UkhdEdpStufe6VS)
* item[+]
  * linkId = "edp8"
  * code[+] = PcorItemDictionaryCS#edp8
  * text = "Erfasst: Haltung zum Erwachsensein (Konstrukt Angst vor dem Erwachsenwerden, invers formuliert)."
  * type = #choice
  * answerValueSet = Canonical(UkhdEdpStufe6VS)
* item[+]
  * linkId = "edp9"
  * code[+] = PcorItemDictionaryCS#edp9
  * text = "Erfasst: Bewertung von Genuss beim Essen als Schwäche (Konstrukt Askese)."
  * type = #choice
  * answerValueSet = Canonical(UkhdEdpStufe6VS)
* item[+]
  * linkId = "edp10"
  * code[+] = PcorItemDictionaryCS#edp10
  * text = "Erfasst: spontane Äußerungen, die später bereut werden (Konstrukt Impulsregulation)."
  * type = #choice
  * answerValueSet = Canonical(UkhdEdpStufe6VS)
* item[+]
  * linkId = "edp11"
  * code[+] = PcorItemDictionaryCS#edp11
  * text = "Erfasst: Kontaktfreude im Umgang mit anderen (Konstrukt soziale Unsicherheit, invers formuliert)."
  * type = #choice
  * answerValueSet = Canonical(UkhdEdpStufe6VS)
