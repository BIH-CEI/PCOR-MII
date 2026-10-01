# AN (Anorexia Nervosa) - PCOR-MII Implementation Guide v0.3.0

## AN (Anorexia Nervosa)

**AN** (**Anorexia Nervosa**) ist die essstörungsbezogene Entität in PCOR-MII — neben [PSS](PSS.md) (Persistent Somatic Syndrome) und Nierentransplantation (NTx). Erhoben wird eine Batterie aus generischen Instrumenten (identisch über alle drei Entitäten) und AN-spezifischen Instrumenten zu Essstörungspathologie, Emotionsregulation, Veränderungsmotivation, sozialem Umfeld und Kindheitsbelastungen.

Die entitätsübergreifende Sicht steht unter [Instrumente](Instrumente.md); diese Seite beschreibt die AN-Batterie.

**Wer nur wissen will, wo welcher Fragebogen liegt**, ist auf der [AN — Instrumentenliste](AN-Instrumentenliste.md) schneller: eine Tabelle, jede Zeile ein Instrument, jeder Link direkt auf die Ressource — im PCOR-MII-IG oder im MII-PRO-IG.

### Generischer Kern (alle Entitäten)

Diese Instrumente sind in PSS, AN und NTx identisch zu erheben:

* [Demographie](Demographie.md) (DEM) und [MHI](MHI.md) — Soziodemographie und medizinische Vorgeschichte; das MHI enthält im Szenario AN Zusatzitems zu **Gewichtsverlauf** und **AN-Subtyp** (siehe [MHI](MHI.md))
* [PROMIS](PROMIS.md) — Global Health (2 Items), Short Forms 4a, Pain Intensity NRS
* [WHODAS 2.0 (12-Item)](WHODAS-12.md) — Funktionsfähigkeit und Beeinträchtigung
* [PHQ-15](PHQ-15.md), PHQ-9 (siehe [PHQ-Übersicht](PHQ.md)), [GAD-7](GAD-7.md) / GAD-2 / PHQ-4
* EURONET-SOMA 1 und 2 — je ein Item zu somatischen Symptomen
* [WAI](WAI.md) — Arbeitsfähigkeit (metadata-only)

In AN wird — anders als in PSS — der **vollständige PHQ-9** erhoben (PSS: PHQ-8 + separates PHQ-SI); das Suizidalitäts-Item `phq-phq2i` ist als **PHQ-SI** zusätzlich eigenständig ausgewiesen. Außerdem gemeinsam mit PSS: [OPD-SFK](OPD-SFK.md).

### AN-spezifische Instrumente

Alle fünf sind **projektspezifische Zuschnitte** publizierter Instrumente (beim ACE die ersten fünf Fragen), und **keiner** von ihnen trägt einen Score. Der ERQ-6 galt bis Release 0.3.0 als Ausnahme — er war fälschlich als die offizielle Kurzform ERQ-S ausgewiesen; die Korrektur steht auf der [ERQ-6-Seite](ERQ-6.md).

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **ERQ-6** | DCH | 6 | Emotionsregulation — sechs ERQ-Items, kein Score | [Seite](ERQ-6.md) |
| **EDE-Q6** | DCH | 6 | Essstörungspathologie inkl. Regelblutung | [Seite](EDE-Q6.md) |
| **ANSOCQ-2** | TCH | 2 | Veränderungsmotivation (Stages of Change) | [Seite](ANSOCQ-2.md) |
| **SSUK-2** | EFA | 2 | Soziale Unterstützung / belastende Interaktion | [Seite](SSUK-2.md) |
| **ACE** | EFA | 5 | Belastende Kindheitserfahrungen | [Seite](ACE.md) |

Dazu die standortspezifischen Item-Gruppen der UKHD (`UKHD-BI` Körperbild, `UKHD-EDP` Essstörungspathologie, `UKHD-CTT` und `UKHD-LE` Umfeld/Lebensereignisse sowie weitere Verlaufsitems), die kein publiziertes Instrument abbilden und direkt aus dem Item Level Dictionary stammen.

### Die Zuschnitte folgen einer dokumentierten Auswahlregel

Vier der fünf AN-Instrumente sind Zuschnitte, und die DIZ-Implementierungsliste nennt in ihrer Spalte **„verkürzte Version?“** die Regel dahinter — bei ERQ-6, EDE-Q6, ANSOCQ-2 und SSUK-2 gleichlautend:

> „nicht vollständig verwendet, sondern nur das Item mit der höchsten Trennschärfe pro Skala“

Das ist wichtiger, als es aussieht: Die Zuschnitte sind damit **nicht willkürlich gekürzt**, sondern nach einem angegebenen psychometrischen Kriterium gebildet — je Skala oder Faktor das trennschärfste Item. Für drei der vier ist diese Regel in PCOR-MII gegen die publizierte Struktur des Originalinstruments nachgeprüft: beim [EDE-Q6](EDE-Q6.md) gegen die vier EDE-Q-Subskalen, beim [ANSOCQ-2](ANSOCQ-2.md) gegen die zwei Faktoren der deutschen Validierung, beim [SSUK-2](SSUK-2.md) gegen die zwei gegenläufigen SSUK-Dimensionen. Sie trifft jeweils zu.

**Eine Ausnahme, die man kennen muss:** Beim [ERQ-6](ERQ-6.md) passt die Formulierung **„das Item … pro Skala“** im Singular nicht — dort sind es **drei** Items je Subskala des Vollinstruments. Bis Release 0.3.0 stand hier, der Bogen sei die publizierte Kurzform ERQ-S und trage deshalb als einziger ein validiertes Scoring. **Das war falsch** — der ERQ-S besteht aus anderen ERQ-Items; der Score ist zurückgezogen.

Der [ACE](ACE.md) trägt in derselben Spalte eine andere Angabe — **„die ersten 5 Fragen“** —, ist also keine Trennschärfe-Auswahl, sondern der vordere Block des Instruments (Misshandlung und Vernachlässigung ohne die Haushalts-Dysfunktions-Fragen).

Für die Auswertung folgt daraus durchgehend dasselbe: **Ein trennschärfstes Item je Skala bildet die Skala nicht ab.** Deshalb trägt **keiner** dieser Zuschnitte einen Score — Einzelheiten auf den jeweiligen Instrumentenseiten und in [ADR-003](Designentscheidungen.md).

### Ein zusammenhängender Beispieldatensatz

Für alle fünf AN-Instrumente liegen ausgefüllte Beispielantworten vor — und zwar **nicht** als fünf unverbundene Testdaten, sondern als ein Erhebungstermin (18.06.2026) bei **derselben Beispiel-Patientin**, die schon [DEM](Demographie.md) und [MHI](MHI.md) nutzen (`pcor-mii-exa-patient`): Anorexia nervosa restriktiver Typ seit 2020, in Behandlung, Gewicht teilrestituiert. Der Datensatz lässt sich damit als Ganzes lesen.

| | |
| :--- | :--- |
| [ERQ6Response](QuestionnaireResponse-ERQ6Response.md) | niedrige Neubewertung bei hoher Unterdrückung — das für AN beschriebene Muster |
| [EDEQ6Response](QuestionnaireResponse-EDEQ6Response.md) | residuelle Pathologie; belegt die über`enableWhen`abhängige Frage`edeq30` |
| [ANSOCQ2Response](QuestionnaireResponse-ANSOCQ2Response.md) | mittlere Veränderungsmotivation;`language`=`de-CH`, weil die validierte Schweizer Fassung vorgelegt wurde |
| [SSUK2Response](QuestionnaireResponse-SSUK2Response.md) | gegenläufige Items: hoch bei der unterstützenden, niedrig bei der belastenden Interaktion |
| [ACEResponse](QuestionnaireResponse-ACEResponse.md) | zwei bejahte Items in der emotionalen Dimension |

**Score-Observations gibt es im AN-Block nicht.** Bis Release 0.3.0 lagen hier zwei zum ERQ bei; sie sind am 01.10.2026 zurückgezogen worden, weil der Bogen nicht der ERQ-S ist und damit keine validierte Scoring-Vorschrift hat (siehe [ERQ-6](ERQ-6.md)).

Die Antwortwerte sind bewusst gewählt, nicht zufällig: Ein durchgängig mittleres Profil hätte beim ERQ-6 beide Itemgruppen auf denselben Wert gelegt und beim SSUK-2 die Gegenläufigkeit der Items verdeckt. Die Begründung steht je Beispiel im Kopfkommentar der FSH-Datei.

Alle sieben Instanzen sind mit dem FHIR-Validator geprüft: **0 errors** (Details unter [Validierung](Validierung.md)).

### Status: vorläufig in PCOR-MII gepflegt

Die fünf AN-Instrumente sind als **PCOR-MII-eigene Ressourcen** modelliert — ausdrücklich vorläufig, für Erprobung und Testbetrieb. Sobald sie offiziell abgestimmt sind, können Teile ins **MII-PRO-Modul** aufgenommen werden; PCOR-MII würde sie dann referenzieren statt selbst pflegen. Hintergrund und Modellierungsregeln (keine Vollinstrument-Codes an Zuschnitte, kein Score ohne validierte Grundlage, Dictionary-Treue) in [ADR-003](Designentscheidungen.md).

### Rechtelage

Alle fünf AN-Instrumente sind laut DIZ-Implementierungsliste **frei publizierbar** — vollständige Questionnaires mit Itemtexten und Antwortoptionen sind möglich. Die Rechte an den Instrumenten und Item-Formulierungen verbleiben bei den jeweiligen Autor:innen (Details im `copyright`-Element der Questionnaires); die Originalpublikationen sind noch nicht gegen das Dictionary verifiziert (siehe [offene Punkte](Designentscheidungen.md)).

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

