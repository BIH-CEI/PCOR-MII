Der **WAI** (*Work Ability Index*) erfasst die selbsteingeschätzte **Arbeitsfähigkeit**. PCOR-MII bildet die **3-Item-Kurzfassung** ab, die üblicherweise als *Work Ability Score* bezeichnet wird: Item 1 der WAI-Vollversion (Skala 0–10) ergänzt um zwei Items zu den körperlichen und psychischen Anforderungen der Arbeitstätigkeit (je fünfstufig). Quelle der Item-Auswahl ist das **Item Level Dictionary** (Entität PSS, Kategorie GHS, Items `WAI01`, `WAI02a`, `WAI02b`).

> **Metadata-only (Stand in Prüfung, 2026-11-05):** Diese Instanz bildet **ausschließlich Struktur und Metadaten** ab — **nicht** den Originalwortlaut. Grundlage war der Vermerk der DIZ-Implementierungsliste PCOR-MII „wahrscheinlich nicht für die Veröffentlichung geeignet". Dieser Vermerk nennt keine Quelle und steht im Widerspruch zu den Nutzungsbedingungen des Urhebers: Das FIOH erklärt den WAI für **öffentlich verfügbar und ohne Genehmigung nutzbar** (siehe [Lizenz](#lizenz)). Offen ist nur noch die Weitergabe des **deutschen Wortlauts** (WAI-Netzwerk Deutschland / BAuA). Bis zur Klärung bleibt der Bogen metadata-only; siehe [Rechtelage und offene Punkte](Rechtelage.html#wai).

### Verwendung in PCOR-MII

Der WAI ist **kein Instrument des MII-PRO-Moduls** — er wird in PCOR-MII eigenständig gepflegt (SDC-Basis). Konkret bedeutet metadata-only:

- **Item-Texte** sind neutrale, selbst formulierte Kurzbeschreibungen dessen, was erfragt wird — kein Originalwortlaut der WAI-Fragen.
- **Antwortkonzepte** für `WAI02a`/`WAI02b` sind neutral benannt („Stufe 1" … „Stufe 5") statt mit den Original-Bezeichnungen der Antwortstufen.
- **Struktur, `linkId`s, Wertebereiche** (0–10 bzw. 1–5) und technische Metadaten sind lizenzfrei und daher vollständig angelegt.

Für die Erhebung steht der wortgleiche Bogen auf dem zugangsbeschränkten Form Server bereit (ADR-012); diese Ressource dient der strukturell korrekten Ablage der Antworten.

### Artefakte

- **Fragebogen:** [Questionnaire-WAI](Questionnaire-WAI.html) — Struktur, `linkId`s und Wertebereiche.
- **Antwortskala:** [ValueSet wai-skala-5-vs](ValueSet-wai-skala-5-vs.html) · [CodeSystem wai-skala-5](CodeSystem-wai-skala-5.html) — fünf neutral benannte Konzepte mit `itemWeight` 1–5 (5 = bester Wert).

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
- **Urheber ist das FIOH** (Työterveyslaitos, Helsinki). Dessen [Nutzungsbedingungen](https://www.ttl.fi/en/themes/well-being-at-work-and-work-ability/tyokyky/using-the-work-ability-index-wai) (abgerufen 2026-11-05) lauten: *„The method is publicly available. You do not need permission from the Finnish Institute of Occupational Health to use the Work Ability Index."* Nicht-kommerzielle und kommerzielle Nutzung für Forschung und eigenen Betrieb sind erlaubt; eigene Fragebögen und Übersetzungen auf Basis des WAI ebenfalls. Bedingungen: Originalautor:innen nennen und die Ausgabe von 1998 zitieren; der WAI oder eine darauf beruhende Methode darf **nicht als solche verkauft** werden; eine abgewandelte Fassung muss sich im Namen vom WAI unterscheiden. Das FIOH vertreibt den Bogen nicht selbst.
- **Deutsche Fassung:** Der Wortlaut im Dictionary entspricht dem deutschen WAI-Fragebogen des **WAI-Netzwerks Deutschland** (INQA, Bergische Universität Wuppertal, mit der BAuA). Nach dem verbreiteten Fragebogen-PDF ist die Einzelanwendung frei, die Anwendung in Unternehmen bedarf der Zustimmung des Netzwerks. Ob der deutsche Wortlaut in einer Spezifikation weitergegeben werden darf, ist **nicht belegt** — Anfrage an das WAI-Netzwerk offen.
- Die DIZ-Implementierungsliste („wahrscheinlich nicht für die Veröffentlichung geeignet", ohne Quelle) ist nach dem Stand oben zu korrigieren.
- Der Hinweis ist maschinenlesbar im `copyright`-Element der Ressource hinterlegt.

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.html); alle Artefakte unter [Artefakte](artifacts.html).
