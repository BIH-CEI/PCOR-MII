**UKHD-AN** ist der Sammelbogen der **standortspezifischen AN-Zusatzitems des Universitätsklinikums Heidelberg** — sieben Itemgruppen mit insgesamt 20 Items zu Vorbehandlung, Essstörungsanamnese, aktueller Behandlung, Zeit- und Häufigkeitsangaben zu Kindheitsbelastungen, belastenden Lebensereignissen, neuen Diagnosen und den Diagnosen bei Aufnahme.

Anders als die fünf AN-Instrumente ([ERQ-S](ERQ-6.html), [EDE-Q6](EDE-Q6.html), [ANSOCQ-2](ANSOCQ-2.html), [SSUK-2](SSUK-2.html), [ACE](ACE.html)) bilden diese Items **kein publiziertes Instrument** ab. Sie sind Eigenentwicklungen des Standorts und stammen direkt aus dem Item Level Dictionary.

> **Rechtelage:** Für den Wortlaut liegt **keine dokumentierte Freigabe** vor. Rechteinhaber ist das Universitätsklinikum Heidelberg; die Bestätigung ist einzuholen. Dass der Bogen trotzdem modelliert ist, ist eine bewusste Projektentscheidung zur Erprobung und **keine geklärte Rechtslage** — Einzelheiten im [Abschnitt Rechtelage](#rechtelage) weiter unten.

### Verwendung in PCOR-MII

Erhoben nur im Szenario [AN](AN.html), ergänzend zur AN-Batterie. Die Items decken Domänen ab, für die der [Erhebungsplan](Essstoerungen.html) kein publiziertes Instrument vorsieht: *Past Treatment*, *Current Treatment*, *AN Biography*, *Childhood Trauma Time Specification*, *Life Events*, *New Diagnosis* und *Diagnosis*. Alle sieben Gruppen sind dort Priorität **A**.

Gepflegt wird der Bogen **in PCOR-MII** — und hier anders als bei den fünf AN-Instrumenten nicht „vorläufig bis zur Aufnahme ins MII-PRO-Modul": Ein Sammelbogen standortspezifischer Items ist nichts, was ein modulweit nachgenutztes Kernmodul führen würde. Sollten einzelne Items später modulweit gebraucht werden, wäre das eine eigene Entscheidung je Item, nicht eine Übernahme des Bogens.

### Ein Questionnaire, nicht sieben

Die sieben Gruppen sind **ein** `Questionnaire` mit **einem `group`-Item je Gruppe**. Das folgt der Anti-Fragmentierungs-Grenze aus [ADR-011](Designentscheidungen.html):

- **Eigene Ressource** bekommt ein Instrument, das **publiziert und mehritemig** ist und eine eigene Nummerierung oder Skalenstruktur mitbringt.
- **In einen Sammelbogen** gehören **Einzelitems und unnummerierte Abschnitte** ohne eigene Instrumentenidentität — so wie die OECD-, GI-PS- und CPCOR-Einzelfragen in [DEM](Demographie.html) und die Anamnese-Abschnitte in [MHI](MHI.html).

Die UKHD-Gruppen sind genau dieser Fall: nichts davon ist publiziert, keine Gruppe hat eine Itemnummerierung, und drei der sieben haben ein oder zwei Items. Sieben Ressourcen wären kein Gewinn an Präzision, sondern Rauschen — und der Bogen, der der Person vorlag, war ohnehin **einer**.

Verloren geht dabei nichts: Die Gruppenzugehörigkeit bleibt **maschinenlesbar**, nur nicht über die Ressourcengrenze, sondern über `item.code` und die Property `instrument` im CodeSystem [pcor-item-dictionary](CodeSystem-pcor-item-dictionary.html). Wer alle Items der Gruppe `UKHD-CTT` sucht, fragt die Property ab — nicht den Dateinamen.

### Artefakte

- **Fragebogen:** [Questionnaire-UKHDAN](Questionnaire-UKHDAN.html)
- **Beispielantwort:** [UKHDANResponse](QuestionnaireResponse-UKHDANResponse.html) — Initial-/Screening-Termin; die Items anderer Erhebungszeitpunkte bleiben bewusst leer
- **CodeSystems / ValueSets** (fünf eigene Skalen):
  - [ukhd-an-psychotherapie](CodeSystem-ukhd-an-psychotherapie.html) / [-vs](ValueSet-ukhd-an-psychotherapie-vs.html) — `bdkm15`, nominal
  - [ukhd-an-arztbesuche](CodeSystem-ukhd-an-arztbesuche.html) / [-vs](ValueSet-ukhd-an-arztbesuche-vs.html) — `bdkm16`, `ordinalValue` 1–4
  - [ukhd-an-dauer-angabe](CodeSystem-ukhd-an-dauer-angabe.html) / [-vs](ValueSet-ukhd-an-dauer-angabe-vs.html) — Einheitenauswahl zu `AN_biography`
  - [ukhd-an-bmi-angabe](CodeSystem-ukhd-an-bmi-angabe.html) / [-vs](ValueSet-ukhd-an-bmi-angabe-vs.html) — Angabe-Status zu `lowBMI`
  - [ukhd-an-behandlungsstatus](CodeSystem-ukhd-an-behandlungsstatus.html) / [-vs](ValueSet-ukhd-an-behandlungsstatus-vs.html) — `treatment_outpatient`, nominal
  - [ukhd-an-ereignishaeufigkeit](CodeSystem-ukhd-an-ereignishaeufigkeit.html) / [-vs](ValueSet-ukhd-an-ereignishaeufigkeit-vs.html) — `traumaspecific1/3/5`, `ordinalValue` 1–2
  - [ukhd-an-ereigniszeitpunkt](CodeSystem-ukhd-an-ereigniszeitpunkt.html) / [-vs](ValueSet-ukhd-an-ereigniszeitpunkt-vs.html) — `traumaspecific2/4/6`, nominal

Die fünf Ja/Nein-Items nutzen das projektweite [DemJaNeinVS](ValueSet-dem-ja-nein.html). Das Dictionary kodiert dort 1 = ja / 0 = nein; die Kodierung ist im Mapping auf `DemAntwortCS` dokumentarisch, nicht strukturell — genau wie beim [ACE](ACE.html).

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDAN`

### Items

Die `linkId`s sind die **Dictionary-Variablen-IDs**. [ADR-008](Designentscheidungen.html) Regel 1 verlangt Original-Itemnummern — aber nur, wo es eine offizielle Nummerierung gibt. Diese Items haben keine: Es sind keine Zuschnitte eines publizierten Bogens, sondern Eigenentwicklungen ohne Instrumentenidentität. Damit greift der zweite Teil der Regel.

Gruppen-Items tragen sprechende IDs und **keinen** `item.code` — sie sind keine Dictionary-Variablen. Dasselbe gilt für die zwei PCOR-MII-eigenen Hilfsitems (siehe [Zusammengesetzte Items](#zwei-zusammengesetzte-items)).

Die Spalte **`TIMING`** gibt wieder, was das Dictionary über den Erhebungszeitpunkt sagt (i = Initial, a / at = alle, e = Entlassung). Sie ist **nicht** Teil des Questionnaire — siehe [TIMING](#timing-wird-nicht-modelliert).

| `linkId` | `item.code` (Dictionary) | Typ | Antwortoptionen | `TIMING` |
|---|---|---|---|---|
| **`ukhd-pt`** — Vorbehandlung (TCH) | — | `group` | | |
| `bdkm15` | `bdkm15` | `choice` | [ukhd-an-psychotherapie-vs](ValueSet-ukhd-an-psychotherapie-vs.html) (0/1/2) | i |
| `bdkm16` | `bdkm16` | `choice` | [ukhd-an-arztbesuche-vs](ValueSet-ukhd-an-arztbesuche-vs.html) (1–4, ordinal) | at, außer Entlassung und 2 Wochen nach |
| **`ukhd-anb`** — Essstörungsanamnese (DCH) | — | `group` | | |
| `AN_biography` | `AN_biography` | `choice` | [ukhd-an-dauer-angabe-vs](ValueSet-ukhd-an-dauer-angabe-vs.html) (1/2/3) | i |
| `AN_biography-wert` | — (PCOR-MII-eigen) | `integer` | Anzahl, `enableWhen` 1 **oder** 2 | i |
| `lowBMI` | `lowBMI` | `choice` | [ukhd-an-bmi-angabe-vs](ValueSet-ukhd-an-bmi-angabe-vs.html) (1/2) | i |
| `lowBMI-wert` | — (PCOR-MII-eigen) | `decimal` | kg/m², `enableWhen` 1 | i |
| **`ukhd-ct`** — Aktuelle Behandlung (TCH) | — | `group` | | |
| `treatment_outpatient` | `treatment_outpatient` | `choice` | [ukhd-an-behandlungsstatus-vs](ValueSet-ukhd-an-behandlungsstatus-vs.html) (1–4) | a |
| **`ukhd-ctt`** — Kindheitsbelastungen, Zeit-/Häufigkeitsangaben (EFA) | — | `group` | | |
| `traumaspecific1` | `traumaspecific1` | `choice` | [ukhd-an-ereignishaeufigkeit-vs](ValueSet-ukhd-an-ereignishaeufigkeit-vs.html) (1/2, ordinal) | i |
| `traumaspecific2` | `traumaspecific2` | `choice` | [ukhd-an-ereigniszeitpunkt-vs](ValueSet-ukhd-an-ereigniszeitpunkt-vs.html) (1/2/3) | i |
| `traumaspecific3` | `traumaspecific3` | `choice` | wie `traumaspecific1` | i |
| `traumaspecific4` | `traumaspecific4` | `choice` | wie `traumaspecific2` | i |
| `traumaspecific5` | `traumaspecific5` | `choice` | wie `traumaspecific1` | i |
| `traumaspecific6` | `traumaspecific6` | `choice` | wie `traumaspecific2` | i |
| **`ukhd-le`** — Belastende Lebensereignisse (EFA) | — | `group` | | |
| `life_event1_screening` | `life_event1_screening` | `choice` | [dem-ja-nein](ValueSet-dem-ja-nein.html) | i |
| `life_event1_monitoring` | `life_event1_monitoring` | `choice` | [dem-ja-nein](ValueSet-dem-ja-nein.html) | at außer Aufnahme und Entlassung |
| `lifev_discharge` | `lifev_discharge` | `choice` | [dem-ja-nein](ValueSet-dem-ja-nein.html) | e |
| `lifev_text` | `lifev_text` | `text` | Freitext, `enableWhen` auf alle drei (`any`) | at |
| **`ukhd-nd`** — Neue Diagnosen (DCH) | — | `group` | | |
| `new_diagnosis_monitoring` | `new_diagnosis_monitoring` | `choice` | [dem-ja-nein](ValueSet-dem-ja-nein.html) | a, außer i und e |
| `new_diagnosis_discharge` | `new_diagnosis_discharge` | `choice` | [dem-ja-nein](ValueSet-dem-ja-nein.html) | e |
| `new_diagnosis_text` | `new_diagnosis_text` | `text` | Freitext, `enableWhen` auf beide (`any`) | at |
| **`ukhd-d`** — Diagnosen bei Aufnahme (DCH) | — | `group` | | |
| `diagnosis_admit` | `diagnosis_admit` | `text` | Freitext | i |
| `comorbid1` | `comorbid1` | `text` | Freitext | i |

**Die Gruppen-Texte sind PCOR-MII-eigene Abschnittsüberschriften**, abgeleitet aus den englischen Spalten `DOMAIN` / `SCALE` des Dictionary. Sie sind **kein erhobener Wortlaut** und tragen deshalb auch keinen `item.code`.

Die Reihenfolge von Gruppen und Items ist die **Reihenfolge des Item Level Dictionary**. Ein Layoutblatt, das für diese Gruppen eine andere vorgibt, liegt nicht vor.

### Wortlaut: wortgleich übernommen, Fehler inklusive

Die Itemtexte und die Antwort-Displays sind **wortgleich** aus dem Item Level Dictionary übernommen. Normalisiert wurden **ausschließlich Layout-Artefakte der Excel-Zellen**: Zeilenumbrüche und Mehrfach-Leerzeichen. Führende Item-Nummern gibt es in diesen Gruppen nicht (anders als beim [ACE](ACE.html)).

**Nicht normalisiert — und das ist Absicht — wurden sprachliche Fehler der Vorlage.** Hier vollständig:

| Stelle | Im Dictionary | Korrekt wäre |
|---|---|---|
| `lowBMI` | „Welches war Ihr **niedrigter** BMI?" | niedrigster |
| `comorbid1` | „außer den **zurvor** genannten Diagnosen" | zuvor |
| `life_event1_monitoring`, `lifev_discharge` | „**Auflösung einer Partnerschaften**" | Auflösung einer Partnerschaft |
| alle drei `UKHD-LE`-Ja/Nein-Items | „Verlust **ihres** Zuhauses" | Ihres (Siezform) |
| `treatment_outpatient` | Stufe 3 „**Ja**, …", Stufe 4 „**ja**, …" | einheitlich |

Nach [ADR-010](Designentscheidungen.html) wäre eine Bereinigung nur als **zusätzliche Ebene** zulässig, nie am übernommenen Wortlaut. Hier ist sie bewusst **gar nicht** angelegt, und zwar aus einem anderen Grund als beim [ANSOCQ-2](ANSOCQ-2.html): Dort gibt es eine publizierte Vorlage und publizierte Kennwerte, gegen die zu entscheiden war, ob der Fehler in der Vorlage oder in der Abschrift steckt. Hier **ist das Dictionary die Vorlage** — es gibt keine zweite Quelle, gegen die man prüfen könnte. Die Korrektur gehört damit ins Dictionary, nicht in eine FHIR-Ebene daneben.

### Antwortskalen — `ordinalValue` nur, wo die Skala ordinal ist

[ADR-003](Designentscheidungen.html) Punkt 3 lässt Antwortcodes „vorsorglich" `ordinalValue` tragen, damit eine spätere Auswertung möglich bleibt. *Vorsorglich* heißt aber nicht *pauschal*: Ein `ordinalValue` an einer nominalen Skala ist eine Einladung, Unsinn zu summieren. Je Skala entschieden:

| Skala | `ordinalValue` | Begründung |
|---|---|---|
| `bdkm16` — Arztbesuche | **ja**, 1–4 | Monoton steigende Häufigkeit, letzte Stufe nach oben offen. Echte Rangskala |
| `traumaspecific1/3/5` — einmalig/mehrfach | **ja**, 1–2 | „einmalig" < „mehrfach" ist eine monotone Häufigkeitsaussage. Bei zwei Stufen leistet der Wert wenig, aber er ist nicht falsch |
| `bdkm15` — Psychotherapie früher/aktuell | **nein** | Drei **Zeitbezüge**, keine Menge. Und nicht erschöpfend geordnet: Wer früher *und* jetzt in Behandlung ist, findet keine eigene Stufe — damit fällt genau die Information weg, die eine Ordnung tragen müsste |
| `treatment_outpatient` — Behandlungsstatus | **nein** | Die Skala **mischt zwei Achsen**: Stufen 1/2 unterscheiden Behandlungsstatus (nein / nein, aber gesucht), Stufen 3/4 das **Setting** (ambulant / stationär bzw. teilstationär). Der Schritt 2→3 ist ein Statuswechsel, der Schritt 3→4 ein Settingwechsel; eine Zahl kann das nicht tragen. Eine Dichotomisierung (1,2 = nein / 3,4 = ja) ist aus den Codes jederzeit ableitbar und inhaltlich belastbar — ein Summenwert nicht |
| `traumaspecific2/4/6` — vor/nach Beginn | **nein** | „vor" und „nach" sind eine nominale Zeitrelation, und Stufe 3 („ich weiß es nicht mehr") hat in einer Rangfolge keinen Platz |
| `AN_biography`, `lowBMI` — Einheit/Angabe-Status | **nein** | Einheiten und eine Nicht-Angabe, keine Stufen. Der Messwert steckt im Hilfsitem |

**Zur Falle bei `bdkm16`:** Der `ordinalValue` trägt die **Dictionary-Codes 1–4** und damit Rangplätze, **nicht** Besuchszahlen — „gar nicht" ist 1, nicht 0. Wer die Werte als Anzahl Arztbesuche liest, verschiebt die Skala um eins; eine zählbasierte Auswertung braucht die Abbildung 1→0, 2→1, 3→2, 4→3+.

**Zur Stufe „ich weiß es nicht mehr":** Sie bleibt bewusst im Wertebereich und wird nicht als `dataAbsentReason` ausgelagert. Die Erinnerungslücke ist hier eine **Antwort, die vorgelegt wurde** — und damit etwas anderes als eine fehlende Information.

<a name="zwei-zusammengesetzte-items"></a>

### Zwei zusammengesetzte Items

`AN_biography` und `lowBMI` sind im Dictionary je **ein** Feld, das zwei Dinge erhebt: eine Auswahl **und** einen Zahlenwert („1 = seit *numeric* Monaten"). In FHIR ist ein Item ein Datentyp — daraus wird also das Paar aus dem [MHI](MHI.html) (`Q_WB151` Einheitenauswahl + `Q_WB151a` Wert):

| Item | Typ | Rolle |
|---|---|---|
| `AN_biography` | `choice` | Monate / Jahre / weiß ich nicht — **trägt die Dictionary-Variable** |
| `AN_biography-wert` | `integer` | Anzahl; `enableWhen` auf Monate **oder** Jahre (`enableBehavior = any`) |
| `lowBMI` | `choice` | BMI-Wert / weiß ich nicht — **trägt die Dictionary-Variable** |
| `lowBMI-wert` | `decimal` | BMI in kg/m²; `enableWhen` auf BMI-Wert |

Das **Dictionary-tragende** Item ist jeweils die **Auswahl**: Sie behält Variablen-ID, Wortlaut und `item.code`. Die Wert-Items sind PCOR-MII-eigen, tragen **keinen** `item.code` und keinen Dictionary-Wortlaut — ihr `text` ist eine kurze, selbst formulierte Feldbezeichnung.

Im MHI liegt es **umgekehrt**, weil dort `Q_WB151a` die Dictionary-Variable ist und die Einheitenauswahl der Zusatz. Die Rollen sind also nicht am Suffix abzulesen, sondern am Dictionary.

Bei `AN_biography` genügt **ein** Wert-Item für zwei Einheiten, weil die Einheit in der Auswahl steht. Zwei getrennte Felder wären redundant und könnten sich widersprechen.

**Abweichung vom MHI bei den Antwortcodes:** Die Einheitenauswahlen des MHI tragen mnemonische Codes (`#kg`, `#cm`), weil das Dictionary für diese PCOR-MII-eigenen Hilfsitems gar keine Codes führt. Hier sind `1`/`2`/`3` dagegen die **Codes des erhobenen Feldes** — mnemonische Codes wären eine Uminterpretation und würden den Rückweg in die Studiendatenhaltung verteuern. Es bleibt daher bei den numerischen Dictionary-Codes ([ADR-003](Designentscheidungen.html) Punkt 4).

### `enableWhen`

Gesetzt, wo es inhaltlich zwingend ist — Muster `edeq30` im [EDE-Q6](EDE-Q6.html):

**`lifev_text` hängt an allen drei Ja/Nein-Items der Gruppe**, mit `enableBehavior = any`. Die drei sind nicht Varianten derselben Frage, sondern **dieselbe Frage für drei verschiedene Erhebungszeitpunkte** („in Ihrem Leben" / „seit der letzten Befragung" / „seit Ihrer Aufnahme"). Pro Termin wird also **genau eine** gestellt, und „diese Lebensereignisse" bezieht sich auf die gestellte. Eine Bindung an nur eines der drei wäre an zwei Dritteln der Termine falsch; `enableBehavior = all` wäre es immer, weil nie alle drei beantwortet sind.

**`new_diagnosis_text` analog, aber an zwei Items.** Die Gruppe `UKHD-ND` hat kein Aufnahme-Item, und das ist konsistent: Bei Aufnahme gibt es definitionsgemäß keine „weiteren" Diagnosen seit der letzten Befragung — die Aufnahmediagnosen erhebt stattdessen `UKHD_D`.

**Bei `UKHD-CTT` bewusst nicht gesetzt**, obwohl es naheliegt. Begründung im nächsten Abschnitt.

<a name="timing-wird-nicht-modelliert"></a>

### `TIMING` wird nicht modelliert

Die `TIMING`-Spalte sagt, **zu welchem Erhebungszeitpunkt** ein Item gestellt wird. Das ist eine Eigenschaft des **Erhebungsplans**, nicht des Bogens: Ein `Questionnaire` beschreibt, *was* gefragt wird, nicht *wann*.

R4 hat dafür auch kein passendes Element. Die naheliegenden Kandidaten tragen nicht: `enableWhen` bräuchte ein Item, das den Erhebungszeitpunkt erfragt — und das gibt es nicht; eine eigene Extension kennt kein Consumer und erzwingt damit nichts.

**Sichtbar wird der Plan stattdessen in der Antwort.** Die [Beispielantwort](QuestionnaireResponse-UKHDANResponse.html) ist ein Initial-/Screening-Termin und beantwortet genau die Items mit `TIMING` i beziehungsweise a/at. Nicht beantwortet und deshalb gar nicht enthalten sind `life_event1_monitoring`, `lifev_discharge` und die **gesamte Gruppe `UKHD-ND`**. Das ist ein bewusstes Ergebnis und kein Versäumnis: **Eine Antwort, die alle 20 Items füllt, kann es an keinem realen Erhebungszeitpunkt geben.**

### Kein Score, keine Instrument-Codes

**Kein Score-Item.** Es gibt kein Instrument, das gescort werden könnte — diese Gruppen sind kein publizierter Bogen, also existiert auch keine Auswertungsvorschrift, die man übernehmen oder verfehlen könnte ([ADR-003](Designentscheidungen.html) Punkt 3). Das ist ein anderer Grund als bei den AN-Zuschnitten: Dort existiert eine Vorschrift, sie gilt nur nicht für den Zuschnitt.

**Terminologie.** Recherche via fhir-terminology MCP (LOINC 2.83, SNOMED CT 2026-05-01, Stand 2026-10-01): **null Treffer** für „lowest body mass index", „duration of eating disorder", „psychotherapy history" und „stressful life event". Weder `Questionnaire.code` noch semantische `item.code`s werden gesetzt; die Items tragen ausschließlich ihre Dictionary-Variable. Das ist konsistent mit der Entscheidung bei [GSLTPAQ](GSLTPAQ.html) und [IPQ-S](IPQ-S.html), keine Codes fremder Instrumente an etwas zu hängen, das sie nicht bezeichnen.

### Sprache

`Questionnaire.language` steht auf **`de`**, ohne Übersetzungsebene. [ADR-005](Designentscheidungen.html) ordnet Englisch-primär dort an, wo ein englisches **Original** existiert und die deutsche Fassung eine Übersetzung ist. Hier gibt es kein Original in einer anderen Sprache: Die Items sind deutschsprachige Eigenentwicklungen des Standorts.

Eine englische `item.text`-Ebene wäre eine **PCOR-MII-Übersetzung** und damit genau das, was ADR-005 vermeidet — eine unvalidierte Fassung an der Stelle, an der die erhobene steht. (Die Domänennamen des Dictionary sind englisch, aber das sind Spaltenbezeichnungen, keine Itemtexte.)

<a name="rechtelage"></a>

### Rechtelage — keine dokumentierte Freigabe

Die **DIZ-Implementierungsliste PCOR-MII führt ausschließlich publizierte Instrumente.** Die standortspezifischen Itemgruppen von UKHD, UKE und MHH kommen dort **gar nicht vor**. Für sie ist damit weder eine Erlaubnis noch eine Einschränkung dokumentiert — es ist keine Rechtsfrage, die sich aus der Liste beantworten ließe, sondern eine **Governance-Entscheidung der Standorte**.

Das Entscheidungslog unterscheidet an dieser Stelle zwei Sorten (siehe den offenen Punkt *Standortspezifische Itemgruppen* in den [Designentscheidungen](Designentscheidungen.html)):

- **Triviale Faktenfragen** — Körpergewicht, AN-Subtyp, Medikamentenliste. „Wie viel wiegen Sie aktuell in kg?" ist keine schutzfähige Schöpfung, und ohne den Wortlaut können die Datenintegrationszentren die Items nicht einheitlich implementieren. Diese 34 Items bleiben im [MHI](MHI.html) publiziert.
- **Entworfene Item-Batterien** — hier steckt Autorenschaft aus Heidelberg, und diese warten auf eine Freigabe.

**Die hier modellierten Gruppen fallen überwiegend in die zweite Kategorie.** `UKHD-CTT` (sechs Items zu Zeit- und Häufigkeitsangaben von Kindheitsbelastungen) und `UKHD-LE` (vier Items zu belastenden Lebensereignissen) sind entworfene Batterien; `UKHD_D` und `UKHD-ND` liegen näher an Faktenfragen, `UKHD-PT`, `UKHD-ANB` und `UKHD-CT` dazwischen.

**Dass sie dennoch modelliert sind, ist eine bewusste Projektentscheidung und keine geklärte Rechtslage.** Sachlich festgehalten heißt das:

1. **Rechteinhaber ist das Universitätsklinikum Heidelberg.**
2. **Eine Freigabe für die Veröffentlichung des Wortlauts liegt nicht dokumentiert vor.**
3. **Die Bestätigung des Standorts ist einzuholen.**

Bis dahin trägt die Ressource `status = draft` und `experimental = true`, und `Questionnaire.copyright` weist den Vorbehalt ausdrücklich aus. Ergibt die Rückmeldung eine Einschränkung, ist die Umstellung auf **metadata-only** das vorgesehene Mittel (Muster [WAI](WAI.html) — Struktur, `linkId`s und Wertebereiche ohne Originalwortlaut). Die [Beispielantwort](QuestionnaireResponse-UKHDANResponse.html) wäre davon nicht betroffen: Sie enthält keine Itemtexte, sondern nur `linkId`s und Antwortwerte.

### Ausdrücklich nicht enthalten

Zwei UKHD-Gruppen sind **bewusst ausgenommen**:

**`UKHD-BI` — Körperbild (`erwEV24`–`erwEV26`, 3 Items).** Eine **visuelle Bildskala**: Die Fragen bitten, aus einer Reihe von Körperbildern die passende Zahl zu wählen (eigenes Körperbild als Kind, Figur der Mutter, Figur des Vaters bei jeweils höchstem Gewicht). Zwei Gründe für die Ausnahme: Die **Datenerhebung läuft noch nicht mit dieser Skala**, und das Dictionary führt als Antwortoption nur einen Verweis auf einen Bilder-Reiter („Bild siehe Reiter *Bilder Body Image*"). Ohne die Bildvorlage ist das Item nicht modellierbar — die Anker einer visuellen Skala sind hier nicht Beschriftung, sondern der Messgegenstand. Nebenbefund: Das Dictionary führt die drei Items unter den Gruppen `UKHD-BI`, `UKHD-BI2` und `UKHD-BI3`, obwohl sie fachlich eine Skala sind.

**`UKHD-EDP` — Essstörungspathologie (`edp1`–`edp11`, 11 Items).** Trotz des UKHD-Präfixes vermutlich **kein Eigenbau des Standorts**, sondern ein **EDI-2-Zuschnitt** — je ein Item pro Subskala, dasselbe Zuschnittmuster wie bei den übrigen AN-Instrumenten. Das EDI-2 ist in der deutschen Fassung ein **Hogrefe-Testverfahren**, und die DIZ-Liste enthält dazu keine Zeile: Die Rechtelage ist damit nicht „frei", sondern **unbewertet**. Die richtige Reihenfolge ist: Identifikation gegen den Originalbogen bestätigen, Rechtelage bei Hogrefe klären, erst danach modellieren — voraussichtlich metadata-only. Einzelheiten im offenen Punkt der [Designentscheidungen](Designentscheidungen.html) und auf [Essstörungen — Erhebungsplan](Essstoerungen.html).

### Offene Punkte zum Dictionary

Beim Modellieren sind Auffälligkeiten aufgefallen, die **nicht in FHIR zu lösen** sind, sondern im Item Level Dictionary oder mit dem Standort. Sie stehen zusätzlich als `designNote` am jeweiligen Item.

**1. `UKHD-CTT` — worauf beziehen sich die drei Paare?** Der größte offene Punkt. Die sechs Items sind **drei identische Paare**: `traumaspecific1/3/5` fragen wortgleich nach einmaligem oder wiederholtem Ereignis, `traumaspecific2/4/6` wortgleich nach der zeitlichen Lage relativ zum Beginn der Essstörung. Drei Paare legen **drei berichtete Ereignisse** nahe — welche, sagt das Dictionary nicht. Die Itemtexte verweisen auf „Ihre Angabe", also auf ein **vorangehendes Item, das nicht zur Gruppe gehört und nirgends benannt ist**. Naheliegend wären die bejahten Items des [ACE](ACE.html) (`ace1`–`ace5`, Kategorie EFA wie diese Gruppe), aber das bleibt eine Vermutung: Der ACE hat fünf Items, nicht drei. **Konsequenz:** kein `enableWhen` und keine Wiederholungslogik — ein erfundener Bezug wäre eine Behauptung über die Erhebungslogik. Mit dem Standort zu klären.

**2. `traumaspecific2/4/6` enthalten zwei Fragesätze in einem Item.** „Passierte dieses Ereignis vor oder nach den ersten Anzeichen der Essstörung? Passierte der Beginn dieser Ereignisse vor oder nach den ersten Anzeichen der Essstörung?" Die beiden unterscheiden sich nur im Numerus und sind damit sehr wahrscheinlich **alternative Darbietungen**, die vom Vorgängeritem abhängen: Einzelereignis → erster Satz, Mehrfachereignis → zweiter Satz. Umgesetzt ist der Wortlaut **unverändert mit beiden Sätzen**; eine Aufspaltung wäre aus dem Dictionary nicht belegbar, weil beide Sätze dieselbe Variable mit derselben Antwortskala bedienen.

**3. `bdkm15` und `treatment_outpatient` überschneiden sich.** Beide fragen „Sind Sie zurzeit in psychotherapeutischer Behandlung?" — in zwei Gruppen, mit zwei verschiedenen Antwortskalen. Sie unterscheiden sich im Zeitbezug (`bdkm15` nur zur Aufnahme und mit Vorgeschichte, `treatment_outpatient` zu jedem Termin und mit Setting), liefern zur Aufnahme aber teilweise dieselbe Information. Im Dictionary zu prüfen, ob das beabsichtigt ist.

**4. Der Variablenname `treatment_outpatient` ist irreführend.** Er legt eine Frage nach ambulanter Behandlung nahe, aber Stufe 4 der Antwortskala erfasst ausdrücklich **klinische (stationäre) oder tagesklinische (teilstationäre)** Behandlung. Das Item fragt den Behandlungsstatus insgesamt ab. Der Name bleibt als `linkId` und `item.code` stehen, weil er die Dictionary-Variable ist — **aber er darf nicht als Bedeutungsangabe gelesen werden.**

**5. `comorbid1` — formal unsauber, bewusst so belassen (entschieden 01.10.2026).** Die Frage ist wörtlich eine Ja/Nein-Frage („Gibt es außer den zuvor genannten Diagnosen noch andere Diagnosen?“), das Dictionary sieht aber ein **Textfeld** vor. Gemeint ist das Textfeld: Dort sollen die weiteren **Diagnosen** eingetragen werden, nicht ein „ja“. `type = text` bildet die tatsächliche Erhebung also korrekt ab.

Die Formulierung bleibt **unverändert**. Das folgt [ADR-010](Designentscheidungen.html): Was in der Vorlage steht, wird nicht in der Spezifikation repariert — hier sogar mit einem zusätzlichen Argument, denn das Dictionary *ist* hier die Vorlage; es gibt keine zweite Quelle, gegen die sich prüfen ließe, ob der Fragesatz so gestellt wurde oder ein Übertragungsfehler ist. Praktische Folge für Auswertende: **Das Feld enthält Diagnosetext, keine Ja/Nein-Angabe** — unabhängig davon, wie die Frage formuliert ist.

**6. Uneinheitliche Variablennamen in `UKHD-LE`.** `life_event1_screening` und `life_event1_monitoring` gegen `lifev_discharge` und `lifev_text` — zwei Präfixe für eine Gruppe, und ein `life_event2` existiert nicht. Außerdem nennt die Beispielliste von `life_event1_screening` bloß „Partnerschaften", wo die beiden anderen „Auflösung einer Partnerschaften" sagen; dort fehlt offenbar der Kopf der Wendung.

**7. Die Gruppen-ID `UKHD_D` trägt einen Unterstrich**, während alle sechs anderen Gruppen einen Bindestrich führen (`UKHD-PT`, `UKHD-ANB`, …). Im Dictionary zu vereinheitlichen; die `linkId` des Gruppen-Items folgt der Hauskonvention (`ukhd-d`), die Dictionary-Schreibweise bleibt in der Property `instrument` des CodeSystems erhalten.

**8. `bdkm15`/`bdkm16` — unerklärtes Variablenpräfix.** Die beiden IDs passen zu keiner anderen Variable dieser Gruppen und deuten auf ein anderes Erhebungsinstrument als Ursprung. Das Präfix ist im Dictionary nicht erläutert. Dazu passt, dass `bdkm16` nach **Arztbesuchen** fragt, nicht nach Psychotherapie, aber in der Gruppe *Past Treatment* steht — inhaltlich gehört es eher zur Versorgungsinanspruchnahme (vgl. `UKE-HCU` in PSS).

**9. `UKHD_D` überschneidet sich mit dem [MHI](MHI.html).** Dort erheben `CPCOR-DIAG` (Diagnosegruppe zur Selbstzuordnung) und `GIPS13` (Liste chronischer Erkrankungen) **kodiert**, was hier als **Freitext** erhoben wird. Welche der beiden Darstellungen für die Auswertung maßgeblich ist, ist fachlich zu klären.

### Hinweis zur Erhebung

`UKHD-CTT` und `UKHD-LE` betreffen **hochsensible Inhalte** (Kindheitsbelastungen, Missbrauch, Verlusterfahrungen). Die Governance der Auswertung — analog zum PHQ-SI und zum [ACE](ACE.html) — ist fachlich zu klären.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
