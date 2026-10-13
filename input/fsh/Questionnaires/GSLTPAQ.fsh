// ═════════════════════════════════════════════════════════════════════════════
// GSLTPAQ — Godin-Shephard Leisure-Time Physical Activity Questionnaire
// Quelle: PCOR Item Level Dictionary (Kategorie GSLTPAQ, 6 Items).
//
// ── Übersetzung (WICHTIGE VORENTSCHEIDUNG) ─────────────────────────────────
// Diese Instanz bildet die in PCOR-MII TATSÄCHLICH ERHOBENE Fassung ab: die
// deutsche Übersetzung aus dem Item Level Dictionary. HERKUNFT GEKLÄRT
// (Use-Case-Leitung, 2026-10-06): Sie stammt aus SOMACROSS 2.0, Übersetzer
// ist das UKE (Universitätsklinikum Hamburg-Eppendorf) — PCOR-MII war an der
// Übersetzung nicht beteiligt; die frühere Bezeichnung „hausinterne
// Eigenübersetzung" war insofern falsch. Es wird davon ausgegangen, dass die
// vorliegenden Studiendaten bereits mit dieser Fassung erhoben wurden; ein
// nachträglicher Wortlautwechsel würde die Vergleichbarkeit der Zeitreihe
// brechen.
// NICHT verwendet wird die kürzlich erschienene, sprachlich validierte
// deutsch-österreichische Übersetzung:
//   Lindner A, Bamberger EM, Crutzen R, Kulnik ST. Translation to German
//   (Austrian) and qualitative linguistic validation of the Godin-Shephard
//   Leisure-Time Physical Activity Questionnaire. Measurement and
//   Evaluations in Cancer Care 2026;4:100027.
//   doi:10.1016/j.ymecc.2026.100027
// Die hier verwendete UKE/SOMACROSS-Übersetzung ist NICHT linguistisch
// validiert. Bestätigt (Use-Case-Leitung, 2026-10-06): BEIDE Fassungen werden
// abgebildet; Metadaten und Versionierung machen die Unterscheidung klar,
// jede QuestionnaireResponse weist über ihre questionnaire-Referenz eindeutig
// aus, mit welcher Definition sie erhoben wurde, und die linkIds bleiben
// identisch (Umsetzung: ADR-007, zwei Canonicals). Die validierte Fassung
// (Lindner et al. 2026) soll perspektivisch separat als kanonische GSLTPAQ-
// Version im MII-PRO-Modul gepflegt werden — dort mit dem validierten
// Wortlaut, nicht in PCOR-MII (siehe Repo kerndatensatzmodul-proms). Bis
// dahin bleibt PCOR-MII bei der UKE/SOMACROSS-Fassung.
//
// ── Originalinstrument ──────────────────────────────────────────────────────
// Godin G. The Godin-Shephard leisure-time physical activity questionnaire.
// Health Fit J Can. 2011;4:18-22. doi:10.14288/hfjc.v4i1.82
//
// ── Struktur ─────────────────────────────────────────────────────────────
// Eine Frage zu drei Intensitätsstufen (anstrengend/mäßig/leicht), je mit
// zwei numerischen Antwortfeldern: Häufigkeit pro Woche (_w) und Dauer pro
// Einheit in Minuten (_m). Beide Felder sind rein numerisch (type=integer),
// keine kodierten Antwortoptionen, daher kein CodeSystem/ValueSet nötig.
// Für die _m-Items liefert das Item Level Dictionary keinen eigenen
// Itemtext (nur "numeric Minuten"); dies deutet auf ein Matrix-/Tabellen-
// Item hin, bei dem Häufigkeits- und Dauerfeld dieselbe Aktivitätsbeschreibung
// teilen. Der Itemtext der _m-Items ist daher bewusst identisch mit dem
// zugehörigen _w-Item (verbatim aus dem Dictionary übernommen, nicht neu
// formuliert); die beiden Felder unterscheiden sich über linkId-Suffix
// (_w/_m) und die questionnaire-unit-Extension (-mal pro Woche vs. Minuten).
//
// ── Scoring ──────────────────────────────────────────────────────────────
// Quelle: Godin & Shephard 2011 (s.o.), bestätigt in Lindner et al. 2026
// (s.o.), S. 4: "To apply the weighting for vigorous, moderate and light
// physical activity, times per week are multiplied by a factor of 9, 5 and
// 3, respectively. The weekly leisure-time activity score is calculated by
// summing up the resulting figures."
// => Leisure Score Index = 9×GSLTPAQ_01_w + 5×GSLTPAQ_02_w + 3×GSLTPAQ_03_w
// Die Dauer-Items (_m) gehen NICHT in die Formel ein — sie sind laut
// Originalpublikation und Lindner et al. 2026 nicht Teil des offiziellen
// Godin-Scores (die Dauer wird im Original-GSLTPAQ gar nicht erhoben; ihre
// Aufnahme ins Item Level Dictionary ist eine PCOR-MII-spezifische Erweiterung
// für explorative Zwecke, siehe Diskussion "modified versions" in Lindner
// et al. 2026, S. 6). Daher hier kein Score-Item für die Dauer-Felder.
// OFFEN / nicht implementiert: Die Kategorisierung "active" (Score der
// anstrengenden+mäßigen Aktivität ≥24) / "moderately active" (14-23) /
// "insufficiently active" (<14) ist in Godin & Shephard 2011 und Lindner
// et al. 2026 (S. 4) ebenfalls beschrieben, wurde hier aber NICHT als
// zusätzliches (kategoriales) Score-Item umgesetzt, da nicht explizit
// beauftragt. Bei Bedarf als weiteres readOnly-Item mit eigenem
// calculatedExpression ergänzbar (iif-Kaskade auf 9×_01_w + 5×_02_w).
//
// ── Terminologie ─────────────────────────────────────────────────────────
// Recherche via fhir-terminology MCP (LOINC 2.83, SNOMED CT 2026-05-01):
// Kein LOINC- oder SNOMED-Code für das GSLTPAQ selbst oder für die drei
// Items gefunden (Suchen: "Godin", "Godin-Shephard", "leisure-time physical
// activity questionnaire"). LOINC führt Items/Scores für verwandte, aber
// NICHT inhaltsgleiche Instrumente (z.B. IPAQ: 77592-4/77593-2 "[Moderate/
// Vigorous] physical activity [IPAQ]"; Baecke Leisure-time index: 112947-7);
// SNOMED CT kennt "International Physical Activity Questionnaire"
// (1382098002) und dessen Score (1382099005), aber kein GSLTPAQ-Pendant.
// Diese wurden NICHT verwendet, da sie ein anderes Instrument mit anderer
// Fragenstruktur/Schwellenwerten referenzieren würden. Daher: kein
// Questionnaire.code, keine item.code auf den sechs Items.
// ═════════════════════════════════════════════════════════════════════════════

Instance: GSLTPAQ
InstanceOf: Questionnaire
Usage: #definition
Title: "GSLTPAQ — Godin-Shephard Leisure-Time Physical Activity Questionnaire"
Description: "Godin-Shephard Leisure-Time Physical Activity Questionnaire (GSLTPAQ): 3 Intensitätsstufen körperlicher Aktivität (anstrengend/mäßig/leicht) je mit Häufigkeit pro Woche und Dauer in Minuten. Deutsche Übersetzung aus SOMACROSS 2.0 (Übersetzer: UKE), übernommen über das Item Level Dictionary (siehe Kopfkommentar zur Abgrenzung von der validierten Übersetzung Lindner et al. 2026). SDC-Basis; kein PRO-Instrument im Sinne des MII-PRO-Moduls."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/GSLTPAQ"
* name = "GSLTPAQ"
// SPRACHE — bewusst DEUTSCH PRIMAER, abweichend von ADR-005:
//   ADR-005 verlangt normalerweise die Sprache des Originals als item.text
//   (hier Englisch, Godin & Shephard) und die Uebersetzung als translation-
//   Extension. Das setzt aber voraus, dass die deutsche Fassung eine getreue
//   Wiedergabe eines autorisierten Wortlauts ist. Hier ist sie das NICHT: Es
//   ist die UKE-Uebersetzung aus SOMACROSS 2.0, ohne linguistische
//   Validierung.
//   Diese Ressource dokumentiert genau diese Fassung — also was den Befragten
//   tatsaechlich vorlag —, deshalb ist Deutsch hier das Primaere und nicht eine
//   Uebersetzungsebene. Die validierte deutsch-oesterreichische Fassung
//   (Lindner et al. 2026) wird nach ADR-007 eine EIGENE Ressource im
//   MII-PRO-Modul, keine Sprachebene und keine neue Version dieser hier.
* language = #de
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#gsltpaq "GSLTPAQ"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-09-01"
* publisher = "BIH-CEI"
* copyright = "Originalinstrument: Godin G. The Godin-Shephard leisure-time physical activity questionnaire. Health Fit J Can 2011;4:18–22 (doi:10.14288/hfjc.v4i1.82); der Originalbogen ist im Artikel abgedruckt. Deutsche Fassung: Übersetzung aus SOMACROSS 2.0, Übersetzer: Universitätsklinikum Hamburg-Eppendorf (UKE); nicht linguistisch validiert (Herkunft bestätigt durch die Use-Case-Leitung, 2026-10-06). Nicht identisch mit der linguistisch validierten deutsch-österreichischen Übersetzung (Lindner et al. 2026, doi:10.1016/j.ymecc.2026.100027). Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen bzw. Übersetzer:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."

* item[+]
  * linkId = "gsltpaq-intro"
  * text = "Wie oft haben Sie im letzten Monat die folgenden körperlichen Aktivitäten ausgeübt?"
  * type = #display

// ── Anstrengende körperliche Aktivität ──────────────────────────────────────
* item[+]
  * linkId = "GSLTPAQ_01_w"
  * code[+] = PcorItemDictionaryCS#GSLTPAQ_01_w
  * text = "Anstrengende körperliche Aktivität (erhöhte Anstrengung und Schwitzen) z.B. intensives Schwimmen, Jogging, Fußballspielen, Radsport"
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 0
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
  * extension[=].valueCoding = $UCUM#"{count}/wk" "-mal pro Woche"
* item[+]
  * linkId = "GSLTPAQ_01_m"
  * code[+] = PcorItemDictionaryCS#GSLTPAQ_01_m
  * text = "Anstrengende körperliche Aktivität (erhöhte Anstrengung und Schwitzen) z.B. intensives Schwimmen, Jogging, Fußballspielen, Radsport"
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 0
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
  * extension[=].valueCoding = $UCUM#min "Minuten"

// ── Mäßige körperliche Aktivität ────────────────────────────────────────────
* item[+]
  * linkId = "GSLTPAQ_02_w"
  * code[+] = PcorItemDictionaryCS#GSLTPAQ_02_w
  * text = "Mäßige körperliche Aktivität (kaum erhöhte Anstrengung und leichtes Schwitzen) z.B. schnelles Gehen, langsames Radfahren, langsames Schwimmen"
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 0
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
  * extension[=].valueCoding = $UCUM#"{count}/wk" "-mal pro Woche"
* item[+]
  * linkId = "GSLTPAQ_02_m"
  * code[+] = PcorItemDictionaryCS#GSLTPAQ_02_m
  * text = "Mäßige körperliche Aktivität (kaum erhöhte Anstrengung und leichtes Schwitzen) z.B. schnelles Gehen, langsames Radfahren, langsames Schwimmen"
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 0
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
  * extension[=].valueCoding = $UCUM#min "Minuten"

// ── Leichte körperliche Aktivität ───────────────────────────────────────────
* item[+]
  * linkId = "GSLTPAQ_03_w"
  * code[+] = PcorItemDictionaryCS#GSLTPAQ_03_w
  * text = "Leichte körperliche Aktivität (keine erhöhte Anstrengung und kein Schwitzen) z.B. Golf, leichtes Gehen, Angeln"
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 0
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
  * extension[=].valueCoding = $UCUM#"{count}/wk" "-mal pro Woche"
* item[+]
  * linkId = "GSLTPAQ_03_m"
  * code[+] = PcorItemDictionaryCS#GSLTPAQ_03_m
  * text = "Leichte körperliche Aktivität (keine erhöhte Anstrengung und kein Schwitzen) z.B. Golf, leichtes Gehen, Angeln"
  * type = #integer
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * extension[=].valueInteger = 0
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
  * extension[=].valueCoding = $UCUM#min "Minuten"

// ── Weekly Leisure-Time Activity Score (Godin Leisure Score Index) ─────────
// Formel siehe Kopfkommentar; nur die Häufigkeits-Items (_w) gehen ein.
* item[+]
  * linkId = "gsltpaq-score"
  * text = "Godin Leisure Score Index (Weekly Leisure-Time Activity Score)"
  * type = #integer
  * readOnly = true
  * extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
  * extension[=].valueExpression.language = #text/fhirpath
  * extension[=].valueExpression.expression = "(9 * %resource.item.where(linkId='GSLTPAQ_01_w').answer.value) + (5 * %resource.item.where(linkId='GSLTPAQ_02_w').answer.value) + (3 * %resource.item.where(linkId='GSLTPAQ_03_w').answer.value)"
