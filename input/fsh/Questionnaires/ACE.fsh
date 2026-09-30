// ─────────────────────────────────────────────────────────────────────────────
// ACE — Belastende Kindheitserfahrungen, erste 5 Fragen des ACE-Fragebogens
// Quelle: PCOR Item Level Dictionary, Entität AN, Kategorie EFA,
//   Items ace1-ace5 (Typ "Single Answer", ja/nein).
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

Instance: ACE
InstanceOf: Questionnaire
Usage: #definition
Title: "ACE — Belastende Kindheitserfahrungen (erste 5 Fragen)"
Description: "Die ersten fünf Fragen des Adverse-Childhood-Experiences-Fragebogens (ACE): emotionale und körperliche Misshandlung, sexueller Missbrauch, emotionale und körperliche Vernachlässigung vor dem 18. Lebensjahr, je ja/nein. Kein Score — die Summe über den 5-Item-Zuschnitt ist kein validierter ACE-Score. Quelle: PCOR-MII Item Level Dictionary (Entität AN). Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items — und zusätzlich seinen LOINC-Code."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/ACE"
* name = "ACE"
// SPRACHE — en primaer nach ADR-005: Das ACE-Original ist englisch
//   (Felitti et al. 1998, Am J Prev Med 14(4):245-258; Kaiser Permanente /
//   CDC). item.text traegt den englischen Originalwortlaut, die deutsche
//   Fassung ACE-D haengt als translation-Extension daran.
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
* language = #en
* insert Version
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-09-23"
* publisher = "BIH-CEI"
* copyright = "Die Fragen entstammen dem Adverse-Childhood-Experiences-Fragebogen (ACE; Felitti et al., Am J Prev Med 1998, doi:10.1016/S0749-3797(98)00017-8), deutsche Fassung Wingenfeld et al., PPmP 2010, doi:10.1055/s-0030-1263161, im Zuschnitt des PCOR-MII Item Level Dictionary (erste 5 der 10 Fragen). Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."

// Designentscheidungen direkt am Questionnaire (designNote, ADR-003)
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen (ADR-003):** (0) **Auswahlregel des Zuschnitts:** Die DIZ-Implementierungsliste nennt in der Spalte *„verkürzte Version?“* hier **nicht** die Trennschärfe-Formel der übrigen AN-Zuschnitte, sondern *„die ersten 5 Fragen“*. Der Zuschnitt ist also der vordere Block des Instruments (Misshandlung und Vernachlässigung) ohne die Haushalts-Dysfunktions-Fragen 6-10, keine psychometrische Auswahl. (1) `linkId`s = Original-ACE-Fragennummern (1–5); die Haushalts-Dysfunktions-Fragen 6–10 sind nicht enthalten. (1a) **Englisch primär** (ADR-005): `item.text` trägt den englischen Originalwortlaut nach Felitti et al. 1998, die deutsche Fassung ACE-D hängt als `translation` mit `lang = de` daran. Das ist hier auch rechtlich die bessere Anordnung, denn die Rechtelage ist **nicht symmetrisch**: Das englische Original ist ein frei verwendetes Public-Health-Instrument, für die deutsche ACE-D-Fassung ist die Freigabe dagegen offen. (2) Kein Score: Der ACE-Score ist die Anzahl der Ja-Antworten über alle 10 Fragen — eine Summe über den 5-Fragen-Zuschnitt ist kein validierter ACE-Score. (3) Kein `Questionnaire.code`: LOINC `82813-7` bezeichnet das 10-Fragen-Panel. (4) Ja/Nein über das projektweite `DemJaNeinVS`; Dictionary-Kodierung 1 = ja / 0 = nein nur dokumentarisch. (5) Governance der Auswertung (hochsensible Inhalte, analog PHQ-SI) fachlich zu klären. (5) **`item.code` trägt zwei Codings:** die PCOR-MII-Dictionary-Variable gegen [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) — das ist der PCOR-MII-Code des Items — und den item-genauen LOINC-Code. Genau dafür ist `item.code` `0..*`. Die Dictionary-Variable bezeichnet das **Erhebungsfeld** und stimmt hier mit der Itemnummer überein; ein weiteres lokales CodeSystem gibt es bewusst nicht. Zweck: das maschinelle Verteilen eines flach erhobenen Datensatzes auf die Instrumenten-Questionnaires (ADR-011). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

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
