Der **WAI** (*Work Ability Index*) erfasst die selbsteingeschätzte **Arbeitsfähigkeit**. PCOR-MII bildet die **3-Item-Kurzfassung** ab, die üblicherweise als *Work Ability Score* bezeichnet wird: Item 1 der WAI-Vollversion (Skala 0–10) ergänzt um zwei Items zu den körperlichen und psychischen Anforderungen der Arbeitstätigkeit (je fünfstufig). Quelle der Item-Auswahl ist das **Item Level Dictionary** (Kategorie `PSS`, Items `WAI01`, `WAI02a`, `WAI02b`).

> **Metadata-only:** Diese Instanz bildet **ausschließlich Struktur und Metadaten** ab — **nicht** den Originalwortlaut. Die DIZ-Implementierungsliste PCOR-MII vermerkt für den WAI „wahrscheinlich nicht für die Veröffentlichung"; die Publikationsrechte am Originalwortlaut sind ungeklärt.

### Verwendung in PCOR-MII

Der WAI ist **kein Instrument des MII-PRO-Moduls** — er wird in PCOR-MII eigenständig gepflegt (SDC-Basis). Konkret bedeutet metadata-only:

- **Item-Texte** sind neutrale, selbst formulierte Kurzbeschreibungen dessen, was erfragt wird — kein Originalwortlaut der WAI-Fragen.
- **Antwortkonzepte** für `WAI02a`/`WAI02b` sind neutral benannt („Stufe 1" … „Stufe 5") statt mit den Original-Bezeichnungen der Antwortstufen.
- **Struktur, `linkId`s, Wertebereiche** (0–10 bzw. 1–5) und technische Metadaten sind lizenzfrei und daher vollständig angelegt.

Für die Erhebung ist der wortgleiche Originalbogen über die berechtigte Bezugsquelle zu beziehen; diese Ressource dient der strukturell korrekten Ablage der Antworten.

### Artefakte

- **Fragebogen:** [Questionnaire-WAI](Questionnaire-WAI.html) — Struktur, `linkId`s und Wertebereiche.
- **Antwortskala:** [ValueSet wai-skala-5-vs](ValueSet-wai-skala-5-vs.html) · [CodeSystem wai-skala-5](CodeSystem-wai-skala-5.html) — fünf neutral benannte Konzepte mit `ordinalValue` 1–5 (5 = bester Wert).

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/WAI`

### Eigenschaften

- **Items**: 3, gruppiert unter `wai` — `WAI01` (`integer`, 0–10, mit `minValue`/`maxValue`/`sliderStepValue`), `WAI02a` und `WAI02b` (`choice` auf `wai-skala-5-vs`)
- **Instrumenten-Code**: SNOMED CT `446174004` *Assessment using work ability index* auf `Questionnaire.code`
- **Scoring**: **nicht implementiert** — für die Kurzfassung wird kein Summenscore gebildet

### Terminologie-Recherche

Stand 2026-09-01 (fhir-terminology MCP):

- **LOINC**: keine Item- oder Panel-Codes für WAI / Work Ability Score gefunden.
- **SNOMED CT**: `446174004` *Assessment using work ability index (procedure)* — verwendet. `446059004` *Work ability index score (observable entity)* wurde **nicht** vergeben, da unklar ist, ob das Konzept den 7-Item-WAI-Summenscore oder die 3-Item-Kurzfassung meint (offener Punkt).

### Lizenz

- Originalinstrument: Tuomi K, Ilmarinen J, Jahkola A, Katajarinne L, Tulkki A. *Work Ability Index*. 2. Aufl. Helsinki: Finnish Institute of Occupational Health (FIOH); 1998.
- Rechteinhaber ist das **FIOH**. Die vollständige, wortgleiche Originalversion darf ausschließlich über die berechtigte Bezugsquelle (FIOH bzw. deren lizenzierte Vertriebspartner) bezogen und genutzt werden.
- Der vollständige Hinweis ist maschinenlesbar im `copyright`-Element der Ressource hinterlegt.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
