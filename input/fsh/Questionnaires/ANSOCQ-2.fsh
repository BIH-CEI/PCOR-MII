// ─────────────────────────────────────────────────────────────────────────────
// ANSOCQ-2 — Veränderungsmotivation, 2-Item-Zuschnitt des ANSOCQ
// Quelle: PCOR Item Level Dictionary, Entität AN, Kategorie TCH,
//   Items ansocq3 / ansocq14 (Typ "Single Answer").
//
// HERKUNFT — praeziser Stand nach Quellenpruefung 2026-09-29:
//   Zuschnitt des Anorexia Nervosa Stages of Change Questionnaire (ANSOCQ).
//   ZWEI FASSUNGEN — AUFGEKLAERT 2026-09-29:
//     Rieger et al. 2000 (Int J Eat Disord 28:387-396) beschreiben eine
//       23-Item-Fassung.
//     Rieger et al. 2002 (Int J Eat Disord 32:24-38, doi:10.1002/eat.10056)
//       fuehren die revidierte 20-ITEM-FASSUNG und drucken sie im Volltext
//       ab. Die deutsche Uebersetzung (Pauli et al. 2017) folgt dieser
//       20-Item-Fassung — daher dort Gesamtscore 20-100.
//   Die hiesigen linkIds beziehen sich auf die 20-Item-Fassung. Die
//   Nummerierung ist in BEIDEN Sprachen identisch (siehe unten).
//
//   Das Instrument umfasst je Item fuenf Feststellungen, die den
//   Stadien der Veraenderungsbereitschaft (1 = Precontemplation ...
//   5 = Maintenance) entsprechen. Die Variablen-IDs entsprechen den
//   Original-Itemnummern (Item 3: Koerperteile, Item 14: Gedanken an Nahrung
//   und Gewicht). Die DIZ-Implementierungsliste fuehrt das Instrument als
//   frei nutzbar.
//
//   ACHTUNG, QUELLENANGABE DER DIZ-LISTE IST UNGENAU: Als Entwicklungspaper
//   steht dort doi:10.1037/h0088437 — das ist Prochaska & DiClemente (1982),
//   "Transtheoretical therapy: Toward a more integrative model of change",
//   also das zugrundeliegende STADIENMODELL, nicht das Instrument. Das
//   ANSOCQ selbst wurde von Rieger et al. (2000) im Int J Eat Disord
//   publiziert. Fuer die Item-Verifikation ist die Rieger-Publikation
//   heranzuziehen, nicht der dort genannte DOI.
//
//   Deutschsprachige Validierung (Uebersetzungspaper laut DIZ-Liste):
//   Pauli D, Aebi M, Winkler Metzke C, et al. "Motivation to change, coping,
//   and self-esteem in adolescent anorexia nervosa: a validation study."
//   J Eat Disord 2017. doi:10.1186/s40337-016-0125-z
//
// KONTEXT ZUR INSTRUMENTENWAHL: Eine deutschsprachige Vergleichsarbeit
//   stellt genau die Frage, die hinter der Aufnahme des ANSOCQ steht —
//   welches Instrument die Veraenderungsmotivation bei Anorexia nervosa am
//   besten erfasst:
//     von Wietersheim J, Hoffmann C. "Erhebungsinstrumente zur
//     Veraenderungsmotivation von Patientinnen mit Anorexia nervosa im
//     Vergleich." Z Psychosom Med Psychother 2011;57(1):62-.
//     doi:10.13109/zptm.2011.57.1.62 — beim Verlag FULL ACCESS.
//   Verglichen werden dort FEVER, ANSOCQ und das halbstrukturierte
//   Interview RMI an 44 stationaeren AN-Patientinnen. Bemerkenswert fuer
//   die Einordnung: Das Fazit faellt zugunsten des RMI aus — es bilde die
//   Ambivalenz am besten ab und korreliere am hoechsten mit den klinischen
//   Daten. Wer die ANSOCQ-Wahl in PCOR-MII begruenden muss, sollte diese
//   Arbeit kennen.
//
//   ANMERKUNG ZUR QUELLENLANDSCHAFT: Drei der PCOR-MII-Instrumente haengen
//   an derselben Zeitschrift (Z Psychosom Med Psychother, Vandenhoeck &
//   Ruprecht) — diese ANSOCQ-Vergleichsarbeit (2011), der OPD-SFK (2015)
//   und das GI-PS (2023). Das deutet darauf hin, dass die Auswahl aus dem
//   deutschsprachigen psychosomatischen Fachumfeld stammt.
//
//   (Die Vergleichsarbeit enthaelt die ANSOCQ-Itemwortlaute nicht — sie ist
//   eine Vergleichsstudie, keine Instrumentenpublikation.)
//
// AUSWAHLLOGIK — VERIFIZIERT 2026-09-29: Die beiden Items sind je EIN
//   hochladendes Item pro Faktor der deutschen Validierung. Beleg:
//     Pauli D, Aebi M, Winkler Metzke C, et al. J Eat Disord 2017;5:11.
//     doi:10.1186/s40337-016-0125-z (Open Access)
//   Dort ergibt die Faktorenanalyse der 20 ANSOCQ-Items zwei Faktoren.
//   Woertlich:
//     Faktor 1 "weight gain and control" (alpha = .87): "The items with the
//       highest loadings on factor 1 are directly related to weight gain in
//       general (item 1 and 8) or weight gain related aspects (e.g. weight
//       gain of certain body parts in ITEM 3, ...)"
//     Faktor 2 "attitudes and feelings" (alpha = .76): "The items with the
//       highest loadings on factor 2 refer to eating disorder related
//       cognitions and feelings (e.g. preoccupations with food or weight in
//       ITEM 14, ...)"
//   ansocq3 gehoert also zu den hoechstladenden Items von Faktor 1,
//   ansocq14 zu denen von Faktor 2. Damit trifft die Angabe der
//   DIZ-Implementierungsliste — "nur das Item mit der hoechsten
//   Trennschaerfe pro Skala" — hier woertlich zu, und zugleich ist die
//   NUMMERIERUNG bestaetigt: Die Itemnummern 3 und 14 stammen aus
//   derselben Quelle.
//
//
// ITEMWORTLAUT UND NUMMERIERUNG — VERIFIZIERT GEGEN DAS ENGLISCHE ORIGINAL
//   (Rieger et al. 2002, Volltext der 20-Item-Fassung):
//     Item 3  = "parts of your body which may particularly concern you in
//               terms of weight gain (such as hips, thighs, stomach, or
//               buttocks)" -> deutsch "Koerperteile ... (wie z.B. Hueften,
//               Oberschenkel, Bauch oder Gesaess)"
//     Item 14 = "time spent thinking about food and your weight (such as
//               thoughts about becoming fat, counting the calories or fat
//               content of food, or calculating the amount of energy used
//               when exercising)" -> deutsch "die Zeit, die mit Gedanken an
//               Nahrung und Gewicht verbracht wird (z.B. ...)"
//   Auch die je fuenf Feststellungen entsprechen einander Stufe fuer Stufe.
//   Die deutsche Fassung ist damit als getreue Uebersetzung belegt, und die
//   NUMMERN 3 und 14 GELTEN IN BEIDEN SPRACHEN — der frueher vermutete
//   Versatz zwischen deutscher und Originalzaehlung besteht nicht.
//
// SPRACHMODELLIERUNG (ADR-005) — DREI EBENEN:
//   en    = Originalwortlaut (Rieger et al. 2002), item.text und
//           CodeSystem-Displays.
//   de-CH = die validierte Schweizer Uebersetzung (Zuerich, Pauli et al.),
//           WORTGLEICH so uebernommen, wie sie im Item Level Dictionary
//           steht. Das ist die Fassung, unter der die psychometrischen
//           Kennwerte gelten — bei der Erhebung ist sie massgeblich.
//   de    = eine PCOR-MII-eigene deutsche Fassung fuer den Einsatz in
//           Deutschland. KEINE validierte Uebersetzung, sondern eine
//           orthografische und grammatische Bereinigung der de-CH-Fassung.
//           Wer psychometrisch vergleichbar erheben will, nutzt de-CH.
//
//   UNTERSCHIEDE de-CH -> de, vollstaendig:
//     1. ansocq3: "Gesaess" -> "Gesaeß" (Helvetismus; die Schweiz kennt
//        kein ß).
//     2. ansocq3: "ueber die Sie Sich" -> "ueber die Sie sich"
//        (Grossschreibung von "sich" ist falsch).
//     3. Koerperteile, Stufe 1: "bereit an diesen Koerperteilen zunehmen"
//        -> "bereit, an diesen Koerperteilen zuzunehmen" (fehlendes "zu"
//        und fehlendes Komma).
//     Alle uebrigen Texte sind in de und de-CH identisch.
//
//   EINORDNUNG VON PUNKT 3 — EDITORIALER DRUCKFEHLER DER VORLAGE:
//   Stufe 1 fehlt sowohl das Komma nach "bereit" als auch das "zu" vor
//   "zunehmen", waehrend die Stufen 2, 3 und 4 desselben Items das Muster
//   korrekt bilden ("..., an diesen Koerperteilen zuzunehmen"). Auch das
//   englische Original ist ueber die Stufen 1-4 strukturgleich gebaut.
//   Bewertung (Projektleitung): Das ist ein SATZFEHLER IM GEDRUCKTEN
//   FRAGEBOGEN, nicht ein Fehler beim Uebertragen ins Item Level
//   Dictionary. Dafuer spricht, dass das Dictionary an allen anderen
//   geprueften Stellen wortgenau ist — beim EDE-Q und beim ACE stimmte
//   jedes Item mit der Originalquelle ueberein — und dass fehlendes Komma
//   und fehlendes "zu" zusammen wie ein einzelner Setzfehler aussehen.
//
//   FOLGE: de-CH BLEIBT UNVERAENDERT. Es bildet ab, was den Befragten
//   tatsaechlich vorlag, und unter genau diesem Wortlaut gelten die
//   psychometrischen Kennwerte. Der Fehler wird NICHT in der validierten
//   Fassung repariert, sondern ausschliesslich in der de-Ebene — genau
//   dafuer ist sie da. Wer den Schweizer Originalbogen zur Hand hat, kann
//   die Einschaetzung bestaetigen; noetig fuer die Modellierung ist das
//   nicht mehr.
//
// EINFACHAUSWAHL — ENTSCHIEDEN 2026-09-29, BEGRUENDUNG KORRIGIERT 2026-09-30:
//   Der Instruktionstext erlaubt "diejenige Feststellung (oder mehrere
//   Feststellungen)", das Dictionary fuehrt beide Items aber als "Single
//   Answer".
//
//   DAS ORIGINAL ERLAUBT MEHRFACHAUSWAHL. Rieger et al. 2002 (doi:10.1002/
//   eat.10056), Abschnitt zur ANSOCQ-Auswertung, woertlich: "If the individual
//   endorses more than one statement per item, the average score for the item
//   is calculated." Item 17 der Langform instruiert es sogar ausdruecklich
//   ("You may select more than one statement for the different methods you use
//   to control your weight"). Der Zusatz "oder mehrere Feststellungen" im
//   PCOR-MII-Instruktionstext ist damit KEINE Ungenauigkeit, sondern eine
//   getreue Uebersetzung des Originals.
//
//   EIN FRUEHERES ARGUMENT WAR FALSCH und ist hier ausdruecklich
//   zurueckgezogen: Behauptet war, Mehrfachauswahl wuerde den Gesamtscore-
//   Bereich 20-100 bei 20 Items "sprengen", Einfachauswahl sei daher
//   arithmetisch zwingend. Das stimmt nicht — weil INNERHALB eines Items
//   gemittelt wird, bleibt jedes Item bei 1-5 und die Summe bei 20-100, ganz
//   unabhaengig davon, wie viele Feststellungen angekreuzt werden. Der Satz
//   aus Pauli et al. ("participants can choose between five answers") sagt
//   ausserdem nur, dass fuenf Antworten zur Wahl stehen, nicht dass genau eine
//   gewaehlt werden darf.
//
//   WARUM TROTZDEM EINFACHAUSWAHL: weil das Item Level Dictionary beide Items
//   als "Single Answer" fuehrt und die Standorte sie so erheben. Modelliert
//   wird, was tatsaechlich erhoben wird — nicht, was das Instrument zulaesst.
//   Das ist damit aber eine BEWUSSTE ABWEICHUNG VOM ORIGINAL und keine
//   Ableitung daraus; sie ist fachlich zu bestaetigen. Konsequenz, falls sie
//   bestehen bleibt: Antworten aus PCOR-MII sind mit Erhebungen nach
//   Originalvorschrift nur eingeschraenkt vergleichbar, weil dort ein
//   Item-Wert ein Mittelwert sein kann (z. B. 3.5) und hier immer eine ganze
//   Stufe ist.
//
//   FUER DIE LANGFORM IM MII-PRO-MODUL gilt das nicht: Dort ist das
//   Instrument originalgetreu mit repeats = true und Item-Mittelwert zu
//   modellieren.
//
// SPRACHE: Der deutsche Wortlaut stammt aus der SCHWEIZER Fassung. Die
//   Uebersetzung wurde laut Pauli et al. von den Autor:innen jener Studie
//   erstellt (Universitaetsklinik fuer Psychiatrie Zuerich) und an einer
//   "Swiss-German sample" validiert. Im Text hier sichtbar an "Gesaess";
//   die Datei enthaelt kein einziges Eszett. Deshalb language = de-CH.
//   Fuer die volle Behandlung nach ADR-005 (Englisch primaer, de-CH als
//   translation) fehlt der englische Originalwortlaut aus Rieger et al.
//   (2000) — offener Punkt.
//
// SCORING: bewusst KEIN Score-Item. Das ANSOCQ wird über den Mittelwert der
//   20 Items der deutschen Fassung ausgewertet; für den 2-Item-Zuschnitt liegt keine validierte
//   Scoring-Vorschrift vor. Die Antwortcodes tragen ordinalValue 1-5
//   (Stadienlogik), damit eine spätere Auswertung möglich bleibt.
//
// Terminologie-Recherche (mcp__fhir-terminology__search_codes, Stand 2026-09-23):
//   - SNOMED CT 2026-05-01: 443321009 |Anorexia nervosa stages of change
//     questionnaire (assessment scale)| samt Score-/Assessment-Konzepten
//     existiert — bezeichnet aber das VOLLINSTRUMENT. Dem 2-Item-
//     Zuschnitt wird der Code bewusst NICHT zugewiesen (siehe
//     Designentscheidungen).
//   - LOINC 2.83: keine ANSOCQ-Codes.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: AnsocqKoerperteileCS
Id: ansocq-koerperteile
Title: "ANSOCQ Item 3 — Körperteile (Codes)"
Description: "Fünf Feststellungen des ANSOCQ-Items 3 (Körperteile bei Gewichtszunahme), Stadien 1-5. ordinalValue-Property je Konzept. Jedes Item trägt in `item.code` seine PCOR-MII-Dictionary-Variable — das ist der PCOR-MII-Code des Items. Hier stimmt sie mit der Itemnummer überein."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Stadium der Veränderungsbereitschaft (1-5)."
* ^property[=].type = #decimal
* #1 "There is no way I would be prepared to gain weight on these body parts."
  * ^designation[+].language = #de-CH
  * ^designation[=].value = "Ich wäre auf keinen Fall bereit an diesen Körperteilen zunehmen"
  * ^designation[+].language = #de
  * ^designation[=].value = "Ich wäre auf keinen Fall bereit, an diesen Körperteilen zuzunehmen"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #2 "Sometimes I think I would be prepared to gain weight on these body parts."
  * ^designation[+].language = #de-CH
  * ^designation[=].value = "Manchmal denke ich, dass ich unter Umständen bereit wäre, an diesen Körperteilen zuzunehmen"
  * ^designation[+].language = #de
  * ^designation[=].value = "Manchmal denke ich, dass ich unter Umständen bereit wäre, an diesen Körperteilen zuzunehmen"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2
* #3 "I have decided that I am prepared to gain weight on these body parts."
  * ^designation[+].language = #de-CH
  * ^designation[=].value = "Ich habe mich entschieden, dass ich bereit bin, an diesen Körperteilen zuzunehmen"
  * ^designation[+].language = #de
  * ^designation[=].value = "Ich habe mich entschieden, dass ich bereit bin, an diesen Körperteilen zuzunehmen"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 3
* #4 "I am presently trying to gain weight on these body parts."
  * ^designation[+].language = #de-CH
  * ^designation[=].value = "Ich versuche im Moment, an diesen Körperteilen zuzunehmen"
  * ^designation[+].language = #de
  * ^designation[=].value = "Ich versuche im Moment, an diesen Körperteilen zuzunehmen"
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 4
* #5 "I am working to maintain the weight I gained on these body parts."
  * ^designation[+].language = #de-CH
  * ^designation[=].value = "Ich arbeite daran, das Gewicht zu halten, das ich an diesen Körperteilen zugenommen habe."
  * ^designation[+].language = #de
  * ^designation[=].value = "Ich arbeite daran, das Gewicht zu halten, das ich an diesen Körperteilen zugenommen habe."
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 5

ValueSet: AnsocqKoerperteileVS
Id: ansocq-koerperteile-vs
Title: "ANSOCQ Item 3 — Körperteile"
Description: "Fünf Feststellungen des ANSOCQ-Items 3 (Körperteile bei Gewichtszunahme), Stadien 1-5."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system AnsocqKoerperteileCS
* ^expansion.timestamp = "2026-09-23T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-koerperteile|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-koerperteile"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "There is no way I would be prepared to gain weight on these body parts."
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-koerperteile"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Sometimes I think I would be prepared to gain weight on these body parts."
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-koerperteile"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "I have decided that I am prepared to gain weight on these body parts."
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-koerperteile"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "I am presently trying to gain weight on these body parts."
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-koerperteile"
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "I am working to maintain the weight I gained on these body parts."

CodeSystem: AnsocqGedankenCS
Id: ansocq-gedanken
Title: "ANSOCQ Item 14 — Gedanken an Nahrung und Gewicht (Codes)"
Description: "Fünf Feststellungen des ANSOCQ-Items 14 (Zeit mit Gedanken an Nahrung und Gewicht), Stadien 1-5. ordinalValue-Property je Konzept."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #ordinalValue
* ^property[=].uri = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* ^property[=].description = "Stadium der Veränderungsbereitschaft (1-5)."
* ^property[=].type = #decimal
* #1 "There is nothing wrong with the amount of time I spend thinking about food and my weight."
  * ^designation[+].language = #de-CH
  * ^designation[=].value = "Die Zeitdauer, die ich mit Gedanken an Nahrung und Gewicht verbringe, ist völlig in Ordnung."
  * ^designation[+].language = #de
  * ^designation[=].value = "Die Zeitdauer, die ich mit Gedanken an Nahrung und Gewicht verbringe, ist völlig in Ordnung."
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 1
* #2 "The amount of time I spend thinking about food and my weight is a problem sometimes."
  * ^designation[+].language = #de-CH
  * ^designation[=].value = "Die Zeitdauer, die ich mit Gedanken an Nahrung und Gewicht verbringe, ist manchmal ein Problem für mich."
  * ^designation[+].language = #de
  * ^designation[=].value = "Die Zeitdauer, die ich mit Gedanken an Nahrung und Gewicht verbringe, ist manchmal ein Problem für mich."
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 2
* #3 "I have decided that I need to use strategies to help me reduce the amount of time I spend thinking about food and my weight."
  * ^designation[+].language = #de-CH
  * ^designation[=].value = "Ich habe mich entschieden, dass ich Strategien entwickeln muss, um die Zeitdauer zu reduzieren, die ich mit Gedanken an Nahrung und Gewicht verbringe."
  * ^designation[+].language = #de
  * ^designation[=].value = "Ich habe mich entschieden, dass ich Strategien entwickeln muss, um die Zeitdauer zu reduzieren, die ich mit Gedanken an Nahrung und Gewicht verbringe."
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 3
* #4 "I am using strategies to help me reduce the amount of time I spend thinking about food and my weight."
  * ^designation[+].language = #de-CH
  * ^designation[=].value = "Ich benutze Strategien, die mir helfen, die Zeitdauer zu reduzieren, die ich mit Gedanken an Nahrung und Gewicht verbringe."
  * ^designation[+].language = #de
  * ^designation[=].value = "Ich benutze Strategien, die mir helfen, die Zeitdauer zu reduzieren, die ich mit Gedanken an Nahrung und Gewicht verbringe."
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 4
* #5 "I used to spend too much time thinking about food and my weight which I have managed to reduce and am working to keep it this way."
  * ^designation[+].language = #de-CH
  * ^designation[=].value = "Ich verbrachte früher zu viel Zeit mit Gedanken an Nahrung und Gewicht, was ich nun reduzieren konnte, und ich arbeite daran, dass dies so bleibt."
  * ^designation[+].language = #de
  * ^designation[=].value = "Ich verbrachte früher zu viel Zeit mit Gedanken an Nahrung und Gewicht, was ich nun reduzieren konnte, und ich arbeite daran, dass dies so bleibt."
  * ^property[+].code = #ordinalValue
  * ^property[=].valueDecimal = 5

ValueSet: AnsocqGedankenVS
Id: ansocq-gedanken-vs
Title: "ANSOCQ Item 14 — Gedanken an Nahrung und Gewicht"
Description: "Fünf Feststellungen des ANSOCQ-Items 14 (Zeit mit Gedanken an Nahrung und Gewicht), Stadien 1-5."
* insert PR_CS_VS_Version
* ^status = #draft
* ^experimental = true
* include codes from system AnsocqGedankenCS
* ^expansion.timestamp = "2026-09-23T00:00:00Z"
* ^expansion.parameter[0].name = "used-codesystem"
* ^expansion.parameter[0].valueUri = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-gedanken|0.3.0"
* ^expansion.contains[0].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-gedanken"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "There is nothing wrong with the amount of time I spend thinking about food and my weight."
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-gedanken"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "The amount of time I spend thinking about food and my weight is a problem sometimes."
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-gedanken"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "I have decided that I need to use strategies to help me reduce the amount of time I spend thinking about food and my weight."
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-gedanken"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "I am using strategies to help me reduce the amount of time I spend thinking about food and my weight."
* ^expansion.contains[+].system = "https://bih-cei.github.io/PCOR-MII/CodeSystem/ansocq-gedanken"
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "I used to spend too much time thinking about food and my weight which I have managed to reduce and am working to keep it this way."

Instance: ANSOCQ2
InstanceOf: Questionnaire
Usage: #definition
Title: "ANSOCQ-2 — Veränderungsmotivation (2-Item-Zuschnitt des ANSOCQ)"
Description: "Zwei Items aus dem Anorexia Nervosa Stages of Change Questionnaire (ANSOCQ): Bereitschaft zur Gewichtszunahme an sorgenbesetzten Körperteilen (Item 3) und Umgang mit der Zeit für Gedanken an Nahrung und Gewicht (Item 14). Je fünf Feststellungen entsprechend den Stadien der Veränderungsbereitschaft (1-5). Kein Score — für den Zuschnitt liegt keine validierte Scoring-Vorschrift vor. Quelle: PCOR-MII Item Level Dictionary (Entität AN)."
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* url = "https://bih-cei.github.io/PCOR-MII/Questionnaire/ANSOCQ2"
* name = "ANSOCQ2"
* insert Version
* code[+] = PcorQuestionnaireCatalogueCS#ansocq-2 "ANSOCQ-2"
* status = #draft
* experimental = true
* language = #en
* subjectType = #Patient
* date = "2026-09-23"
* publisher = "BIH-CEI"
* copyright = "Die Items entstammen dem Anorexia Nervosa Stages of Change Questionnaire (ANSOCQ; Rieger et al. 2000, Int J Eat Disord), im Zuschnitt des PCOR-MII Item Level Dictionary. Deutschsprachige Validierung: Pauli et al., J Eat Disord 2017, doi:10.1186/s40337-016-0125-z. Nutzungsstatus laut DIZ-Implementierungsliste PCOR-MII: frei. Die Rechte an Instrument und Item-Formulierungen verbleiben bei den Autor:innen; Nachnutzende müssen die Nutzungsbedingungen für den eigenen Anwendungsfall eigenständig prüfen. Nur der PCOR-MII-eigene FHIR-Inhalt unterliegt der Repository-Lizenz (CC-BY-4.0)."

// Designentscheidungen direkt am Questionnaire (designNote, ADR-003)
* extension[+].url = $designNote
* extension[=].valueMarkdown = "**Designentscheidungen (ADR-003):** (0) **Auswahlregel des Zuschnitts** laut DIZ-Implementierungsliste, Spalte *„verkürzte Version?“*: *„nicht vollständig verwendet, sondern nur das Item mit der höchsten Trennschärfe pro Skala“*. Gegen die Faktorenstruktur der deutschen Validierung nachgeprüft (Pauli et al. 2017) — je ein hochladendes Item pro Faktor. Die „Skalen“ der DIZ-Angabe sind hier die Faktoren der deutschen Validierung, nicht Subskalen des Originals; das ANSOCQ wird im Original über einen Gesamtwert ausgewertet. (1) `linkId`s = Itemnummern der **20-Item-Fassung** (3, 14) — in beiden Sprachen identisch, verifiziert gegen den im Volltext abgedruckten Originalbogen bei Rieger et al. 2002 (doi:10.1002/eat.10056) und gegen Pauli et al. 2017. Zwei Fassungen existieren: Rieger 2000 mit 23 Items, Rieger 2002 mit 20 — die deutsche Übersetzung folgt der 20-Item-Revision. (1a) **Drei Sprachebenen** (ADR-005): `en` = Originalwortlaut (Rieger et al. 2002); `de-CH` = die validierte Schweizer Übersetzung, wortgleich übernommen — **bei der Erhebung maßgeblich**; `de` = eine PCOR-MII-eigene, orthografisch und grammatisch bereinigte Fassung für den Einsatz in Deutschland, **keine validierte Übersetzung**. Unterschiede de-CH → de: „Gesäss“→„Gesäß“, „Sie Sich“→„Sie sich“ sowie in Stufe 1 der Körperteile „bereit an … zunehmen“→„bereit, an … zuzunehmen“. Letzteres ist ein **editorialer Druckfehler der Vorlage** (Stufen 2–4 desselben Items sagen korrekt „zuzunehmen“): `de-CH` bildet bewusst ab, was den Befragten vorlag, und bleibt unverändert — korrigiert wird ausschließlich in `de`. (2) Kein Score: Das ANSOCQ wird über den Mittelwert der 20 Items ausgewertet; für den 2-Item-Zuschnitt liegt keine validierte Vorschrift vor. Die Antwortcodes tragen `ordinalValue` 1–5 (Stadienlogik). (3) **Einfachauswahl — bewusste Abweichung vom Original.** Das Original erlaubt ausdrücklich mehrere Feststellungen je Item und mittelt sie: „If the individual endorses more than one statement per item, the average score for the item is calculated“ (Rieger et al. 2002); Item 17 der Langform instruiert es sogar. Der Zusatz „oder mehrere Feststellungen“ im Instruktionstext ist damit eine getreue Übersetzung. Einfachauswahl ist hier dennoch umgesetzt, weil das Item Level Dictionary beide Items als „Single Answer“ führt und die Standorte sie so erheben — modelliert wird, was erhoben wird. Die Abweichung ist fachlich zu bestätigen; sie schränkt die Vergleichbarkeit mit Erhebungen nach Originalvorschrift ein, weil dort ein Item-Wert ein Mittelwert sein kann. Ein früher hier behauptetes arithmetisches Argument (Mehrfachauswahl sprenge den Bereich 20–100) ist **zurückgezogen** — die Mittelung innerhalb des Items hält jedes Item bei 1–5. (3a) Die deutsche Fassung ist die **Schweizer** Übersetzung (Zürich, Validierung an Schweizer Stichprobe; im Text sichtbar an „Gesäss“) — deshalb als `de-CH` ausgewiesen, nicht als `de`. (4) Kein `Questionnaire.code`: SNOMED `443321009` bezeichnet das Vollinstrument. (6) **`item.code` trägt die PCOR-MII-Dictionary-Variable** gegen [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html) — das ist der PCOR-MII-Code des Items, ein weiteres lokales CodeSystem gibt es dafür bewusst nicht. Er bezeichnet das **Erhebungsfeld**; hier stimmt es mit der Itemnummer überein. Zweck: das maschinelle Verteilen eines flach erhobenen Datensatzes auf die Instrumenten-Questionnaires (ADR-011). Details: <https://bih-cei.github.io/PCOR-MII/Designentscheidungen.html>"

// ── Instruktionstext ─────────────────────────────────────────────────────────
* item[+]
  * linkId = "ansocq-intro"
  * text = "Die beiden nächsten Fragen bestehen aus fünf Möglichkeiten. Lesen Sie bitte für jeden Abschnitt die fünf Feststellungen sorgfältig durch. Dann wählen Sie diejenige Feststellung (oder mehrere Feststellungen) aus, welche Ihre momentane Einstellung und Ihr momentanes Verhalten am besten beschreibt bzw. beschreiben (nicht wie Sie früher gewesen sind oder wie Sie gerne wären)."
  * type = #display

// ── 2 Items (linkId = Dictionary-Variablen-ID = ANSOCQ-Itemnummer) ───────────
* item[+]
  * linkId = "ansocq3"
  * code[+] = PcorItemDictionaryCS#ansocq3
  * text = "The following statements refer to parts of your body which may particularly concern you in terms of weight gain (such as hips, thighs, stomach, or buttocks):"
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de-CH
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Die folgenden Feststellungen beziehen sich auf Körperteile, über die Sie Sich im Falle einer Gewichtszunahme möglicherweise besonders Sorgen machen (wie z.B. Hüften, Oberschenkel, Bauch oder Gesäss):"
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Die folgenden Feststellungen beziehen sich auf Körperteile, über die Sie sich im Falle einer Gewichtszunahme möglicherweise besonders Sorgen machen (wie z.B. Hüften, Oberschenkel, Bauch oder Gesäß):"
  * type = #choice
  * answerValueSet = Canonical(AnsocqKoerperteileVS)
* item[+]
  * linkId = "ansocq14"
  * code[+] = PcorItemDictionaryCS#ansocq14
  * text = "The following statements refer to time spent thinking about food and your weight (such as thoughts about becoming fat, counting the calories or fat content of food, or calculating the amount of energy used when exercising):"
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de-CH
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Die folgenden Feststellungen beziehen sich auf die Zeit, die mit Gedanken an Nahrung und Gewicht verbracht wird (z.B. Gedanken daran, dick zu werden, Kalorienzählen, Fettanteil von Nahrungsmitteln ausrechnen, Errechnen des Kalorienverbrauchs durch sportliche Betätigung):"
  * text.extension[+].url = $translation
  * text.extension[=].extension[+].url = "lang"
  * text.extension[=].extension[=].valueCode = #de
  * text.extension[=].extension[+].url = "content"
  * text.extension[=].extension[=].valueString = "Die folgenden Feststellungen beziehen sich auf die Zeit, die mit Gedanken an Nahrung und Gewicht verbracht wird (z.B. Gedanken daran, dick zu werden, Kalorienzählen, Fettanteil von Nahrungsmitteln ausrechnen, Errechnen des Kalorienverbrauchs durch sportliche Betätigung):"
  * type = #choice
  * answerValueSet = Canonical(AnsocqGedankenVS)
