// ─────────────────────────────────────────────────────────────────────────────
// SSUK-2 — Soziale Unterstützung bei Krankheit, 2-Item-Zuschnitt
// Quelle: PCOR Item Level Dictionary, Entität AN, Kategorie EFA,
//   Items ssuk14 / ssuk10 (Typ "Single Answer"; Reihenfolge wie im Dictionary).
//
// HERKUNFT — praeziser Stand nach Quellenpruefung 2026-09-29:
//   Die SSUK ist die deutsche Adaptation der englischen ISSS
//   (Illness-specific Social Support Scale):
//     Original:     Revenson TA, Schiaffino KM, Majerovitz SD, Gibofsky A.
//                   "Social support as a double-edged sword: The relation of
//                   positive and problematic support to depression among
//                   rheumatoid arthritis patients."
//                   Soc Sci Med 1991. doi:10.1016/0277-9536(91)90385-P
//     Adaptation:   Ramm G, Hasenbring M. "Die deutsche Adaptation der
//                   Illness-specific Social Support Scale und ihre
//                   teststatistische Ueberpruefung."
//                   Z Med Psychol 2003. doi:10.3233/ZMP-2003-12_1_06
//   Beide DOIs stehen so in der DIZ-Implementierungsliste PCOR-MII.
//
//   SPRACHE — GEPRUEFT 2026-09-29, ERGEBNIS: DEUTSCH BLEIBT PRIMAER.
//   Die SSUK ist zwar kein deutsches Originalinstrument (die Annahme in
//   ADR-005 war falsch), sondern eine Adaptation eines englischen Originals.
//   Eine englische Primaersprache nach ADR-005 setzt aber voraus, dass die
//   hier verwendeten Items woertlichen ISSS-Items entsprechen. Das ist
//   NICHT der Fall:
//     - Abgeglichen gegen die acht Items der ISSS-Kurzversion ISSS-8
//       (verifiziert in der Thai-Validierung, PMC13426926, Tabelle 3).
//     - ssuk14 "Sie aufmuntert oder troestet" liegt am naechsten bei
//       ISSS-8 Item 2 "Gives you comfort" — deckungsgleich ist es nicht
//       (zwei Verben gegen eines).
//     - ssuk10 "die Auswirkung Ihrer Erkrankung herunterspielt" hat in der
//       ISSS-8 GAR KEINE Entsprechung. Das naechstliegende Item 5 lautet
//       "Worries too much about your illness" — inhaltlich die
//       Gegenrichtung.
//   Zwei Einschraenkungen dieser Pruefung, die das Ergebnis aber stuetzen:
//   Die ISSS-8 ist nur eine Achter-Auswahl (die Item-Nummern 10 und 14 hier
//   deuten auf eine laengere Vorlage, ssuk10 koennte dort stehen), und die
//   englischen Wortlaute der Thai-Arbeit stammen ueber die deutsche
//   SSUK-8-Kurzversion, sind also moeglicherweise Rueckuebersetzungen statt
//   Revensons Originalwortlaut. Beides spricht gegen, nicht fuer eine
//   englische Primaersprache.
//
//   Was der Abgleich SEHR WOHL bestaetigt, ist die Instrumenten-Abstammung:
//   Der Fragestamm ist deckungsgleich ("Amongst the people you feel close
//   to, is there someone who..." / "Unter den Menschen, die Ihnen nahe
//   stehen, gibt es jemanden, der/die.."), und die Antwortskala ist
//   identisch (0 = nie ... 4 = immer).
//
//   MASSGEBLICHE REFERENZ FUER DEN HIER ERHOBENEN WORTLAUT: Das ist laut
//   DIZ-Implementierungsliste das UEBERSETZUNGSPAPER, also Ramm & Hasenbring
//   2003 (doi:10.3233/ZMP-2003-12_1_06) — nicht Revenson et al. 1991, das
//   dort als ENTWICKLUNGSPAPER steht und das englische Original beschreibt.
//   Ramm & Hasenbring ist derzeit NICHT beschaffbar: bei Sage
//   kostenpflichtig (Charite ohne Abo), auf ResearchGate nur als
//   "Request full-text". Der Wortlautabgleich gegen die massgebliche Quelle
//   steht daher weiterhin aus.
//
//   INDIZIEN AUS DEM, WAS VORLIEGT: Der hiesige Wortlaut stammt
//   offensichtlich aus der LANGFASSUNG, nicht aus der SSUK-8:
//     - ssuk14 "Sie aufmuntert oder troestet" ist zwar wortgleich SSUK-8
//       Item 3 — das spricht aber nicht gegen die Langfassung, weil
//       Kurzformen Items unveraendert uebernehmen.
//     - Die Antwortskala weicht ab: hier "oft" fuer Stufe 3, in der SSUK-8
//       "haeufig".
//     - Der Fragestamm unterscheidet sich nur orthografisch ("nahe stehen"
//       vs. "nahestehen") — alte vs. neue Rechtschreibung, kein
//       inhaltlicher Unterschied. Siehe Hinweis bei der Nummerierung.
//     - ssuk10 fehlt in der SSUK-8 ganz.
//   Zusammen mit den Item-Nummern 10 und 14 ergibt das ein stimmiges Bild:
//   Vorlage ist die Langfassung nach Ramm & Hasenbring.
//
//   ZUGRIFF AUF DAS ENGLISCHE ORIGINAL (Stand 2026-09-29): Revenson et al.
//   1991 ist ueber den Charite-Zugang bei Elsevier/ScienceDirect im Volltext
//   verfuegbar (anders als Ramm & Hasenbring 2003 bei Sage — dort kein Abo).
//   Der Itemabgleich gegen das Original wurde NICHT abgeschlossen. Zwei
//   Gruende, warum er wenig verspricht:
//     - Die Arbeit ist eine empirische Studie an Rheumapatient:innen, keine
//       Instrumenten-Entwicklungsarbeit. Ob die ISSS-Items dort ueberhaupt
//       im Wortlaut abgedruckt sind, ist offen.
//     - Selbst bei Fund bliebe die Zuordnung eine Ermessensfrage: Ramm &
//       Hasenbring nennen ihre Arbeit im Titel eine ADAPTATION, und der
//       bereits geprueften Stelle nach ist die Abbildung nicht 1:1
//       ("aufmuntert oder troestet" = zwei Verben gegen "Gives you comfort").
//   ENTSCHEIDUNG: Deutsch bleibt primaer. Massgeblich ist der Wortlaut, der
//   tatsaechlich erhoben wird — die deutsche SSUK-Fassung. Eine englische
//   Primaersprache wuerde eine Uebersetzungsbeziehung behaupten, die nicht
//   belegt ist.
//
//   HINWEIS: Eine validierte Kurzform dieses Instruments EXISTIERT — die
//   8-Item-SSUK (Mehnert et al., Klin Diagnostik u Evaluation) bzw. die
//   daraus abgeleitete ISSS-8. Der hier verwendete 2-Item-Zuschnitt ist
//   nicht diese Kurzform. Falls eine validierte Kurzform gewuenscht ist,
//   waere die SSUK-8 der naheliegende Kandidat.
//
//   Der PCOR-Zuschnitt nimmt je ein Item aus den beiden Skalen: ssuk14
//   (aufmuntern/troesten -> positive Unterstuetzung) und ssuk10 (Auswirkung
//   der Erkrankung herunterspielen -> belastende Interaktion). Die DIZ-
//   Implementierungsliste fuehrt das Instrument als frei nutzbar.
//
//   Der Originaltitel "double-edged sword" benennt exakt die Konstruktion des
//   Instruments: Es misst positive UND problematische Unterstuetzung als zwei
//   getrennte, gegenlaeufige Dimensionen. Das ist der inhaltliche Grund dafuer,
//   dass die beiden Items nicht summiert werden (siehe SCORING).
//
// ITEM-VERIFIKATION 2026-09-29 — BEIDE ITEMS SIND ECHTE SSUK-ITEMS:
//   Geprueft gegen die 8-Item-Kurzform SSUK-8 (Mehnert et al., Klin Diagnostik
//   u Evaluation 2010, 3. Jg. 359-381, (c) Vandenhoeck & Ruprecht;
//   oeffentlicher Volltext der Autor:innen, ResearchGate 235711455,
//   Abbildung 1 "Items der SSUK-8").
//
//     ssuk14 "Sie aufmuntert oder troestet" = SSUK-8 ITEM 3, WOERTLICH
//       identisch (Skala Positive Unterstuetzung). Belegt.
//
//     ssuk10 "die Auswirkung Ihrer Erkrankung herunterspielt" ist NICHT in
//       der SSUK-8 — aber nachweislich ein Item der VOLLVERSION: Die
//       Diskussion derselben Arbeit haelt fest, die urspruengliche 9-Item-
//       Skala "Belastende Interaktion" erfasse auch, "dass der
//       Interaktionspartner die Ernsthaftigkeit der Erkrankung
//       herunterspielt bzw. unangenehme Reaktionen zeigt, ueber die
//       Kurzform hinaus". Das Item fiel also bei der Kurzformbildung weg.
//       Belegt als Vollversions-Item.
//
//   NUMMERIERUNG — VERIFIZIERT 2026-09-29 (zuvor nur festgelegt):
//   Die linkIds SIND die Itemnummern der SSUK-Langfassung. Beleg:
//     Mueller D, Mehnert A, Koch U. "Skalen zur Sozialen Unterstuetzung bei
//     Krankheit (SSUK) — Testtheoretische Ueberpruefung und Validierung an
//     einer repraesentativen Stichprobe von Brustkrebspatientinnen."
//     Z Med Psychol 2004. doi:10.3233/zmp-2004-13_4_03
//     Oeffentlicher Volltext der Autor:innen (ResearchGate 235655122).
//   Dort listet Tabelle 2 ("Faktorielle Struktur der SSUK") die Items mit
//   ihren Nummern. Bestaetigt:
//     Item 14 = "Sie aufmuntert oder troestet"  -> Positive Unterstuetzung
//     Item 10 = "die Auswirkung Ihrer Erkrankung herunterspielt"
//                                                -> Belastende Interaktion
//   Damit ist die frueher nur begruendete Festlegung durch die Primaer-
//   quelle ersetzt. Die Wortlaute stimmen ueberein.
//
//   UMFANG DER LANGFASSUNG — jetzt bekannt: 26 Items, aufgeteilt in
//   Positive Unterstuetzung (17 Items, Cronbachs alpha = .91) und
//   Belastende Interaktion (9 Items, alpha = .76). Die beiden hier
//   verwendeten Items stammen je aus einer der beiden Skalen.
//
// ABWEICHUNG IN DER ANTWORTSKALA: Die SSUK-8 beschriftet die Stufe 3 mit
//   "haeufig", das hiesige CodeSystem mit "oft". Inhaltlich gleich, im
//   Wortlaut nicht. Herkunft der hiesigen Variante ungeklaert — offener
//   Punkt, falls Wortlauttreue gefordert ist.
//
// STRUKTUR: Der gemeinsame Fragestamm "Unter den Menschen, die Ihnen nahe
//   stehen, gibt es jemanden, der/die.." ist als group-Item modelliert, damit
//   beide Item-Texte wortgleich aus dem Dictionary übernommen bleiben.
//
// SCORING: bewusst KEIN Summen- oder Mittelwert-Item. Die beiden Items messen
//   gegenläufige Konstrukte (Unterstützung vs. Belastung) und sind einzeln
//   auszuwerten — ein Summenwert wäre ohne Umpolung inhaltlich falsch, und für
//   eine Umpolung des Zuschnitts fehlt die validierte Grundlage (analog EXPECT).
//
// Terminologie-Recherche (mcp__fhir-terminology__search_codes, Stand 2026-09-23):
//   - LOINC 2.83 / SNOMED CT 2026-05-01: keine Codes für die SSUK/ISSS.
//   Daher kein Questionnaire.code und keine item.code.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: SsukAntwortCS
Id: ssuk-antwort
Title: "SSUK Antwortskala (Codes)"
Description: "5-stufige Häufigkeitsskala der SSUK (0 = nie ... 4 = immer). ordinalValue-Property je Konzept."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerischer Ordinalwert (0-4)."
* ^property[=].type = #decimal
* #0 "nie"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 0
* #1 "selten"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #2 "manchmal"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2
* #3 "oft"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 3
* #4 "immer"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 4

ValueSet: SsukAntwortVS
Id: ssuk-antwort-vs
Title: "SSUK Antwortskala"
Description: "5-stufige Häufigkeitsskala der SSUK (0 = nie ... 4 = immer)."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system SsukAntwortCS
* ^expansion.timestamp = "2026-09-23T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ssuk-antwort|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ssuk-antwort"
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "nie"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ssuk-antwort"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "selten"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ssuk-antwort"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "manchmal"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ssuk-antwort"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "oft"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ssuk-antwort"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "immer"

Instance: SSUK2
InstanceOf: Questionnaire
Usage: #definition
Title: "SSUK-2 — Soziale Unterstützung bei Krankheit (2-Item-Zuschnitt)"
Description: "Zwei Items aus den Skalen zur Sozialen Unterstützung bei Krankheit (SSUK): je ein Item zur positiven Unterstützung (aufmuntern/trösten) und zur belastenden Interaktion (Auswirkung der Erkrankung herunterspielen), 5-stufige Häufigkeitsskala (0 = nie ... 4 = immer). Kein Score — die beiden Items sind gegenläufig gepolt und einzeln auszuwerten. Quelle: PCOR-MII Item Level Dictionary (Entität AN)."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/SSUK2"
* name = "SSUK2"
* insert Version
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-09-23"
* publisher = "BIH-CEI"
* copyright = "Die Items entstammen der SSUK, der deutschen Adaptation der Illness-specific Social Support Scale (Ramm & Hasenbring, Z Med Psychol 2003, doi:10.3233/ZMP-2003-12_1_06; englisches Original: Revenson et al., Soc Sci Med 1991, doi:10.1016/0277-9536(91)90385-P), im Zuschnitt des PCOR-MII Item Level Dictionary. Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."

// Designentscheidungen direkt am Questionnaire (designNote, ADR-003)
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen (ADR-003):** (0) **Auswahlregel des Zuschnitts** laut DIZ-Implementierungsliste, Spalte *„verkürzte Version?“*: *„nicht vollständig verwendet, sondern nur das Item mit der höchsten Trennschärfe pro Skala“*. Geht hier auf: Die SSUK hat zwei gegenläufige Dimensionen, und ssuk14 (unterstützend) und ssuk10 (belastend) bedienen genau je eine. Ein trennschärfstes Item bildet die Skala nicht ab, daher kein Score — und die beiden Items dürfen nicht summiert werden, weil sie Gegenläufiges messen. (1) `linkId`s = **Itemnummern der SSUK-Langfassung — verifiziert** gegen Tabelle 2 bei Müller, Mehnert & Koch (*Z Med Psychol* 2004, doi:10.3233/zmp-2004-13_4_03): Item 14 ist „Sie aufmuntert oder tröstet“ (Positive Unterstützung), Item 10 „die Auswirkung Ihrer Erkrankung herunterspielt“ (Belastende Interaktion). Die Langfassung hat 26 Items (17 + 9). **Verifiziert** ist dagegen, dass beide Items echte SSUK-Items sind: `ssuk14` wörtlich Item 3 der SSUK-8, `ssuk10` ein Item der 9-Item-Skala „Belastende Interaktion“ der Langfassung, das in der Kurzform entfiel. (2) Kein Score: Die beiden Items messen gegenläufige Konstrukte (positive Unterstützung vs. belastende Interaktion) — ein Summenwert wäre ohne Umpolung falsch, und für eine Umpolung des Zuschnitts fehlt die validierte Grundlage. (3) Gemeinsamer Fragestamm als `group`-Item, damit die Item-Texte wortgleich bleiben. (4) Keine Terminologie-Codes: LOINC/SNOMED kennen die SSUK nicht. Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

// ── Gemeinsamer Fragestamm mit den beiden Items ──────────────────────────────
* item[+]
  * linkId = "ssuk-stamm"
  * text = "Unter den Menschen, die Ihnen nahe stehen, gibt es jemanden, der/die.."
  * type = #group
  * item[+]
    * linkId = "ssuk14"
    * code[+] = PcorItemDictionaryCS#ssuk14
    * text = "Sie aufmuntert oder tröstet"
    * type = #choice
    * answerValueSet = Canonical(SsukAntwortVS)
  * item[+]
    * linkId = "ssuk10"
    * code[+] = PcorItemDictionaryCS#ssuk10
    * text = "die Auswirkung Ihrer Erkrankung herunterspielt."
    * type = #choice
    * answerValueSet = Canonical(SsukAntwortVS)
