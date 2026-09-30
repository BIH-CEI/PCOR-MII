**ANSOCQ-2** erfasst die **Veränderungsmotivation** über zwei Items aus dem *Anorexia Nervosa Stages of Change Questionnaire* (ANSOCQ) — je fünf Feststellungen entsprechend den Stadien der Veränderungsbereitschaft.

### Verwendung in PCOR-MII

Der ANSOCQ-2 ist ein **projektspezifischer Zuschnitt**: 2 der 20 ANSOCQ-Items (Rieger et al. 2000, revidierte 20-Item-Fassung 2002; deutsche Validierung: Pauli et al., *J Eat Disord* 2017) — Item 3 (Körperteile bei Gewichtszunahme) und Item 14 (Zeit mit Gedanken an Nahrung und Gewicht). Die Items stammen aus dem Item Level Dictionary (Entität AN, Kategorie TCH) und werden **vorläufig in PCOR-MII** gepflegt — eine spätere Aufnahme ins MII-PRO-Modul ist vorgesehen, sobald das Instrument offiziell abgestimmt ist (siehe [ADR-003](Designentscheidungen.html)). Erhoben nur im Szenario [AN](AN.html).

### Artefakte

- **Fragebogen:** [Questionnaire-ANSOCQ2](Questionnaire-ANSOCQ2.html)
- **Beispielantwort:** [ANSOCQ2Response](QuestionnaireResponse-ANSOCQ2Response.html) — ausgefülltes Beispiel; `language` ist `de-CH`, weil die validierte Schweizer Fassung vorgelegt wurde
- **CodeSysteme:** [ansocq-koerperteile](CodeSystem-ansocq-koerperteile.html), [ansocq-gedanken](CodeSystem-ansocq-gedanken.html) — je fünf Feststellungen mit `ordinalValue` 1–5 (Stadienlogik)
- **ValueSets:** [ansocq-koerperteile-vs](ValueSet-ansocq-koerperteile-vs.html), [ansocq-gedanken-vs](ValueSet-ansocq-gedanken-vs.html)

### Der PCOR-MII-Code eines Items ist die Dictionary-Variable

Jedes Item trägt in `item.code` seine Variable aus dem Item Level Dictionary, gegen das CodeSystem [pcor-item-dictionary](CodeSystem-pcor-item-dictionary.html). **Das ist der PCOR-MII-Code des Items** — ein zweites lokales CodeSystem für dieselben Items gibt es bewusst nicht.

Der Code bezeichnet das **Erhebungsfeld** und stimmt hier mit der Itemnummer überein (`ansocq3`, `ansocq14`); beim [ERQ-S](ERQ-6.html) ist das ausdrücklich **nicht** so. Zweck ist das maschinelle Verteilen eines flach erhobenen Datensatzes auf die Instrumenten-Questionnaires ([ADR-011](Designentscheidungen.html)).

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/ANSOCQ2`

### Items

| `linkId` | `item.code` (Dictionary) | Thema | Antwort |
|---|---|---|---|
| `ansocq3` | `ansocq3` | Körperteile, über die man sich bei Gewichtszunahme besonders Sorgen macht | 5 Feststellungen, Stadium 1–5 |
| `ansocq14` | `ansocq14` | Zeit, die mit Gedanken an Nahrung und Gewicht verbracht wird | 5 Feststellungen, Stadium 1–5 |

`linkId` und `item.code` stimmen hier überein — beim [ERQ-S](ERQ-6.html) ausdrücklich **nicht**.

Die `linkId`s sind die Dictionary-Variablen-IDs und entsprechen den Itemnummern des ANSOCQ. Feststellungs-Texte und Instruktionstext sind wortgleich aus dem Item Level Dictionary übernommen; jedem Antwortcode (1–5) ist per `ordinalValue` das Stadium der Veränderungsbereitschaft zugeordnet (1 ≈ Precontemplation … 5 ≈ Maintenance).

### Die Auswahl folgt der publizierten Faktorenstruktur

Die beiden Items sind je **ein hochladendes Item pro Faktor** der deutschen Validierung:

> **Pauli D, Aebi M, Winkler Metzke C, et al.** *J Eat Disord* 2017;5:11. [doi:10.1186/s40337-016-0125-z](https://doi.org/10.1186/s40337-016-0125-z) (Open Access)

Dort ergibt die Faktorenanalyse der 20 ANSOCQ-Items zwei Faktoren, und beide unserer Items werden namentlich als hochladend genannt:

| `linkId` | Faktor | Zitat |
|---|---|---|
| `ansocq3` | **weight gain and control** (α = .87) | *„…weight gain related aspects (e.g. weight gain of certain body parts in **item 3**…)"* |
| `ansocq14` | **attitudes and feelings** (α = .76) | *„…eating disorder related cognitions and feelings (e.g. preoccupations with food or weight in **item 14**…)"* |

Damit trifft die Angabe der DIZ-Implementierungsliste — *„nur das Item mit der höchsten Trennschärfe pro Skala"* — auch hier wörtlich zu, und die **Nummerierung ist bestätigt**: Die Itemnummern 3 und 14 stammen aus derselben Quelle.

**Eine Präzisierung:** Die „Skalen" der DIZ-Angabe sind die **Faktoren der deutschen Validierung**, nicht Subskalen des Originalinstruments — das ANSOCQ wird im Original über einen Gesamtwert ausgewertet. Die Auswahl folgt also nicht einer Eigenschaft des Originals, sondern der publizierten deutschen Faktorenstruktur.

### Wortlaut und Nummerierung — gegen das Original verifiziert

Der englische Originalbogen ist bei **Rieger et al. 2002** ([doi:10.1002/eat.10056](https://doi.org/10.1002/eat.10056), über den Charité-Zugang im Volltext) vollständig abgedruckt. Der Abgleich bestätigt beide Items samt ihrer fünf Feststellungen:

| `linkId` | Englisches Original (Item-Stamm) |
|---|---|
| `ansocq3` | *„…parts of your body which may particularly concern you in terms of weight gain (such as hips, thighs, stomach, or buttocks)"* |
| `ansocq14` | *„…time spent thinking about food and your weight (such as thoughts about becoming fat, counting the calories or fat content of food…)"* |

Die deutsche Fassung ist damit als **getreue Übersetzung** belegt, und die **Nummern 3 und 14 gelten in beiden Sprachen**.

**Zwei Fassungen — aufgeklärt:** Rieger et al. 2000 beschreiben eine 23-Item-Fassung, Rieger et al. 2002 die revidierte **20-Item-Fassung**. Die deutsche Übersetzung (Pauli et al. 2017) folgt der 20-Item-Revision — daher dort der Gesamtscore-Bereich 20–100. Ein Versatz zwischen deutscher und Originalzählung, den ich zwischenzeitlich vermutet hatte, besteht **nicht**.

### Drei Sprachebenen

| Ebene | Inhalt | Status |
|---|---|---|
| **`en`** | Originalwortlaut aus Rieger et al. 2002 — `item.text` und CodeSystem-Displays | Original |
| **`de-CH`** | die validierte Schweizer Übersetzung (Zürich, Pauli et al.), wortgleich übernommen | **bei der Erhebung maßgeblich** |
| **`de`** | PCOR-MII-eigene deutsche Fassung für den Einsatz in Deutschland | **keine validierte Übersetzung** |

`Questionnaire.language` steht auf `en`, weil der `item.text` den Originalwortlaut trägt; die beiden deutschen Fassungen hängen als `translation`-Extensions bzw. CodeSystem-`designation`s daran.

Die `de`-Ebene ist eine rein orthografische und grammatische Bereinigung der Schweizer Fassung — sie ändert nichts am Inhalt, ist aber eben auch nicht psychometrisch validiert. **Wer vergleichbar zu den publizierten Kennwerten erheben will, nutzt `de-CH`.**

**Die Unterschiede `de-CH` → `de`, vollständig:**

| Stelle | `de-CH` | `de` | Grund |
|---|---|---|---|
| `ansocq3` | „Ges**äss**" | „Ges**äß**" | Helvetismus — die Schweiz kennt kein ß |
| `ansocq3` | „über die Sie **Sich**" | „über die Sie **sich**" | Großschreibung von „sich" ist falsch |
| Körperteile, Stufe 1 | „bereit **an** diesen Körperteilen **zunehmen**" | „bereit**,** an diesen Körperteilen **zu**zunehmen" | Druckfehler der Vorlage (siehe unten) |

Alle übrigen Texte sind in beiden Fassungen identisch.

**Der dritte Punkt ist ein Druckfehler der Vorlage.** Stufe 1 fehlt sowohl das Komma nach „bereit“ als auch das „zu“ vor „zunehmen“, während die Stufen 2, 3 und 4 desselben Items das Muster korrekt bilden — und das englische Original ist über die Stufen 1 bis 4 strukturgleich gebaut:

| Stufe | `de-CH` |
|---|---|
| **1** | „Ich wäre auf keinen Fall bereit **an** diesen Körperteilen **zunehmen**“ |
| 2 | „…bereit wäre**,** an diesen Körperteilen **zu**zunehmen“ |
| 3 | „…bereit bin**,** an diesen Körperteilen **zu**zunehmen“ |
| 4 | „Ich versuche im Moment**,** an diesen Körperteilen **zu**zunehmen“ |

Eingeordnet wird das als **Satzfehler im gedruckten Fragebogen**, nicht als Fehler beim Übertragen ins Item Level Dictionary. Dafür sprechen zwei Beobachtungen: Das Dictionary war an allen anderen geprüften Stellen wortgenau — beim [EDE-Q6](EDE-Q6.html) und beim [ACE](ACE.html) stimmte jedes einzelne Item mit der Originalquelle überein —, und fehlendes Komma plus fehlendes „zu“ sehen zusammen nach einem einzelnen Setzfehler aus, nicht nach einem Abschreibfehler.

Daraus folgt, dass **`de-CH` unverändert bleibt**. Es bildet ab, was den Befragten tatsächlich vorlag, und unter genau diesem Wortlaut gelten die publizierten psychometrischen Kennwerte — eine stille Reparatur in der validierten Fassung würde diesen Bezug kappen. Der Fehler wird ausschließlich in der `de`-Ebene behoben; genau dafür ist sie da.

### Kontext: warum überhaupt das ANSOCQ?

Eine deutschsprachige Vergleichsarbeit stellt genau die Frage, die hinter der Instrumentenwahl steht — welches Verfahren die Veränderungsmotivation bei Anorexia nervosa am besten erfasst: **von Wietersheim J, Hoffmann C**, *Z Psychosom Med Psychother* 2011;57(1), [doi:10.13109/zptm.2011.57.1.62](https://doi.org/10.13109/zptm.2011.57.1.62) (beim Verlag frei zugänglich). Verglichen werden FEVER, ANSOCQ und das halbstrukturierte Interview RMI an 44 stationären Patientinnen.

Bemerkenswert für die Einordnung: Das Fazit fällt dort **zugunsten des RMI** aus — es bilde die Ambivalenz am besten ab und korreliere am höchsten mit den klinischen Daten. Wer die ANSOCQ-Wahl begründen muss, sollte diese Arbeit kennen.

### Einfachauswahl — eine bewusste Abweichung vom Original

Der Instruktionstext erlaubt *„diejenige Feststellung **(oder mehrere Feststellungen)**"*, das Dictionary führt beide Items aber als „Single Answer". Diesen Konflikt hatte ich zunächst zugunsten der Einfachauswahl aufgelöst und dabei zwei Argumente genannt — **eines davon war falsch und ist zurückgezogen.**

**Das Original erlaubt Mehrfachauswahl, ausdrücklich.** Rieger et al. 2002 schreiben zur Auswertung:

> „If the individual endorses more than one statement per item, the average score for the item is calculated."

Item 17 der Langform (Methoden der Gewichtskontrolle) instruiert es sogar explizit: *„You may select more than one statement for the different methods you use to control your weight."* Der Zusatz „oder mehrere Feststellungen" im PCOR-MII-Instruktionstext ist damit keine Ungenauigkeit, sondern eine **getreue Übersetzung**.

**Das zurückgezogene Argument:** Behauptet war, Mehrfachauswahl würde den Gesamtscore-Bereich 20–100 bei 20 Items sprengen, Einfachauswahl sei also arithmetisch zwingend. Das stimmt nicht. Weil *innerhalb* eines Items gemittelt wird, bleibt jedes Item bei 1–5 und die Summe bei 20–100 — unabhängig davon, wie viele Feststellungen angekreuzt werden. Auch der Satz aus Pauli et al. („participants can choose between five answers") trägt nicht: Er sagt, dass fünf Antworten zur Wahl stehen, nicht dass genau eine gewählt werden darf.

**Warum trotzdem Einfachauswahl:** weil das Item Level Dictionary beide Items als „Single Answer" führt und die Standorte sie so erheben. Modelliert wird, was tatsächlich erhoben wird, nicht was das Instrument zulässt — dieselbe Logik wie beim unveränderten `de-CH`-Wortlaut oben.

Das ist damit aber eine **bewusste Abweichung vom Original** und keine Ableitung daraus. Sie ist fachlich zu bestätigen, und sie hat eine Konsequenz: Ein Item-Wert nach Originalvorschrift kann ein Mittelwert sein (etwa 3,5), hier ist er immer eine ganze Stufe. Antworten aus PCOR-MII sind mit originalgetreuen Erhebungen daher nur eingeschränkt vergleichbar.

Für die **Langform im MII-PRO-Modul** gilt das nicht — dort ist das Instrument originalgetreu mit `repeats = true` und Item-Mittelwert zu modellieren.

### Herkunft der deutschen Übersetzung

Der deutsche Wortlaut stammt aus der **Schweizer** ANSOCQ-Fassung: Die Übersetzung wurde laut Pauli et al. von den Autor:innen jener Studie erstellt (Universitätsklinik für Psychiatrie Zürich) und an einer Schweizer Stichprobe validiert. Im Text sichtbar an „Ges**ä**ss“ — die übernommenen Texte enthalten kein einziges ß. Deshalb ist die Übersetzungsebene als `de-CH` ausgewiesen und nicht als `de`; die Unterscheidung folgt [ADR-005](Designentscheidungen.html).

### Kein Score

Das ANSOCQ wird über den Mittelwert aller Items ausgewertet (20 in der deutschen Fassung). Für den 2-Item-Zuschnitt liegt **keine validierte Scoring-Vorschrift** vor; ausgewertet wird auf Item-Ebene.

### Terminologie

Recherche via fhir-terminology MCP (Stand 2026-09-23): SNOMED CT kennt `443321009` *Anorexia nervosa stages of change questionnaire (assessment scale)* samt Score- und Assessment-Konzepten — diese bezeichnen das **Vollinstrument** und werden dem Zuschnitt bewusst **nicht** zugewiesen ([ADR-003](Designentscheidungen.html)). LOINC 2.83: keine ANSOCQ-Codes.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
