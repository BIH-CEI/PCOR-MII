**ACE** erfasst **belastende Kindheitserfahrungen** (vor dem 18. Lebensjahr) über die ersten fünf Fragen des *Adverse-Childhood-Experiences*-Fragebogens, je mit ja/nein zu beantworten.

### Verwendung in PCOR-MII

Der PCOR-Zuschnitt umfasst die **ersten 5 der 10 ACE-Fragen** (Felitti et al., *Am J Prev Med* 1998; deutsche Fassung Wingenfeld et al., *PPmP* 2010): emotionale Misshandlung, körperliche Misshandlung, sexueller Missbrauch, emotionale Vernachlässigung, körperliche Vernachlässigung. Die Haushalts-Dysfunktions-Fragen 6–10 sind nicht enthalten. Die Items stammen aus dem Item Level Dictionary (Entität AN, Kategorie EFA) und werden **vorläufig in PCOR-MII** gepflegt — eine spätere Aufnahme ins MII-PRO-Modul ist vorgesehen, sobald das Instrument offiziell abgestimmt ist (siehe [ADR-003](Designentscheidungen.html)). Erhoben nur im Szenario [AN](AN.html).

### Artefakte

- **Fragebogen:** [Questionnaire-ACE](Questionnaire-ACE.html)
- **Beispielantwort:** [ACEResponse](QuestionnaireResponse-ACEResponse.html) — ausgefülltes Beispiel; zwei bejahte Items in der emotionalen Dimension

Alle fünf Items nutzen das projektweite [DemJaNeinVS](ValueSet-dem-ja-nein.html). Das Dictionary kodiert 1 = ja / 0 = nein; die Kodierung ist im Mapping auf `DemAntwortCS` dokumentarisch, nicht strukturell.

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/ACE`

### Items

| `linkId` | Thema |
|---|---|
| `ace1` | Emotionale Misshandlung (beschimpft/erniedrigt; Angst vor Verletzung) |
| `ace2` | Körperliche Misshandlung (gestoßen/geschlagen; Verletzungsspuren) |
| `ace3` | Sexueller Missbrauch |
| `ace4` | Emotionale Vernachlässigung (nicht geliebt; kein Zusammenhalt) |
| `ace5` | Körperliche Vernachlässigung (Essen/Kleidung/Schutz; Eltern intoxikiert) |

Die Fragetexte sind wortgleich aus dem Item Level Dictionary übernommen; lediglich Layout-Artefakte der Excel-Zellen (Zeilenumbrüche, Mehrfach-Leerzeichen, inkonsistente führende Item-Nummern) wurden normalisiert. Ein gemeinsamer Instruktionstext steht als `display`-Item voran. **Hinweis zur Erhebung:** Die Items betreffen hochsensible Inhalte (Missbrauch, Vernachlässigung) — die Governance der Auswertung (analog PHQ-SI) ist fachlich zu klären.

### Wortlaut — vollständig verifiziert

Alle fünf Items stimmen **wortgleich** mit der deutschen Fassung **ACE-D** überein (Schäfer, Wingenfeld & Spitzer). Geprüft wurde Teilsatz für Teilsatz, einschließlich der „oder"-Struktur innerhalb der Items. Eine einzige Abweichung ist dabei aufgefallen und korrigiert: die Anführungszeichen um „high" in `ace5`, die zuvor in gerader statt typografischer Form standen.

**Nummerierung bestätigt:** `ace1`–`ace5` sind die Items 1–5 des ACE-D; der Bogen hat insgesamt zehn Items mit dichotomem Ja/Nein-Format. Die Angabe der DIZ-Implementierungsliste — *„die ersten 5 Fragen"* — trifft damit wörtlich zu. Die Items 6–10 (Trennung oder Verlust eines Elternteils, Gewalt gegen die Mutter, Suchterkrankung, psychische Erkrankung und Haft im Haushalt) bilden den Haushalts-Dysfunktions-Block und sind hier bewusst nicht enthalten.

**Zur Quellengüte — und zur Rechtelage, die davon abweicht:** Das ursprünglich geprüfte Exemplar stammte von einer Drittseite, nicht von den Herausgeber:innen. Für `ace2` liegt inzwischen eine **peer-reviewte Bestätigung** vor: Das *Deutsche Ärzteblatt* druckt die Frage zur körperlichen Misshandlung wortgleich ab (Witt, Sachser, Plener, Brähler & Fegert, Dtsch Arztebl Int 2019;116:635–42, [doi:10.3238/arztebl.2019.0635](https://doi.org/10.3238/arztebl.2019.0635), eKASTEN 1).

Dieselbe Quelle wirft aber die Rechtefrage neu auf. Sie druckt **nur zwei von zehn Items** ab — ausdrücklich als „Beispielfragen" — und setzt darüber:

> „Copyright und Zitierweise: Ingo Schäfer, Katja Wingenfeld und Carsten Spitzer (2009) ACE-D; Deutsche Version des „Adverse Childhood Experiences Questionnaire" (ACE). Universität Hamburg. **Der Gesamtfragebogen kann über Prof. Dr. Ingo Schäfer bezogen werden.**"

Ein peer-reviewtes Journal beschränkt sich also bewusst auf zwei Items und verweist für den Rest auf den Rechteinhaber. Das ist das Muster **„auf Anfrage beziehbar"**, nicht „frei publizierbar" — wie beim [OPD-SFK](OPD-SFK.html), wo die Rücksprache bereits erfolgreich geführt wurde.

Die Angabe „frei verfügbar" der DIZ-Implementierungsliste trifft damit plausibel auf das **englische Original** zu (Felitti et al. 1998, Kaiser Permanente / CDC — ein Public-Health-Instrument in breiter freier Verwendung), nicht auf die deutsche ACE-D-Fassung. Der Wortlaut bleibt hier aufgenommen, aber als **begründete Annahme, nicht als Freigabe**; die Rücksprache mit Prof. Dr. Ingo Schäfer (Universität Hamburg) ist einzuholen. Festgehalten als offener Punkt in den [Designentscheidungen](Designentscheidungen.html).

### Kein Score

Der ACE-Score des Vollinstruments ist die **Anzahl der Ja-Antworten über alle 10 Fragen** (0–10). Eine Summe über den 5-Fragen-Zuschnitt (0–5) ist **kein validierter ACE-Score** — daher bewusst kein Score-Item; ausgewertet wird auf Item-Ebene, bis eine Regel fachlich abgestimmt ist.

### Terminologie

Recherche via fhir-terminology MCP (Stand 2026-09-23): LOINC 2.83 kennt `82813-7` *Adverse Childhood Experiences [ACE]* als Panel — es bezeichnet das **10-Fragen-Vollinstrument** und wird dem Zuschnitt bewusst **nicht** zugewiesen ([ADR-003](Designentscheidungen.html)). SNOMED CT 2026-05-01: keine Treffer.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
