# EDE-Q6 (Essstörungspathologie) - PCOR-MII Implementation Guide v0.3.0

## EDE-Q6 (Essstörungspathologie)

**Translated page. Original language: German.**

**EDE-Q6** erfasst die **Essstörungspathologie** über sechs Items aus dem **Eating Disorder Examination-Questionnaire** (EDE-Q): drei 28-Tage-Häufigkeitsitems, ein Item zum Körperunbehagen sowie zwei Zusatzfragen zur Regelblutung.

### Verwendung in PCOR-MII

Der EDE-Q6 ist ein **projektspezifischer Zuschnitt** des EDE-Q (Fairburn & Beglin 1994; deutsche Fassung Hilbert, Tuschen-Caffier, Karwautz et al., **Diagnostica** 2007). Die Items stammen aus dem Item Level Dictionary (Entität AN, Kategorie DCH) und werden **vorläufig in PCOR-MII** gepflegt — eine spätere Aufnahme ins MII-PRO-Modul ist vorgesehen, sobald das Instrument offiziell abgestimmt ist (siehe [ADR-003](Designentscheidungen.md)). Erhoben nur im Szenario [AN](AN.md).

### Sprachebenen

`Questionnaire.language` steht auf **`en`**: Das EDE-Q-Original ist englisch (Fairburn & Beglin 1994). `item.text` und die sieben Antwortkonzepte tragen den Wortlaut des autorisierten Bogens **EDE-Q 6.0** (© Fairburn and Beglin 2008), frei bereitgestellt vom Centre for Research on Eating Disorders at Oxford; die deutsche dgvt-Fassung hängt als `translation` bzw. `designation` mit `lang = de` daran.

**Das verbessert hier zugleich die Rechtelage.** Der englische Wortlaut ist frei bereitgestellt, der deutsche steht unter dem dgvt-Rechtevorbehalt (siehe unten und [ADR-006](Designentscheidungen.md)). Englisch primär verschiebt den heikleren Teil damit in eine Übersetzungsebene, statt ihn zum Hauptinhalt zu machen.

**Ein Fund beim Abgleich mit dem Originalbogen:** Zwei Dinge, die man kennen sollte. Item 12 heißt im Original **„Have you had a **strong** desire to lose weight?“** — unsere deutsche Fassung sagt passend **„einen **starken** Wunsch“**. Und die Fragen `edeq29` und `edeq30` sind im englischen EDE-Q 6.0 **gar nicht nummeriert**: Sie stehen in einem unnummerierten Schlussblock nach Item 28, zusammen mit Gewicht, Größe und der Frage nach der Pille. Die Nummern 29 und 30 stammen aus der deutschen Ausgabe; die `linkId`s folgen also der deutschen Zählung, nicht dem Originalbogen.

### Artefakte

* **Fragebogen:** [Questionnaire-EDEQ6](Questionnaire-EDEQ6.md)
* **Beispielantwort:** [EDEQ6Response](QuestionnaireResponse-EDEQ6Response.md) — ausgefülltes Beispiel, einschließlich der über `enableWhen` abhängigen Frage `edeq30`
* **CodeSystem:** [ede-q6-tage](CodeSystem-ede-q6-tage.md) — 28-Tage-Häufigkeit (0 = kein Tag … 6 = jeden Tag), `ordinalValue` 0–6
* **ValueSet:** [ede-q6-tage-vs](ValueSet-ede-q6-tage-vs.md)

Die Ja/Nein-Frage `edeq29` nutzt das projektweite [DemJaNeinVS](ValueSet-dem-ja-nein.md).

### Der PCOR-MII-Code eines Items ist die Dictionary-Variable

Jedes Item trägt in `item.code` seine Variable aus dem Item Level Dictionary, gegen das CodeSystem [pcor-item-dictionary](CodeSystem-pcor-item-dictionary.md). **Das ist der PCOR-MII-Code des Items** — ein zweites lokales CodeSystem für dieselben Items gibt es bewusst nicht.

Der Code bezeichnet das **Erhebungsfeld**. Hier stimmt es mit der Itemnummer überein (`edeq1`, `edeq7`, `edeq12`, `edeq27`, `edeq29`, `edeq30`); beim [ERQ-S](ERQ-6.md) ist das ausdrücklich **nicht** so. Zweck des Codes ist das maschinelle Verteilen eines flach erhobenen Datensatzes auf die Instrumenten-Questionnaires ([ADR-011](Designentscheidungen.md)).

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/EDEQ6`

### Items

| | | | |
| :--- | :--- | :--- | :--- |
| `edeq1` | `edeq1` | Nahrungsmenge bewusst begrenzt (Figur/Gewicht)? | 0–6 (kein Tag … jeden Tag) |
| `edeq7` | `edeq7` | Nachdenken über Nahrung/Essen/Kalorien erschwert Konzentration? | 0–6 (kein Tag … jeden Tag) |
| `edeq12` | `edeq12` | Starker Wunsch abzunehmen? | 0–6 (kein Tag … jeden Tag) |
| `edeq27` | `edeq27` | Unwohlsein beim Anblick des eigenen Körpers? | 0–6 (überhaupt nicht … deutlich) |
| `edeq29` | `edeq29` | Regelblutung in den letzten 3–4 Monaten ausgeblieben? (Für Frauen) | ja/nein |
| `edeq30` | `edeq30` | Wenn ja: wie viele Regelblutungen ausgeblieben? | Zahl (`integer`) |

`linkId` und `item.code` stimmen hier überein — beim [ERQ-S](ERQ-6.md) ausdrücklich **nicht**.

### Die Auswahl folgt den vier Subskalen

Die `linkId`s **sind** die Original-EDE-Q-Itemnummern — und das ist hier nicht nur plausibel, sondern belegt: Die vier Skalen-Items sind je eines pro EDE-Q-Subskala.

| | | |
| :--- | :--- | :--- |
| `edeq1` | **Restraint** | Restriktion der Nahrungsmenge |
| `edeq7` | **Eating Concern** | gedankliche Beschäftigung mit Essen |
| `edeq12` | **Weight Concern** | Gewichtssorgen |
| `edeq27` | **Shape Concern** | Figursorgen |

Abgeglichen gegen die Standardzusammensetzung des EDE-Q (Restraint 1–5; Eating Concern 7, 9, 19–21; Weight Concern 8, 12, 22, 24, 25; Shape Concern 6, 8, 10, 11, 23, 26–28). Damit bestätigt sich die Angabe der DIZ-Implementierungsliste — **„nur das Item mit der höchsten Trennschärfe pro Skala"** — hier wörtlich. `edeq29` und `edeq30` sind keine Skalen-Items, sondern die beiden Zusatzfragen zur Regelblutung.

**Keine offizielle Kurzform.** Vom EDE-Q existieren mehrere validierte Kurzfassungen (EDE-QS mit 12 Items, EDE-Q-13, EDE-Q-8, EDE-Q-7), aber keine Vier-Item-Version mit je einem Item pro Subskala. Anders als beim [ERQ-S](ERQ-6.md), wo sich der Zuschnitt als publizierte Kurzform herausstellte, ist dieser hier projektspezifisch — deshalb auch kein Score.

### Wortlaut — vollständig verifiziert

Alle sechs Items **und** die Antwortskala stimmen wortgleich mit der autorisierten deutschen Übersetzung überein: **Hilbert A, Tuschen-Caffier B.** **Eating Disorder Examination-Questionnaire. Deutschsprachige Übersetzung.** 2. Auflage. Tübingen: dgvt-Verlag, 2016. Geprüft gegen das vom Verlag selbst bereitgestellte PDF — Übereinstimmung bei `edeq1`, `edeq7`, `edeq12`, `edeq27`, `edeq29` und `edeq30` sowie bei allen sieben Antwortstufen.

**Quellenkorrektur:** Die DIZ-Implementierungsliste nennt als Übersetzungspaper [doi:10.1026/0012-1924.53.3.144](https://doi.org/10.1026/0012-1924.53.3.144) (**Diagnostica** 2007). Das ist die psychometrische **Evaluation** der Übersetzung, nicht die Übersetzung selbst — der Wortlaut stammt aus der dgvt-Publikation.

Die Orthografie ist durchgehend deutsch, ohne Helvetismen (anders als bei [Demographie](Demographie.md) und [ANSOCQ-2](ANSOCQ-2.md)) — passend zur deutschen Quelle.

### Rechte — abgewogen und entschieden

Hier stehen zwei Tatsachen gegeneinander, und beide gehören benannt.

**Dafür:** Die Copyrightinhaberin bzw. der dgvt-Verlag stellen den **vollständigen Fragebogen samt Auswertungsbogen selbst frei zum Download bereit** — über die Verlagswebsite, ohne Registrierung, ohne Bezahlschranke. Das ist ein bewusster Akt der Bereitstellung: Das Instrument soll benutzt werden. Bei deutschsprachigen Testverfahren ist dieses Muster verbreitet — der Bogen frei, Manual und Auswertungslogik als Verlagsware.

**Dagegen:** Die Publikation trägt einen ausdrücklichen Rechtevorbehalt, der die elektronische Verarbeitung wörtlich benennt:

> „Alle Rechte vorbehalten. […] Jede Verwertung außerhalb der engen Grenzen des Urheberrechts ist ohne Zustimmung der Copyrightinhaberin unzulässig und strafbar. Dies gilt insbesondere für Vervielfältigungen, Übersetzungen, Mikroverfilmungen sowie die Einspeicherung und Verarbeitung in elektronischen Systemen." — © 2016 Anja Hilbert, dgvt-Verlag Tübingen

**Entscheidung:** Der Wortlaut wird aufgenommen, unter ausdrücklichem Verweis auf die freie Bereitstellung durch den Verlag und mit vollständiger Quellenangabe im `copyright`-Element. Die Bereitstellung wird als der aussagekräftigere Akt gewertet; der Rechtevorbehalt bleibt dabei ausgewiesen, nicht verschwiegen.

**Empfohlener nächster Schritt:** eine kurze Bestätigung der Rechteinhaberin einholen (Prof. Anja Hilbert, Universitätsmedizin Leipzig) — analog zum [OPD-SFK](OPD-SFK.md), wo die Rücksprache bereits erfolgreich geführt wurde. Damit wäre die Abwägung durch eine Zusage ersetzt. Bis dahin bleibt es eine begründete Entscheidung, keine Freigabe.

### Validierte Kurzform: der EDE-Q8

Dieselbe Publikation enthält den **EDE-Q8** (Kliem et al. 2015) mit je **zwei** Items pro Subskala; er korreliert zu r = .97 mit dem EDE-Q-Gesamtwert. Der hiesige Zuschnitt mit je **einem** Item pro Subskala ist nicht der EDE-Q8. Falls eine validierte Kurzform mit Score gewünscht wird, wäre er der naheliegende Kandidat — dieselbe Konstellation wie bei [SSUK-2](SSUK-2.md).

### Kein Score

Der EDE-Q wird über vier Subskalen und einen Global-Score (Mittelwerte) ausgewertet. Für den 6-Item-Zuschnitt („trennschärfstes Item je Skala") liegt **keine validierte Scoring-Vorschrift** vor; `edeq29`/`edeq30` sind ohnehin nicht skalenbildend. Ausgewertet wird auf Item-Ebene.

### Terminologie

Recherche via fhir-terminology MCP (Stand 2026-09-23): SNOMED CT kennt `446825002` **Eating disorder examination questionnaire (assessment scale)** samt Score- und Subskalen-Konzepten — diese bezeichnen das **Vollinstrument** und werden dem Zuschnitt bewusst **nicht** zugewiesen ([ADR-003](Designentscheidungen.md)). LOINC 2.83: keine EDE-Q-Codes.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

