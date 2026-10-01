# ACE (Belastende Kindheitserfahrungen) - PCOR-MII Implementation Guide v0.3.0

## ACE (Belastende Kindheitserfahrungen)

**Translated page. Original language: German.**

**ACE + Zeitangaben** erfasst **belastende Kindheitserfahrungen** (vor dem 18. Lebensjahr) über die ersten fünf Fragen des **Adverse-Childhood-Experiences**-Fragebogens, je mit ja/nein — und ordnet die bejahten Ereignisse über sechs UKHD-Items zeitlich ein.

> **Dieser Bogen ist ein PCOR-MII-Komposit, nicht der ACE.** Zu den fünf ACE-Items kommen seit dem 01.10.2026 die sechs Items der Dictionary-Gruppe `UKHD-CTT`, die vorher im Sammelbogen [UKHD-AN](UKHD-AN.md) standen. Damit hat der Bogen **zwei Rechtequellen** mit unterschiedlichem Status — siehe [Rechtelage](#rechtelage) und [Zwei Quellen in einem Bogen](#zwei-quellen).

### Verwendung in PCOR-MII

Der PCOR-Zuschnitt umfasst die **ersten 5 der 10 ACE-Fragen** (Felitti et al., **Am J Prev Med** 1998; deutsche Fassung Wingenfeld et al., **PPmP** 2010): emotionale Misshandlung, körperliche Misshandlung, sexueller Missbrauch, emotionale Vernachlässigung, körperliche Vernachlässigung. Die Haushalts-Dysfunktions-Fragen 6–10 sind nicht enthalten. Dazu kommen die sechs Zeitangaben der Gruppe `UKHD-CTT`. Alle Items stammen aus dem Item Level Dictionary (Entität AN, Kategorie EFA); die fünf ACE-Items werden **vorläufig in PCOR-MII** gepflegt — eine spätere Aufnahme ins MII-PRO-Modul ist vorgesehen, sobald das Instrument offiziell abgestimmt ist (siehe [ADR-003](Designentscheidungen.md)). Erhoben nur im Szenario [AN](AN.md).

### Zwei Quellen in einem Bogen — warum die UKHD-Zeitangaben hier liegen

Die sechs Items `traumaspecific1` bis `traumaspecific6` sind **drei Paare**: je eine Frage nach der Häufigkeit des Ereignisses (einmalig oder wiederholt) und eine nach seiner zeitlichen Lage relativ zu den ersten Anzeichen der Essstörung. Jedes Paar charakterisiert **ein** berichtetes Ereignis — das ist die Bedeutung von „Ihre Angabe" in beiden Itemtexten.

**Welches Ereignis, sagt das Dictionary ausdrücklich.** Die Spalte `ADDITIONAL INFORMATION` nennt es wörtlich:

| | | |
| :--- | :--- | :--- |
| `traumaspecific1`/`2` | **„ACE Abfrage ace1, Antwort Ja = 1"** | `enableWhen`auf`ace1`= ja |
| `traumaspecific3`/`4` | **„ACE Abfrage ace2, Antwort Ja = 1"** | `enableWhen`auf`ace2`= ja |
| `traumaspecific5`/`6` | **„ACE Abfrage ace3, Antwort Ja = 1"** | `enableWhen`auf`ace3`= ja |

**Und genau diese Bedingung erzwingt die Zusammenlegung.** `Questionnaire.item.enableWhen.question` nimmt laut R4 eine `linkId` **innerhalb desselben Questionnaire** — eine Abhängigkeit über Bogengrenzen hinweg ist in FHIR nicht ausdrückbar. Die Items mussten also dorthin, wo ihre Bedingung steht, sonst wäre die Erhebungslogik nur Prosa geblieben.

**Nur `ace1` bis `ace3` haben Paare**, `ace4` und `ace5` nicht. Das passt zum Inhalt: Die ersten drei Fragen beschreiben abgrenzbare **Ereignisse** (Misshandlung, Missbrauch), die letzten beiden andauernde **Vernachlässigung**, für die „einmalig oder wiederholt" kaum sinnvoll wäre.

**Was die Verschiebung nicht ändert:** Die sechs Items behalten ihre Dictionary-Variablen als `item.code` und dort die Property `instrument = UKHD-CTT`. Wer die Gruppe abfragt, findet sie weiterhin — die Ressourcengrenze hat sich verschoben, die Gruppenzugehörigkeit nicht. Das ist genau die Trennung, die [ADR-011](Designentscheidungen.md) behauptet.

Antwortoptionen der sechs Items: [ukhd-an-ereignishaeufigkeit-vs](ValueSet-ukhd-an-ereignishaeufigkeit-vs.md) (1/2, `ordinalValue` — „einmalig" < „mehrfach" ist eine monotone Häufigkeitsaussage) und [ukhd-an-ereigniszeitpunkt-vs](ValueSet-ukhd-an-ereigniszeitpunkt-vs.md) (1/2/3, **nominal** — „vor" und „nach" sind eine Zeitrelation, und Stufe 3 „ich weiß es nicht mehr" hat in einer Rangfolge keinen Platz; sie bleibt bewusst im Wertebereich, weil die Erinnerungslücke hier eine **vorgelegte Antwort** ist und keine fehlende Information).

**Dictionary-Befund, unverändert übernommen:** `traumaspecific2/4/6` enthalten **zwei Fragesätze in einem Item**, die sich nur im Numerus unterscheiden („dieses Ereignis" gegen „der Beginn dieser Ereignisse"). Sehr wahrscheinlich sind das alternative Darbietungen, die von der Häufigkeitsfrage desselben Paares abhängen. Eine Aufspaltung wäre aus dem Dictionary nicht belegbar — beide Sätze bedienen dieselbe Variable mit derselben Antwortskala.

### Sprachebenen

`Questionnaire.language` steht seit der Zusammenlegung auf **`de`**, vorher auf `en`. Der Bogen ist ein **gemischtes** Komposit: fünf Items mit englischem Originalwortlaut und deutscher `translation`, sechs deutschsprachige PCOR-MII-Items ohne englisches Original. Vollständig lesbar ist er damit nur auf Deutsch — auf Englisch nur zu fünf Elfteln. Dieselbe Mehrheitsregel wie beim [DEM](Demographie.md), dort mit umgekehrtem Ergebnis.

`Resource.language` nennt die **Basissprache des Dokuments** und sagt nichts über die Sprachebene der einzelnen Items: Für die fünf ACE-Items bleibt nach [ADR-005](Designentscheidungen.md) **Englisch primär**, weil das ACE-Original englisch ist (Felitti et al. 1998, Kaiser Permanente / CDC). `item.text` trägt dort den englischen Originalwortlaut, die deutsche Fassung **ACE-D** hängt als `translation`-Extension mit `lang = de` daran. Für die sechs UKHD-Items gibt es kein englisches Original; ihr `item.text` ist deutsch und trägt keine Übersetzungsebene — eine englische Fassung wäre eine unvalidierte PCOR-MII-Übersetzung an der Stelle, an der der erhobene Wortlaut steht.

**Bei den fünf ACE-Items ist die Anordnung auch rechtlich die bessere**, denn die Rechtelage ist **nicht symmetrisch**: Das englische Original ist ein breit frei verwendetes Public-Health-Instrument, für die deutsche ACE-D-Fassung ist die Freigabe dagegen offen (siehe unten). Englisch primär verschiebt den ungeklärten Teil in eine Übersetzungsebene.

Zur Quelle des englischen Wortlauts: ein an die Originalpublikation zitierendes Exemplar, nicht der Verlagsabdruck. Der Wortlaut der zehn Items ist seit 1998 unverändert und vielfach identisch reproduziert.

**Nur die ersten fünf Items sind modelliert, nicht der ACE-10.** Die Langform darf nach [ADR-008](Designentscheidungen.md) mitmodelliert werden, ist aber nicht Bestandteil dieses Release — und der deutsche Wortlaut der Items 6 bis 10 liegt ohnehin nicht vor.

### Artefakte

* **Fragebogen:** [Questionnaire-ACE](Questionnaire-ACE.md)
* **Beispielantwort:** [ACEResponse](QuestionnaireResponse-ACEResponse.md) — ausgefülltes Beispiel; zwei bejahte Items in der emotionalen Dimension, und **nur eine der drei Zeitangabe-Gruppen belegt**. Das ist kein Versäumnis, sondern der Punkt: Bejaht ist von den drei Trägeritems nur `ace1`, also ist nur `ctt-ereignis-1` freigeschaltet — die beiden anderen Gruppen fehlen in der Antwort, statt leer dazustehen. Ein einziger Fall belegt damit die Verzweigung in beide Richtungen.
* **CodeSystems / ValueSets der Zeitangaben:** [ukhd-an-ereignishaeufigkeit](CodeSystem-ukhd-an-ereignishaeufigkeit.md) / [-vs](ValueSet-ukhd-an-ereignishaeufigkeit-vs.md) und [ukhd-an-ereigniszeitpunkt](CodeSystem-ukhd-an-ereigniszeitpunkt.md) / [-vs](ValueSet-ukhd-an-ereigniszeitpunkt-vs.md). Ids und Canonicals behalten das `ukhd-an`-Präfix: Es benennt den Standort und die Dictionary-Gruppe, nicht die Datei.

Die fünf ACE-Items nutzen das projektweite [DemJaNeinVS](ValueSet-dem-ja-nein.md). Das Dictionary kodiert 1 = ja / 0 = nein; die Kodierung ist im Mapping auf `DemAntwortCS` dokumentarisch, nicht strukturell.

### Die Codes eines Items — Dictionary-Variable und LOINC nebeneinander

Jedes Item trägt **zwei** Codings, und genau dafür ist `item.code` `0..*`:

* die Variable aus dem Item Level Dictionary gegen [pcor-item-dictionary](CodeSystem-pcor-item-dictionary.md) — **das ist der PCOR-MII-Code des Items**
* den item-genauen **LOINC-Code** (`82814-5` bis `82818-6`)

Ein zweites lokales CodeSystem für dieselben Items gibt es bewusst nicht. Die Dictionary-Variable bezeichnet das **Erhebungsfeld** und stimmt hier mit der Itemnummer überein; beim [ERQ-6](ERQ-6.md) ist das ausdrücklich **nicht** so. Zweck ist das maschinelle Verteilen eines flach erhobenen Datensatzes auf die Instrumenten-Questionnaires ([ADR-011](Designentscheidungen.md)).

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/ACE`

### Items

Jedes Item trägt **zwei** `item.code`-Codings — die Dictionary-Variable und den item-genauen LOINC-Code:

| | | | |
| :--- | :--- | :--- | :--- |
| `ace1` | `ace1` | `82814-5` | Emotionale Misshandlung (beschimpft/erniedrigt; Angst vor Verletzung) |
| `ace2` | `ace2` | `82815-2` | Körperliche Misshandlung (gestoßen/geschlagen; Verletzungsspuren) |
| `ace3` | `ace3` | `82816-0` | Sexueller Missbrauch |
| `ace4` | `ace4` | `82817-8` | Emotionale Vernachlässigung (nicht geliebt; kein Zusammenhalt) |
| `ace5` | `ace5` | `82818-6` | Körperliche Vernachlässigung (Essen/Kleidung/Schutz; Eltern intoxikiert) |

Dazu die sechs Zeitangaben, in drei `group`-Items mit `enableWhen`. Die Gruppen-Items sind PCOR-MII-eigen und tragen **keinen** `item.code` — sie sind keine Dictionary-Variablen:

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **`ctt-ereignis-1`** | — | `group` |   | `ace1`= ja |
| `traumaspecific1` | `traumaspecific1` | `choice` | [-ereignishaeufigkeit-vs](ValueSet-ukhd-an-ereignishaeufigkeit-vs.md)(1/2, ordinal) |   |
| `traumaspecific2` | `traumaspecific2` | `choice` | [-ereigniszeitpunkt-vs](ValueSet-ukhd-an-ereigniszeitpunkt-vs.md)(1/2/3) |   |
| **`ctt-ereignis-2`** | — | `group` |   | `ace2`= ja |
| `traumaspecific3` | `traumaspecific3` | `choice` | wie`traumaspecific1` |   |
| `traumaspecific4` | `traumaspecific4` | `choice` | wie`traumaspecific2` |   |
| **`ctt-ereignis-3`** | — | `group` |   | `ace3`= ja |
| `traumaspecific5` | `traumaspecific5` | `choice` | wie`traumaspecific1` |   |
| `traumaspecific6` | `traumaspecific6` | `choice` | wie`traumaspecific2` |   |

Die LOINC-Codes sind die Panel-Komponenten von `82813-7`; der Panel-Code selbst bleibt dem 5-Fragen-Zuschnitt bewusst nicht zugewiesen. `linkId` und Dictionary-Variable stimmen hier überein — beim [ERQ-6](ERQ-6.md) ausdrücklich **nicht**.

Die Fragetexte sind wortgleich aus dem Item Level Dictionary übernommen; lediglich Layout-Artefakte der Excel-Zellen (Zeilenumbrüche, Mehrfach-Leerzeichen, inkonsistente führende Item-Nummern) wurden normalisiert. Ein gemeinsamer Instruktionstext steht als `display`-Item voran. **Hinweis zur Erhebung:** Die Items betreffen hochsensible Inhalte (Missbrauch, Vernachlässigung) — die Governance der Auswertung (analog PHQ-SI) ist fachlich zu klären. Das gilt für die Zeitangaben mit, die dieselben Ereignisse weiter ausfragen.

### Wortlaut — vollständig verifiziert

Betrifft die **fünf ACE-Items**; für die sechs Zeitangaben ist das Dictionary selbst die Vorlage, es gibt keine zweite Quelle zum Abgleich. Alle fünf ACE-Items stimmen **wortgleich** mit der deutschen Fassung **ACE-D** überein (Schäfer, Wingenfeld & Spitzer). Geprüft wurde Teilsatz für Teilsatz, einschließlich der „oder"-Struktur innerhalb der Items. Eine einzige Abweichung ist dabei aufgefallen und korrigiert: die Anführungszeichen um „high" in `ace5`, die zuvor in gerader statt typografischer Form standen.

**Nummerierung bestätigt:** `ace1`–`ace5` sind die Items 1–5 des ACE-D; der Bogen hat insgesamt zehn Items mit dichotomem Ja/Nein-Format. Die Angabe der DIZ-Implementierungsliste — **„die ersten 5 Fragen"** — trifft damit wörtlich zu. Die Items 6–10 (Trennung oder Verlust eines Elternteils, Gewalt gegen die Mutter, Suchterkrankung, psychische Erkrankung und Haft im Haushalt) bilden den Haushalts-Dysfunktions-Block und sind hier bewusst nicht enthalten.

**Zur Quellengüte — und zur Rechtelage, die davon abweicht:** Das ursprünglich geprüfte Exemplar stammte von einer Drittseite, nicht von den Herausgeber:innen. Für `ace2` liegt inzwischen eine **peer-reviewte Bestätigung** vor: Das **Deutsche Ärzteblatt** druckt die Frage zur körperlichen Misshandlung wortgleich ab (Witt, Sachser, Plener, Brähler & Fegert, Dtsch Arztebl Int 2019;116:635–42, [doi:10.3238/arztebl.2019.0635](https://doi.org/10.3238/arztebl.2019.0635), eKASTEN 1).

Dieselbe Quelle wirft aber die Rechtefrage neu auf. Sie druckt **nur zwei von zehn Items** ab — ausdrücklich als „Beispielfragen" — und setzt darüber:

> „Copyright und Zitierweise: Ingo Schäfer, Katja Wingenfeld und Carsten Spitzer (2009) ACE-D; Deutsche Version des „Adverse Childhood Experiences Questionnaire" (ACE). Universität Hamburg. **Der Gesamtfragebogen kann über Prof. Dr. Ingo Schäfer bezogen werden.**"

Ein peer-reviewtes Journal beschränkt sich also bewusst auf zwei Items und verweist für den Rest auf den Rechteinhaber. Das ist das Muster **„auf Anfrage beziehbar"**, nicht „frei publizierbar" — wie beim [OPD-SFK](OPD-SFK.md), wo die Rücksprache bereits erfolgreich geführt wurde.

Die Angabe „frei verfügbar" der DIZ-Implementierungsliste trifft damit plausibel auf das **englische Original** zu (Felitti et al. 1998, Kaiser Permanente / CDC — ein Public-Health-Instrument in breiter freier Verwendung), nicht auf die deutsche ACE-D-Fassung. Der Wortlaut bleibt hier aufgenommen, aber als **begründete Annahme, nicht als Freigabe**; die Rücksprache mit Prof. Dr. Ingo Schäfer (Universität Hamburg) ist einzuholen. Festgehalten als offener Punkt in den [Designentscheidungen](Designentscheidungen.md).

### Kein Score

Der ACE-Score des Vollinstruments ist die **Anzahl der Ja-Antworten über alle 10 Fragen** (0–10). Eine Summe über den 5-Fragen-Zuschnitt (0–5) ist **kein validierter ACE-Score** — daher bewusst kein Score-Item; ausgewertet wird auf Item-Ebene, bis eine Regel fachlich abgestimmt ist. Für die sechs Zeitangaben gibt es ohnehin keine Auswertungsvorschrift: Sie bilden kein publiziertes Instrument ab.

### Rechtelage — zwei Quellen, zwei Status

`Questionnaire.copyright` weist beide getrennt aus:

1. **Die fünf ACE-Items.**Die DIZ-Implementierungsliste führt das Instrument als frei nutzbar; das trifft plausibel auf das**englische Original**zu, nicht ohne Weiteres auf die deutsche ACE-D-Fassung (Einzelheiten unter[Wortlaut](#wortlaut)). Rücksprache mit Prof. Dr. Ingo Schäfer einzuholen.
1. **Die sechs Zeitangaben.**Rechteinhaber ist das**Universitätsklinikum Heidelberg**. Die DIZ-Implementierungsliste führt ausschließlich publizierte Instrumente und kennt die standortspezifischen Itemgruppen gar nicht — es gibt für sie damit weder eine dokumentierte Erlaubnis noch eine dokumentierte Einschränkung.**Eine Freigabe liegt nicht vor und ist einzuholen.**Dass der Wortlaut hier aufgenommen ist, ist eine bewusste Projektentscheidung zur Erprobung; ergibt die Rückmeldung eine Einschränkung, ist die Umstellung dieser sechs Items auf metadata-only vorgesehen (Muster[WAI](WAI.md)).

Beide Punkte stehen im Entscheidungslog der [Designentscheidungen](Designentscheidungen.md).

### Terminologie

Recherche via fhir-terminology MCP (Stand 2026-09-23): LOINC 2.83 kennt `82813-7` **Adverse Childhood Experiences [ACE]** als Panel — es bezeichnet das **10-Fragen-Vollinstrument** und wird dem Zuschnitt bewusst **nicht** zugewiesen ([ADR-003](Designentscheidungen.md)). SNOMED CT 2026-05-01: keine Treffer.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

