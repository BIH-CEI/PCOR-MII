// ─────────────────────────────────────────────────────────────────────────────
// ACE + Zeitangaben — PCOR-MII-KOMPOSIT, nicht der ACE allein
//   Quelle: PCOR Item Level Dictionary, Entität AN, Kategorie EFA —
//   Items ace1-ace5 (Typ "Single Answer", ja/nein) aus der Gruppe ACE UND
//   Items traumaspecific1-6 aus der Gruppe UKHD-CTT.
//
// WARUM ZWEI GRUPPEN IN EINEM BOGEN (entschieden 01.10.2026): Die sechs
//   UKHD-CTT-Items ordnen berichtete Kindheitsbelastungen zeitlich ein — je
//   ein Paar aus Häufigkeit und Lage relativ zum Beginn der Essstörung. Worauf
//   sich das bezieht, sagt das Dictionary in der Spalte ADDITIONAL INFORMATION
//   ausdrücklich: traumaspecific1/2 auf ace1, 3/4 auf ace2, 5/6 auf ace3. Diese
//   Abhängigkeit ist in FHIR nur als enableWhen ausdrückbar, und
//   enableWhen.question nimmt eine linkId INNERHALB desselben Questionnaire.
//   Die Items sind deshalb zu den ACE-Items gezogen (urspruenglich aus dem
//   frueheren Sammelbogen UKHD-AN.fsh, heute UKHD-Zusatzitems), statt die
//   Bedingung bloß zu dokumentieren.
//
//   FOLGE: Der Bogen ist nicht mehr der ACE-Zuschnitt, sondern ein
//   PCOR-MII-eigenes Komposit mit ZWEI Rechtequellen — ACE (frei) und UKHD
//   (Freigabe offen). Titel, Description und copyright sagen das; die
//   Dictionary-Gruppenzugehörigkeit der sechs Items bleibt über item.code und
//   die Property instrument in pcor-item-dictionary unverändert UKHD-CTT. Das
//   ist genau die Trennung, die ADR-011 behauptet: Gruppenzugehörigkeit haengt
//   am Code, nicht an der Ressourcengrenze.
//
// HERKUNFT: Die ersten fünf Fragen des Adverse-Childhood-Experiences-
//   Fragebogens (ACE; Felitti et al., Am J Prev Med 1998,
//   doi:10.1016/S0749-3797(98)00017-8, 10 Items): emotionale Misshandlung,
//   körperliche Misshandlung, sexueller Missbrauch, emotionale Vernachlässigung,
//   körperliche Vernachlässigung. Die Haushalts-Dysfunktions-Items 6-10 sind
//   im PCOR-Zuschnitt nicht enthalten. Die DIZ-Implementierungsliste führt das
//   Instrument als frei nutzbar.
//
//   Deutsche Fassung (Uebersetzungspaper laut DIZ-Liste, ergaenzt 2026-09-29):
//   Wingenfeld K, Schaefer I, Terfehr K, et al. "Reliable, valide und
//   oekonomische Erfassung frueher Traumatisierung: Erste psychometrische
//   Charakterisierung der deutschen Version des Adverse Childhood
//   Experiences Questionnaire (ACE)." PPmP 2010.
//   doi:10.1055/s-0030-1263161
//
// TEXTUEBERNAHME: Die Fragetexte sind wortgleich aus dem Dictionary
//   übernommen; lediglich Layout-Artefakte der Excel-Zellen (Zeilenumbrüche,
//   Mehrfach-Leerzeichen, führende Item-Nummern "1."-"3." — im Dictionary
//   inkonsistent nur bei den ersten drei Items vorhanden) wurden normalisiert.
//
// ANTWORTEN: ja/nein über das projektweite DemJaNeinVS. Das Dictionary
//   kodiert 1 = ja / 0 = nein; die Kodierung ist im Mapping auf DemAntwortCS
//   dokumentarisch, nicht strukturell.
//
// WORTLAUT VOLLSTAENDIG VERIFIZIERT 2026-09-29:
//   Alle fuenf Items stimmen WORTGLEICH mit der deutschen Fassung ACE-D
//   ueberein (Schaefer I, Wingenfeld K, Spitzer C). Geprueft gegen ein frei
//   zirkulierendes Exemplar des Bogens; Uebereinstimmung Teilsatz fuer
//   Teilsatz, einschliesslich der "oder"-Struktur innerhalb der Items.
//   Die Anfuehrungszeichen um "high" in ace5 wurden dabei an die
//   typografische Form des Originals angeglichen.
//
//   NUMMERIERUNG BESTAETIGT: ace1-ace5 sind die Items 1-5 des ACE-D, und
//   der Bogen hat insgesamt zehn Items mit dichotomem Ja/Nein-Format. Die
//   Angabe der DIZ-Implementierungsliste "die ersten 5 Fragen" trifft damit
//   woertlich zu. Items 6-10 (Trennung/Verlust eines Elternteils, Gewalt
//   gegen die Mutter, Suchterkrankung, psychische Erkrankung, Haft im
//   Haushalt) bilden den Haushalts-Dysfunktions-Block und sind hier
//   bewusst nicht enthalten.
//
//   QUELLENGUETE: Das gepruefte Exemplar stammt von einer Drittseite, nicht
//   von den Herausgeber:innen. Es belegt damit den WORTLAUT, ist aber keine
//   Rechteauskunft. Die deutsche Fassung erscheint laut Recherche in einem
//   Hogrefe-Kompendium (Schaefer, Wingenfeld & Spitzer 2014, "Diagnostische
//   Verfahren in der Sexualwissenschaft"); ein ausdruecklicher
//   Rechtevorbehalt wie beim EDE-Q wurde NICHT gefunden. Die Angabe "frei
//   verfuegbar" der DIZ-Liste steht damit nicht im Widerspruch zu etwas
//   Gefundenem — anders als beim EDE-Q6. Das englische Original ist ein
//   Public-Health-Instrument (Felitti et al. 1998, Kaiser/CDC) in breiter
//   freier Verwendung.
//
// SCORING: bewusst KEIN Score-Item. Der ACE-Score des Vollinstruments ist die
//   Anzahl der Ja-Antworten über alle 10 Items (0-10); eine Summe über den
//   5-Item-Zuschnitt (0-5) ist kein validierter ACE-Score. Auswertung auf
//   Item-Ebene, bis eine Regel fachlich abgestimmt ist.
//
// Terminologie-Recherche (mcp__fhir-terminology__search_codes, Stand 2026-09-23):
//   - LOINC 2.83: 82813-7 |Adverse Childhood Experiences [ACE]| existiert als
//     Panel — bezeichnet aber das 10-Item-VOLLINSTRUMENT. Dem 5-Item-Zuschnitt
//     wird der Code bewusst NICHT zugewiesen (siehe Designentscheidungen).
//   - SNOMED CT 2026-05-01: keine Treffer für "adverse childhood experiences".
//   ITEM-EBENE (ergänzt 2026-09-29): Die Panel-Komponenten von 82813-7 decken
//     die fünf erhobenen Fragen exakt ab (Sequenz 1-5: Emotional abuse,
//     Physical abuse, Sexual abuse, Emotional neglect, Physical neglect).
//     Diese item.code-Zuweisung ist zulaessig und sinnvoll: Die ITEMS sind
//     unveraendert die ACE-Items, auch wenn der PANEL-Code dem Zuschnitt
//     bewusst nicht zugewiesen wird (siehe oben).
// ─────────────────────────────────────────────────────────────────────────────

// ── Terminologie der UKHD-Zeitangaben (Gruppe UKHD-CTT des Dictionary) ──────
// ── traumaspecific1 / 3 / 5 ────────────────────────────────────────
// MIT ordinalValue — ORDINAL, auch wenn es nur zwei Stufen sind: „einmalig"
//   gegen „mehrfach" ist eine monotone Haeufigkeitsaussage, und eine
//   Mehrfachbelastung ist in der Traumaforschung durchgaengig das schwerere
//   Mass. Der Wert ist hier wenig wert (bei zwei Stufen leistet er nichts, was
//   der Code nicht leistet), aber er ist nicht falsch — anders als bei den
//   nominalen Skalen oben.
//
// Die Displays sind SATZFRAGMENTE („um ein einmaliges"), weil sie im Dictionary
//   die Frage fortsetzen. Wortgleich uebernommen; fuer eine
//   Formularimplementierung sind sie nur zusammen mit dem Itemtext lesbar.
CodeSystem: UkhdAnEreignishaeufigkeitCS
Id: ukhd-an-ereignishaeufigkeit
Title: "UKHD-AN Ereignis einmalig oder wiederholt (Codes)"
Description: "Einmaliges oder wiederholtes Ereignis (`traumaspecific1`, `traumaspecific3`, `traumaspecific5`), `ordinalValue` 1–2. Die Displays sind Satzfragmente, die den Itemtext fortsetzen — so im Item Level Dictionary."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereignishaeufigkeit"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Numerischer Ordinalwert (1-2, Dictionary-Codes)."
* ^property[=].type = #decimal
* #1 "um ein einmaliges"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #2 "um ein mehrfaches Ereignis"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2

ValueSet: UkhdAnEreignishaeufigkeitVS
Id: ukhd-an-ereignishaeufigkeit-vs
Title: "UKHD-AN Ereignis einmalig oder wiederholt"
Description: "Einmaliges oder wiederholtes Ereignis (`traumaspecific1`, `traumaspecific3`, `traumaspecific5`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-ereignishaeufigkeit-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnEreignishaeufigkeitCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereignishaeufigkeit|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereignishaeufigkeit"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "um ein einmaliges"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereignishaeufigkeit"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "um ein mehrfaches Ereignis"

// ── UKHD-CTT: traumaspecific2 / 4 / 6 ────────────────────────────────────────
// KEIN ordinalValue — „vor" und „nach" sind eine NOMINALE Zeitrelation, keine
//   Stufen; und Stufe 3 („ich weiss es nicht mehr") ist eine erhobene
//   Nicht-Antwort, die in einer Rangfolge gar keinen Platz hat. Sie bleibt
//   bewusst im Wertebereich und wird nicht als dataAbsentReason ausgelagert:
//   Die Erinnerungsluecke ist hier eine Antwort, die vorgelegt wurde.
CodeSystem: UkhdAnEreigniszeitpunktCS
Id: ukhd-an-ereigniszeitpunkt
Title: "UKHD-AN Ereignis vor oder nach Beginn der Essstoerung (Codes)"
Description: "Zeitliche Lage des Ereignisses relativ zu den ersten Anzeichen der Essstörung (`traumaspecific2`, `traumaspecific4`, `traumaspecific6`). Nominal — bewusst ohne `ordinalValue`; Stufe 3 ist eine erhobene Nicht-Antwort."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereigniszeitpunkt"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #1 "vor den ersten Anzeichen der Essstörung"
* #2 "nach den ersten Anzeichen der Essstörung"
* #3 "ich weiß es nicht mehr"

ValueSet: UkhdAnEreigniszeitpunktVS
Id: ukhd-an-ereigniszeitpunkt-vs
Title: "UKHD-AN Ereignis vor oder nach Beginn der Essstoerung"
Description: "Zeitliche Lage des Ereignisses relativ zu den ersten Anzeichen der Essstörung (`traumaspecific2`, `traumaspecific4`, `traumaspecific6`)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/ValueSet/ukhd-an-ereigniszeitpunkt-vs"
* ^status = #draft
* ^experimental = true
* include codes from system UkhdAnEreigniszeitpunktCS
* ^expansion.timestamp = "2026-10-01T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereigniszeitpunkt|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereigniszeitpunkt"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "vor den ersten Anzeichen der Essstörung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereigniszeitpunkt"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nach den ersten Anzeichen der Essstörung"
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ukhd-an-ereigniszeitpunkt"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "ich weiß es nicht mehr"


Instance: ACE
InstanceOf: Questionnaire
Usage: #definition
Title: "ACE + Zeitangaben — Belastende Kindheitserfahrungen (PCOR-MII-Komposit)"
Description: "**PCOR-MII-spezifisches Komposit**, nicht der ACE allein: die ersten fünf Fragen des Adverse Childhood Experiences Questionnaire (Felitti et al. 1998) plus sechs UKHD-Items zur zeitlichen Einordnung der berichteten Ereignisse. Die sechs Zeitangaben sind in drei Paare gegliedert; jedes Paar wird über `enableWhen` von einem bejahten ACE-Item freigeschaltet — `ace1`, `ace2` bzw. `ace3`, so wie das Item Level Dictionary es vorgibt. Die fünf ACE-Items im Einzelnen: emotionale und körperliche Misshandlung, sexueller Missbrauch, emotionale und körperliche Vernachlässigung vor dem 18. Lebensjahr, je ja/nein. Kein Score — die Summe über den 5-Item-Zuschnitt ist kein validierter ACE-Score. Quelle: PCOR-MII Item Level Dictionary (Entität AN). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items — und zusätzlich seinen LOINC-Code."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/ACE"
* name = "ACE"
// DIE FUENF ACE-ITEMS SIND ENGLISCH-PRIMAER nach ADR-005: Das ACE-Original ist
//   englisch (Felitti et al. 1998, Am J Prev Med 14(4):245-258; Kaiser
//   Permanente / CDC). item.text traegt den englischen Originalwortlaut, die
//   deutsche Fassung ACE-D haengt als translation-Extension daran. Fuer die
//   sechs UKHD-Items gilt das NICHT — zu Resource.language siehe unten.
//
//   QUELLE DES ENGLISCHEN WORTLAUTS: ein an die Originalpublikation
//   zitierendes Exemplar, nicht der Verlagsabdruck. Der ACE ist ein
//   Public-Health-Instrument in breiter freier Verwendung; der Wortlaut der
//   zehn Items ist seit 1998 unveraendert und vielfach identisch reproduziert.
//
//   WICHTIG — DIE RECHTELAGE IST NICHT SYMMETRISCH: Das englische Original ist
//   frei, die DEUTSCHE Fassung ACE-D nicht (siehe offener Punkt: das Deutsche
//   Aerzteblatt druckt nur zwei von zehn Items und verweist fuer den
//   Gesamtbogen auf den Rechteinhaber). Englisch primaer verschiebt den
//   ungeklaerten Teil damit in eine Uebersetzungsebene.
//
//   NUR DIE ERSTEN FUENF ITEMS sind abgebildet, nicht der ACE-10. Die Langform
//   darf nach ADR-008 mitmodelliert werden, ist aber nicht Bestandteil dieses
//   Release — und der deutsche Wortlaut der Items 6-10 liegt ohnehin nicht vor.
// SPRACHE — de, obwohl die fuenf ACE-Items englisch-primaer sind. Der Bogen
//   ist seit der Aufnahme der sechs UKHD-CTT-Items ein GEMISCHTES Komposit:
//   fuenf Items mit englischem Originalwortlaut (Felitti et al.) und deutscher
//   translation, sechs deutschsprachige PCOR-MII-Items ohne englisches
//   Original. Nach ADR-005 bleibt je Item die Sprache des Originals primaer —
//   Resource.language ist davon unabhaengig und nennt die BASISSPRACHE des
//   Dokuments. Vollstaendig lesbar ist der Bogen nur auf Deutsch (11 von 11
//   Items), auf Englisch nur zu fuenf Elfteln. Dieselbe Mehrheitsregel wie
//   beim DEM, dort mit umgekehrtem Ergebnis (19 von 27 englisch -> en).
* language = #de
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#ace "ACE + Zeitangaben"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-09-23"
* publisher = "BIH-CEI"
* copyright = "Dieser Bogen ist ein PCOR-MII-spezifisches Komposit aus zwei Quellen mit unterschiedlicher Rechtelage. (1) Die fünf ACE-Items: Die Fragen entstammen dem Adverse-Childhood-Experiences-Fragebogen (ACE; Felitti et al., Am J Prev Med 1998, doi:10.1016/S0749-3797(98)00017-8), deutsche Fassung Wingenfeld et al., PPmP 2010, doi:10.1055/s-0030-1263161, im Zuschnitt des PCOR-MII Item Level Dictionary (erste 5 der 10 Fragen). Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0). (2) Die sechs Items zur zeitlichen Einordnung (traumaspecific1–6) stammen aus dem Item Level Dictionary des Universitätsklinikums Heidelberg. Die DIZ-Implementierungsliste PCOR-MII führt die standortspezifischen Itemgruppen nicht; eine Freigabe liegt nicht dokumentiert vor — siehe den offenen Punkt auf der Seite Designentscheidungen."
// Designentscheidungen direkt am Questionnaire (designNote, ADR-003)
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen (ADR-003):** (-1) **Dies ist ein PCOR-MII-Komposit, nicht der ACE.** Zu den fünf ACE-Items kommen sechs Items der Dictionary-Gruppe `UKHD-CTT` (`traumaspecific1`–`6`), die die berichteten Ereignisse zeitlich einordnen. Das Dictionary nennt deren Bezug ausdrücklich — Paare auf `ace1`, `ace2` und `ace3` —, und `enableWhen.question` nimmt laut R4 eine `linkId` **innerhalb desselben Questionnaire**. Die Items mussten also dorthin, wo ihre Bedingung steht. Dass die Gruppe im Dictionary `UKHD-CTT` heißt, bleibt über `item.code` und die Property `instrument` in [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) lesbar: Die Gruppenzugehörigkeit hängt am Code, nicht an der Ressourcengrenze ([ADR-011](Designentscheidungen.html)). Die Rechtelage ist dadurch **doppelt** — ACE frei, UKHD-Wortlaut ohne dokumentierte Freigabe; siehe `copyright`. (0) **Auswahlregel des Zuschnitts:** Die DIZ-Implementierungsliste nennt in der Spalte *„verkürzte Version?“* hier **nicht** die Trennschärfe-Formel der übrigen AN-Zuschnitte, sondern *„die ersten 5 Fragen“*. Der Zuschnitt ist also der vordere Block des Instruments (Misshandlung und Vernachlässigung) ohne die Haushalts-Dysfunktions-Fragen 6-10, keine psychometrische Auswahl. (1) `linkId`s = Original-ACE-Fragennummern (1–5); die Haushalts-Dysfunktions-Fragen 6–10 sind nicht enthalten. (1a) **Englisch primär** (ADR-005): `item.text` trägt den englischen Originalwortlaut nach Felitti et al. 1998, die deutsche Fassung ACE-D hängt als `translation` mit `lang = de` daran. Das ist hier auch rechtlich die bessere Anordnung, denn die Rechtelage ist **nicht symmetrisch**: Das englische Original ist ein frei verwendetes Public-Health-Instrument, für die deutsche ACE-D-Fassung ist die Freigabe dagegen offen. (2) Kein Score: Der ACE-Score ist die Anzahl der Ja-Antworten über alle 10 Fragen — eine Summe über den 5-Fragen-Zuschnitt ist kein validierter ACE-Score. (3) **Kein LOINC-Panel-Code:** `82813-7` bezeichnet das 10-Fragen-Vollinstrument und wird dem Zuschnitt nicht zugewiesen. `Questionnaire.code` trägt stattdessen den lokalen Katalogcode `ace` aus [`pcor-questionnaire-catalogue`](CodeSystem-pcor-questionnaire-catalogue.html), der ausdrücklich dieses PCOR-MII-Komposit bezeichnet und nicht den ACE (ADR-003 Punkt 2, ADR-004). (4) Ja/Nein über das projektweite `DemJaNeinVS`; Dictionary-Kodierung 1 = ja / 0 = nein nur dokumentarisch. (5) Governance der Auswertung (hochsensible Inhalte, analog PHQ-SI) fachlich zu klären. (5) **`item.code` trägt zwei Codings:** die PCOR-MII-Dictionary-Variable gegen [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) — das ist der PCOR-MII-Code des Items — und den item-genauen LOINC-Code. Genau dafür ist `item.code` `0..*`. Die Dictionary-Variable bezeichnet das **Erhebungsfeld** und stimmt hier mit der Itemnummer überein; ein weiteres lokales CodeSystem gibt es bewusst nicht. Zweck: das maschinelle Verteilen eines flach erhobenen Datensatzes auf die Instrumenten-Questionnaires (ADR-011). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

// ── Instruktionstext ─────────────────────────────────────────────────────────
* item[+]
  * linkId = "ace-intro"
  * text = "The next questions are about difficult experiences during your childhood (before the age of 18)."
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Die nächsten Fragen beziehen sich auf schwierige Lebenserfahrungen aus Ihrer Kindheit (vor dem 18. Lebensjahr), die Sie machen mussten. Lesen Sie sich bitte auch hier die Fragestellungen sorgfältig durch und beantworten Sie alle Fragen. Vielen Dank!"
  * type = #display

// ── 5 Items (linkId = Dictionary-Variablen-ID) ───────────────────────────────
* item[+]
  * linkId = "ace1"
  * code[+] = PcorItemDictionaryCS#ace1
  * text = "Did a parent or other adult in the household often or very often… Swear at you, insult you, put you down, or humiliate you? Or act in a way that made you afraid that you might be physically hurt?"
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Hat ein Elternteil oder ein anderer Erwachsener in Ihrem Haushalt Sie oft oder sehr oft… ...beschimpft, beleidigt, erniedrigt oder gedemütigt? Oder ...so gehandelt, dass Sie Angst hatten, Sie könnten körperlich verletzt werden?"
  * code[+] = $LOINC#82814-5 "Emotional abuse--before 18 years old [ACE]"
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)
* item[+]
  * linkId = "ace2"
  * code[+] = PcorItemDictionaryCS#ace2
  * text = "Did a parent or other adult in the household often or very often… Push, grab, slap, or throw something at you? Or ever hit you so hard that you had marks or were injured?"
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Hat ein Elternteil oder ein anderer Erwachsener in Ihrem Haushalt Sie oft oder sehr oft… ...gestoßen, gepackt, geschlagen oder etwas nach Ihnen geworfen? Oder ...Sie jemals so stark geschlagen, dass Sie Spuren davon aufwiesen oder verletzt wurden?"
  * code[+] = $LOINC#82815-2 "Physical abuse--before 18 years old [ACE]"
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)
* item[+]
  * linkId = "ace3"
  * code[+] = PcorItemDictionaryCS#ace3
  * text = "Did an adult or person at least 5 years older than you ever… Touch or fondle you or have you touch their body in a sexual way? Or attempt or actually have oral, anal, or vaginal intercourse with you?"
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Hat ein Erwachsener oder eine Person, die mindestens 5 Jahre älter war Sie jemals… ...auf sexuelle Art und Weise angefasst oder gestreichelt oder Sie veranlasst deren Körper in sexueller Art und Weise zu berühren? Oder ...oralen, analen oder vaginalen Geschlechtsverkehr versucht mit Ihnen zu haben oder tatsächlich gehabt?"
  * code[+] = $LOINC#82816-0 "Sexual abuse--before 18 years old [ACE]"
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)
* item[+]
  * linkId = "ace4"
  * code[+] = PcorItemDictionaryCS#ace4
  * text = "Did you often or very often feel that… No one in your family loved you or thought you were important or special? Or your family didn’t look out for each other, feel close to each other, or support each other?"
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Haben Sie oft oder sehr oft empfunden, dass … ...niemand in Ihrer Familie Sie liebte oder dachte, Sie seien wichtig oder etwas Besonderes? Oder ...Ihre Familienangehörigen nicht aufeinander aufpassten, sich einander nicht nahe fühlten oder sich gegenseitig nicht unterstützten?"
  * code[+] = $LOINC#82817-8 "Emotional neglect--before 18 years old [ACE]"
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)
* item[+]
  * linkId = "ace5"
  * code[+] = PcorItemDictionaryCS#ace5
  * text = "Did you often or very often feel that… You didn’t have enough to eat, had to wear dirty clothes, and had no one to protect you? Or your parents were too drunk or high to take care of you or take you to the doctor if you needed it?"
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Haben Sie oft oder sehr oft empfunden, dass … ...Sie nicht genug zu essen hatten, Sie schmutzige Kleidung tragen mussten und niemanden hatten, der Sie beschützte? Oder ...Ihre Eltern zu betrunken oder “high” waren, um sich um Sie zu kümmern oder Sie zum Arzt zu bringen, wenn Sie es benötigten?"
  * code[+] = $LOINC#82818-6 "Physical neglect--before 18 years old [ACE]"
  * type = #choice
  * answerValueSet = Canonical(DemJaNeinVS)

// ── Zeitliche Einordnung der berichteten Ereignisse (UKHD-CTT) ────────────────
// Je ein Paar pro bejahter ACE-Frage; die Zuordnung gibt das Dictionary vor.
* item[+]
  * linkId = "ctt-ereignis-1"
  * text = "Zeitliche Einordnung des Ereignisses aus Frage 1"
  * type = #group
  * enableWhen[+].question = "ace1"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerCoding = DemAntwortCS#ja
  * extension[+].url = $designNote
  * extension[=].valueMarkdown = "**Die Zuordnung steht im Dictionary, sie ist nicht erschlossen.** Spalte `ADDITIONAL INFORMATION` sagt für `traumaspecific1` und `traumaspecific2` wörtlich *`ACE Abfrage ace1, Antwort Ja = 1`*, für `traumaspecific3`/`4` entsprechend `ace2` und für `traumaspecific5`/`6` `ace3`. Jedes Paar charakterisiert das Ereignis **einer** bejahten ACE-Frage — eine Angabe zur Häufigkeit, eine zur zeitlichen Lage relativ zum Beginn der Essstörung. Das ist die Bedeutung von `Ihre Angabe` in beiden Itemtexten. **Warum die Items hier liegen und nicht bei den UKHD-Zusatzbögen:** `enableWhen.question` nimmt laut R4 eine `linkId` **innerhalb desselben Questionnaire**. Eine Abhängigkeit über Bogengrenzen hinweg ist in FHIR nicht ausdrückbar — die Items mussten also dorthin, wo ihre Bedingung steht. Dadurch wird aus dem ACE-Zuschnitt ein PCOR-MII-Komposit; der Bogen ist nicht mehr *der ACE*, und Titel, Beschreibung und `copyright` sagen das. **Nur `ace1` bis `ace3` haben Paare**, `ace4` und `ace5` nicht — passend dazu, dass die ersten drei abgrenzbare Ereignisse beschreiben (Misshandlung, Missbrauch), die letzten beiden andauernde Vernachlässigung, für die *einmalig oder wiederholt* kaum sinnvoll wäre."
  * item[+]
    * linkId = "traumaspecific1"
    * code[+] = PcorItemDictionaryCS#traumaspecific1
    * text = "Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich wiederholendes Ereignis?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnEreignishaeufigkeitVS)
  * item[+]
    * linkId = "traumaspecific2"
    * code[+] = PcorItemDictionaryCS#traumaspecific2
    * text = "Passierte dieses Ereignis vor oder nach den ersten Anzeichen der Essstörung? Passierte der Beginn dieser Ereignisse vor oder nach den ersten Anzeichen der Essstörung?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnEreigniszeitpunktVS)
* item[+]
  * linkId = "ctt-ereignis-2"
  * text = "Zeitliche Einordnung des Ereignisses aus Frage 2"
  * type = #group
  * enableWhen[+].question = "ace2"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerCoding = DemAntwortCS#ja
  * item[+]
    * linkId = "traumaspecific3"
    * code[+] = PcorItemDictionaryCS#traumaspecific3
    * text = "Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich wiederholendes Ereignis?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnEreignishaeufigkeitVS)
  * item[+]
    * linkId = "traumaspecific4"
    * code[+] = PcorItemDictionaryCS#traumaspecific4
    * text = "Passierte dieses Ereignis vor oder nach den ersten Anzeichen der Essstörung? Passierte der Beginn dieser Ereignisse vor oder nach den ersten Anzeichen der Essstörung?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnEreigniszeitpunktVS)
* item[+]
  * linkId = "ctt-ereignis-3"
  * text = "Zeitliche Einordnung des Ereignisses aus Frage 3"
  * type = #group
  * enableWhen[+].question = "ace3"
  * enableWhen[=].operator = #=
  * enableWhen[=].answerCoding = DemAntwortCS#ja
  * item[+]
    * linkId = "traumaspecific5"
    * code[+] = PcorItemDictionaryCS#traumaspecific5
    * text = "Handelt es sich bei Ihrer Angabe um ein einmaliges oder um ein sich wiederholendes Ereignis?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnEreignishaeufigkeitVS)
  * item[+]
    * linkId = "traumaspecific6"
    * code[+] = PcorItemDictionaryCS#traumaspecific6
    * text = "Passierte dieses Ereignis vor oder nach den ersten Anzeichen der Essstörung? Passierte der Beginn dieser Ereignisse vor oder nach den ersten Anzeichen der Essstörung?"
    * type = #choice
    * answerValueSet = Canonical(UkhdAnEreigniszeitpunktVS)
