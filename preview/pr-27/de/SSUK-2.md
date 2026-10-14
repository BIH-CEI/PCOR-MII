# SSUK-2 (Soziale Unterstützung) - PCOR-MII Implementation Guide v0.3.0

## SSUK-2 (Soziale Unterstützung)

**SSUK-2** erfasst **soziale Unterstützung und belastende Interaktion** über zwei Items aus den **Skalen zur Sozialen Unterstützung bei Krankheit** (SSUK) auf einer 5-stufigen Häufigkeitsskala (0 = nie … 4 = immer).

### Verwendung in PCOR-MII

Der SSUK-2 ist ein **projektspezifischer Zuschnitt**: je ein Item aus den beiden SSUK-Skalen — positive Unterstützung (`ssuk14`) und belastende Interaktion (`ssuk10`). Die SSUK ist die deutsche Adaptation der **Illness-specific Social Support Scale** (Ramm & Hasenbring, **Z Med Psychol** 2003); das englische Original stammt von Revenson et al., **Soc Sci Med** 1991 — dessen Titel **„Social support as a double-edged sword"** benennt die Konstruktion treffend: positive und problematische Unterstützung als zwei gegenläufige Dimensionen. Die Items stammen aus dem Item Level Dictionary (Entität AN, Kategorie EFA) und werden **vorläufig in PCOR-MII** gepflegt — eine spätere Aufnahme ins MII-PRO-Modul ist vorgesehen, sobald das Instrument offiziell abgestimmt ist (siehe [ADR-003](Designentscheidungen.md)). Erhoben nur im Szenario [AN](AN.md).

Die Auswahl der beiden Items folgt der in der DIZ-Implementierungsliste angegebenen Regel — **„nicht vollständig verwendet, sondern nur das Item mit der höchsten Trennschärfe pro Skala“** —, und sie geht hier auf: Die SSUK hat zwei gegenläufige Dimensionen, und `ssuk14` und `ssuk10` bedienen genau je eine. Der Zuschnitt ist damit nach einem psychometrischen Kriterium gebildet, nicht willkürlich gekürzt. Ein trennschärfstes Item bildet die Skala aber nicht ab — daher kein Score (siehe unten).

### Sprache: Deutsch bleibt primär — geprüft

Da die SSUK eine Adaptation eines englischen Originals ist, lag die Frage nahe, den Bogen nach [ADR-005](Designentscheidungen.md) auf **Englisch als Primärsprache** umzustellen. Voraussetzung dafür wäre, dass die beiden verwendeten Items wörtlichen ISSS-Items entsprechen. Der Abgleich gegen die acht Items der Kurzversion **ISSS-8** (verifiziert in der Thai-Validierung, [PMC13426926](https://pmc.ncbi.nlm.nih.gov/articles/PMC13426926/), Tabelle 3) ergibt:

| | | |
| :--- | :--- | :--- |
| `ssuk14`„Sie aufmuntert oder tröstet" | 2.**Gives you comfort** | nah, aber nicht deckungsgleich — zwei Verben gegen eines |
| `ssuk10`„die Auswirkung Ihrer Erkrankung herunterspielt" | — | **keine Entsprechung**; das nächstliegende Item 5**Worries too much about your illness**geht inhaltlich in die Gegenrichtung |

**Ergebnis: keine Umstellung.** Die Items lassen sich nicht als wörtliche ISSS-Items belegen, also bleibt Deutsch primär. Zwei Einschränkungen der Prüfung stützen dieses Ergebnis eher, als es zu schwächen: Die ISSS-8 ist nur eine Achter-Auswahl — die Item-Nummern 10 und 14 deuten auf eine längere Vorlage, `ssuk10` könnte dort durchaus stehen —, und die englischen Wortlaute der Thai-Arbeit laufen über die deutsche SSUK-8-Kurzversion, sind also womöglich Rückübersetzungen statt Revensons Originaltext.

Bestätigt hat der Abgleich dagegen die **Abstammung** des Instruments: Der Fragestamm ist deckungsgleich (**„Amongst the people you feel close to, is there someone who…"**) und die Antwortskala identisch (0 = nie … 4 = immer).

Am Rande: Eine **validierte Kurzform existiert** — die 8-Item-SSUK (Mehnert et al.) bzw. die daraus abgeleitete ISSS-8. Der hier verwendete 2-Item-Zuschnitt ist nicht diese Kurzform; falls eine validierte Kurzfassung gewünscht wird, wäre die SSUK-8 der naheliegende Kandidat.

### Artefakte

* **Fragebogen:** [Questionnaire-SSUK2](Questionnaire-SSUK2.md)
* **Beispielantwort:** [SSUK2Response](QuestionnaireResponse-SSUK2Response.md) — ausgefülltes Beispiel; hoch bei der unterstützenden, niedrig bei der belastenden Interaktion
* **CodeSystem:** [ssuk-antwort](CodeSystem-ssuk-antwort.md) — 0 = nie … 4 = immer, `ordinalValue` 0–4
* **ValueSet:** [ssuk-antwort-vs](ValueSet-ssuk-antwort-vs.md)

### Der PCOR-MII-Code eines Items ist die Dictionary-Variable

Jedes Item trägt in `item.code` seine Variable aus dem Item Level Dictionary, gegen das CodeSystem [pcor-item-dictionary](CodeSystem-pcor-item-dictionary.md). **Das ist der PCOR-MII-Code des Items** — ein zweites lokales CodeSystem für dieselben Items gibt es bewusst nicht.

Der Code bezeichnet das **Erhebungsfeld** und stimmt hier mit der Itemnummer überein (`ssuk14`, `ssuk10`); beim [ERQ-6](ERQ-6.md) ist das ausdrücklich **nicht** so. Zweck ist das maschinelle Verteilen eines flach erhobenen Datensatzes auf die Instrumenten-Questionnaires ([ADR-011](Designentscheidungen.md)).

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/SSUK2`

### Items

Beide Items teilen den Fragestamm **„Unter den Menschen, die Ihnen nahe stehen, gibt es jemanden, der/die.."** — im Questionnaire als `group`-Item modelliert, damit die Item-Texte wortgleich aus dem Dictionary übernommen bleiben:

| | | | |
| :--- | :--- | :--- | :--- |
| `ssuk14` | `ssuk14` | Sie aufmuntert oder tröstet | positive Unterstützung |
| `ssuk10` | `ssuk10` | die Auswirkung Ihrer Erkrankung herunterspielt. | belastende Interaktion |

`linkId` und `item.code` stimmen hier überein — beim [ERQ-6](ERQ-6.md) ausdrücklich **nicht**. Die beiden Items messen **Gegenläufiges** und dürfen nicht summiert werden.

Die `linkId`s **sind** die Itemnummern der SSUK-Langfassung — verifiziert gegen die Primärquelle:

> **Müller D, Mehnert A, Koch U.** „Skalen zur Sozialen Unterstützung bei Krankheit (SSUK) — Testtheoretische Überprüfung und Validierung an einer repräsentativen Stichprobe von Brustkrebspatientinnen." **Zeitschrift für Medizinische Psychologie** 2004. [doi:10.3233/zmp-2004-13_4_03](https://doi.org/10.3233/zmp-2004-13_4_03)

Tabelle 2 dieser Arbeit („Faktorielle Struktur der SSUK") listet die Items mit ihren Nummern. Bestätigt sind beide:

| | | |
| :--- | :--- | :--- |
| `ssuk14` | Item 14 — „Sie aufmuntert oder tröstet" | Positive Unterstützung |
| `ssuk10` | Item 10 — „die Auswirkung Ihrer Erkrankung herunterspielt" | Belastende Interaktion |

Die Langfassung umfasst **26 Items**: Positive Unterstützung (17 Items, Cronbachs α = .91) und Belastende Interaktion (9 Items, α = .76). Die beiden hier verwendeten Items stammen je aus einer der beiden Skalen — das bestätigt den Zuschnitt „ein Item je Skala" der DIZ-Liste.

### Kein Score

Die beiden Items messen **gegenläufige Konstrukte** (Unterstützung vs. Belastung) — ein Summenwert wäre ohne Umpolung inhaltlich falsch, und für eine Umpolung des Zuschnitts fehlt die validierte Grundlage (Begründungsmuster wie bei [EXPECT](EXPECT.md)). Ausgewertet wird auf Item-Ebene.

### Terminologie

Recherche via fhir-terminology MCP (LOINC 2.83, SNOMED CT 2026-05-01): **keine Codes** für die SSUK. Kein `Questionnaire.code`, keine `item.code`.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

