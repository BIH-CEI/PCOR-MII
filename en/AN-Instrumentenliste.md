# AN — Instrumentenliste mit Links - PCOR-MII Implementation Guide v0.3.0

## AN — Instrumentenliste mit Links

**Translated page. Original language: German.**

Diese Seite ist die **Arbeitsliste für den Use Case AN** (Anorexia Nervosa): jedes zu erhebende Instrument in einer Zeile, mit dem Link dorthin, wo die FHIR-Ressource tatsächlich liegt — im **PCOR-MII-IG** oder im **MII-PRO-IG**.

Sie beantwortet eine einzige Frage: **Wo finde ich den Fragebogen, den ich erheben soll?** Die fachliche Begründung der Batterie steht auf [AN](AN.md), der Erhebungsplan mit Phasen, Prioritäten und Frequenzen auf [Essstörungen — Erhebungsplan](Essstoerungen.md), die entitätsübergreifende Sicht auf [Instrumente](Instrumente.md).

### Wie die Links zu lesen sind

Die Spalte **Ressource** führt immer zur Ressource selbst, nicht zur Beschreibung:

* **PCOR-MII** — der `Questionnaire` ist in diesem IG definiert; der Link geht auf die Artefaktseite mit Snapshot, `linkId`s und Downloads.
* **MII PRO** — der `Questionnaire` kommt über die Paket-Abhängigkeit `de.medizininformatikinitiative.kerndatensatz.pros` **2026.7.0** mit. PCOR-MII baut ihn **nicht** nach; der Link geht in den veröffentlichten MII-PRO-IG auf Simplifier.
* **offen** — für diese Zeile des Erhebungsplans existiert noch **kein** Artefakt, weder hier noch upstream.

Die Spalte **Doku** verweist auf die PCOR-MII-Seite des Instruments, wo es eine gibt — dort stehen Rechtelage, Scoring und AN-spezifische Besonderheiten.

### Generischer Kern — in PSS, AN und NTx identisch

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Demographie (DEM) | DEM | 23¹ | **PCOR-MII**→[`DEM`](Questionnaire-DEM.md) | [Demographie](Demographie.md) |
| Medical History (MHI) —**mit AN-Zusatzitems** | MHI | 48¹ | **PCOR-MII**→[`MHI`](Questionnaire-MHI.md) | [MHI](MHI.md) |
| PROMIS Scale v1.2 — Global Health | GHS | 2 | **offen**— kein Artefakt, Subset noch nicht festgelegt | [PROMIS](PROMIS.md) |
| PROMIS-16 Profile v2.1 | GHS | 16 | **MII PRO**→[PROMIS-16](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-16.page.md?version=current) | [PROMIS-16](PROMIS-16.md) |
| PROMIS Short Forms 4a (8 Domänen) | GHS | 4 je Domäne | **teilweise MII PRO**— s. Hinweis unten | [Cognitive Function](PROMIS-Cognitive-Function.md) |
| PROMIS NRS — Pain Intensity 1a | GHS | 3 | **offen**— als Einzelinstrument nicht modelliert; das Item steckt im PROMIS-29 (`promis-global07`) | [PROMIS-29](PROMIS-29.md) |
| WHODAS 2.0, 12-Item | GHS | 14 | **MII PRO**→[WHODAS 2.0 (12-Item)](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/WHODAS-2.0?version=current) | [WHODAS 2.0](WHODAS-12.md) |
| GAD-7 (auch GAD-2 / PHQ-4 als Teilmengen) | GHS | 7 | **MII PRO**(ab 2026.7.0) →[GAD-7](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/GAD-7?version=current) | [GAD-7](GAD-7.md) |
| PHQ-15 | GHS | 13 | **MII PRO**→[PHQ-15](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PHQ-15?version=current) | [PHQ-15](PHQ-15.md) |
| PHQ-9 — in AN**vollständig**(PSS: PHQ-8) | GHS | 9 | **MII PRO**→[PHQ-9](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PHQ-9?version=current) | [PHQ-9](PHQ-9.md) |
| EURONET-SOMA 1 + 2 | GHS | 2 | **MII PRO**(ab 2026.6.0) →[EURONET-SOMA](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/EURONET-SOMA?version=current) | [EURONET-SOMA](EURONET-SOMA.md) |
| WAI / Work Ability Score | GHS | 3 | **PCOR-MII**→[`WAI`](Questionnaire-WAI.md)—**metadata-only**, keine Itemtexte | [WAI](WAI.md) |
| PHQ-SI — Suizidalität, stationär | MHA | 1 | **MII PRO**— Item`phq-phq2i`aus dem[PHQ-9](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PHQ-9?version=current), kein eigener Bogen | [PHQ-9](PHQ-9.md) |
| OPD-SFK — Persönlichkeitsfunktion, Prio**C** | MHA | 12 | **PCOR-MII**→[`OPDSFK`](Questionnaire-OPDSFK.md) | [OPD-SFK](OPD-SFK.md) |

¹ Bei DEM und MHI sind das die **Blatt-Items des PCOR-MII-Questionnaire**, nicht eine Dictionary-Instrumentenzahl: Beide bündeln Einzelitems mehrerer Quellen (OECD, GI-PS, CPCOR) zu je einem Bogen, und im MHI kommen die beiden PCOR-MII-eigenen Hilfsitems zur Einheitenauswahl hinzu. Bei allen übrigen Zeilen ist die Zahl die Item-Anzahl laut Item Level Dictionary.

**Zum Eintrag „PROMIS Short Forms 4a":** Der Erhebungsplan führt für acht Domänen je eine 4-Item-Kurzform. Upstream sind davon **zwei** als eigener `Questionnaire` vorhanden — [Cognitive Function SF 4a](PROMIS-Cognitive-Function.md) und PROMIS Depression SF 4a ([PRO-IG](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-Depression.page.md?version=current)). Die übrigen sechs Domänen sind **nur über den [PROMIS-29](PROMIS-29.md)** abgedeckt, der je Domäne vier Items enthält — inhaltlich nicht durchweg dieselben Items wie die jeweilige SF 4a. Wer streng nach Plan die SF-4a-Variante braucht, hat für sechs Domänen kein passendes Artefakt.

### AN-spezifische Instrumente

Alle fünf sind **vorläufig in PCOR-MII** gepflegt — bis zu einer möglichen Aufnahme ins MII-PRO-Modul (siehe [ADR-003](Designentscheidungen.md)). Vier davon sind Zuschnitte nach dem Kriterium „trennschärfstes Item je Skala“, beim ACE sind es die ersten fünf Fragen. **Keiner der fünf trägt einen Score.** Der ERQ-6 galt bis Release 0.3.0 als Ausnahme, war aber fälschlich als Kurzform ERQ-S ausgewiesen — siehe [ERQ-6](ERQ-6.md).

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| ERQ-6 — Emotionsregulation | DCH | 6 | **PCOR-MII**→[`ERQ6`](Questionnaire-ERQ6.md) | [ERQ-6](ERQ-6.md) | [ERQ6Response](QuestionnaireResponse-ERQ6Response.md) |
| EDE-Q6 — Essstörungspathologie | DCH | 6 | **PCOR-MII**→[`EDEQ6`](Questionnaire-EDEQ6.md) | [EDE-Q6](EDE-Q6.md) | [EDEQ6Response](QuestionnaireResponse-EDEQ6Response.md) |
| ANSOCQ-2 — Veränderungsmotivation | TCH | 2 | **PCOR-MII**→[`ANSOCQ2`](Questionnaire-ANSOCQ2.md) | [ANSOCQ-2](ANSOCQ-2.md) | [ANSOCQ2Response](QuestionnaireResponse-ANSOCQ2Response.md) |
| SSUK-2 — Soziale Unterstützung | EFA | 2 | **PCOR-MII**→[`SSUK2`](Questionnaire-SSUK2.md) | [SSUK-2](SSUK-2.md) | [SSUK2Response](QuestionnaireResponse-SSUK2Response.md) |
| ACE — Belastende Kindheitserfahrungen | EFA | 5 | **PCOR-MII**→[`ACE`](Questionnaire-ACE.md) | [ACE](ACE.md) | [ACEResponse](QuestionnaireResponse-ACEResponse.md) |

Dazu der Sammelbogen der standortspezifischen Items, der **kein** publiziertes Instrument abbildet und deshalb in einer eigenen Zeile steht:

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| UKHD-AN — sieben Standort-Itemgruppen | DCH, TCH, EFA | 20 | **PCOR-MII**→[`UKHDAN`](Questionnaire-UKHDAN.md)—**Freigabe UKHD offen** | [UKHD-AN](UKHD-AN.md) | [UKHDANResponse](QuestionnaireResponse-UKHDANResponse.md) |

Die sechs Beispielantworten gehören zu **einem** Erhebungstermin derselben Beispiel-Patientin (`pcor-mii-exa-patient`) und sind als zusammenhängender Datensatz lesbar — Einzelheiten auf [AN](AN.md).

### Scores

| | | |
| :--- | :--- | :--- |
| PROPr — PROMIS-Preference Utility | **PCOR-MII**→[`PcorObsDefProprUtility`](ObservationDefinition-PcorObsDefProprUtility.md)— vorläufig, Zuständigkeit upstream | [PROMIS-16](PROMIS-16.md#propr) |
| PROMIS-Domänen-T-Scores (PROMIS-29) | **MII PRO**— acht`ObservationDefinition`s im Paket | [PROMIS-29](PROMIS-29.md) |
| PROMIS-Domänen-T-Scores (PROMIS-16) | **offen**— upstream Roadmap 2027; die acht Codes des PROMIS-29 gelten**nicht**für PROMIS-16 | [PROMIS-16](PROMIS-16.md) |
| Physical / Mental Health Summary (PHS, PCS, MHS, MCS) | **offen**— im Plan Prio A, kein Artefakt | [Erhebungsplan](Essstoerungen.md) |
| EQ-5D-5L Index (nur Outcome) | **MII PRO**→[EQ-5D-5L](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/EQ-5D-5L?version=current)— upstream vorhanden, in PCOR-MII bisher nicht referenziert | — |

Das EQ-5D-5L ist der einzige Eintrag, bei dem der Erhebungsplan „offen" sagt, **obwohl upstream ein vollständiges Artefakt vorliegt** (inklusive Index-Score und CQL). Hier fehlt nur die Referenzierung in PCOR-MII, nicht das Artefakt.

### Standortspezifische Item-Gruppen (UKHD)

Diese Gruppen bilden **kein publiziertes Instrument** ab und stammen direkt aus dem Item Level Dictionary. Sämtlich Priorität **A** im Erhebungsplan.

Sieben von ihnen sind inzwischen modelliert: sechs als **ein** Sammelbogen — [UKHD-AN](UKHD-AN.md), 14 Items, ein `group`-Item je Gruppe ([ADR-011](Designentscheidungen.md)) — und `UKHD-CTT` im [ACE](ACE.md), weil das Dictionary ihren `enableWhen`-Bezug auf `ace1` bis `ace3` ausdrücklich nennt und FHIR diesen Bezug nur innerhalb eines Questionnaire ausdrücken kann. **Eine dokumentierte Freigabe gibt es für sie trotzdem nicht:** Die DIZ-Implementierungsliste führt nur publizierte Instrumente und kennt diese Gruppen nicht. Rechteinhaber ist das Universitätsklinikum Heidelberg, und die Bestätigung ist einzuholen — die Modellierung ist eine bewusste Projektentscheidung zur Erprobung.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `UKHD-PT` | Vorbehandlung | 2 | **PCOR-MII**→[UKHD-AN](UKHD-AN.md) | Freigabe UKHD offen |
| `UKHD-ANB` | AN-spezifische Anamnese | 2 | **PCOR-MII**→[UKHD-AN](UKHD-AN.md) | Freigabe UKHD offen |
| `UKHD-CT` | Aktuelle Behandlung | 1 | **PCOR-MII**→[UKHD-AN](UKHD-AN.md) | Freigabe UKHD offen |
| `UKHD-CTT` | Childhood Trauma, Zeitangabe | 6 | **PCOR-MII**→[ACE](ACE.md)(Komposit) | Freigabe UKHD offen |
| `UKHD-LE` | Lebensereignisse | 4 | **PCOR-MII**→[UKHD-AN](UKHD-AN.md) | Freigabe UKHD offen |
| `UKHD-ND` | Neue Diagnosen | 3 | **PCOR-MII**→[UKHD-AN](UKHD-AN.md) | Freigabe UKHD offen |
| `UKHD_D` | Diagnosen bei Aufnahme | 2 | **PCOR-MII**→[UKHD-AN](UKHD-AN.md) | Freigabe UKHD offen |
| `UKHD-BI` | Körperbild | 3 | **offen**— bewusst nicht modelliert | Freigabe UKHD offen |
| `UKHD-EDP` | Essstörungspathologie | 11 | **offen**— vor einer Modellierung zu klären | **Rechtelage unbewertet**— je ein Item der elf EDI-2-Subskalen; EDI-2 ist Hogrefe-verlegt und in der DIZ-Liste**nicht geführt** |

**Zwei Gruppen sind ausdrücklich ausgenommen, und aus verschiedenen Gründen.** `UKHD-BI` ist eine **visuelle Bildskala**: Die Erhebung läuft noch nicht damit, und das Dictionary führt als Antwortoption nur einen Verweis auf einen Bilder-Reiter — ohne die Bildvorlage ist das Item nicht modellierbar, weil die Anker einer visuellen Skala hier der Messgegenstand sind und nicht Beschriftung. Der `UKHD-EDP`-Block ist der andere Fall: Das Präfix legt eine Eigenentwicklung nahe, aber die elf Items sind ein EDI-2-Zuschnitt — also **kein** Standort-Original, und damit auch keine Sache, die Heidelberg allein freigeben kann. Begründung auf [Essstörungen — Erhebungsplan](Essstoerungen.md).

### Nicht in AN erhoben

Zur Abgrenzung, weil diese Instrumente in PCOR-MII vorhanden sind und in der Gesamtübersicht daneben stehen: **PSS-only** sind PHQ-D Panik-Block, [PC-PTSD](PC-PTSD.md), [SCOFF](SCOFF.md), [ISR-Z](ISR-Z.md), [SSD-12](SSD-12.md), [Whiteley-7](WI-7.md), [EXPECT](EXPECT.md), [IPQ-S](IPQ-S.md) und [GSLTPAQ](GSLTPAQ.md). **NTx-only** sind BAASIS, MTSOSD-R59 und ABQ (alle drei metadata-only vorgesehen, bisher nicht modelliert).

### Woher diese Seite ihre Angaben hat

Instrumentenzuordnung und Itemzahlen: Blatt `Item Level Dictionary AN` und `Domain Overview` des Item Level Dictionary (`MASTER_3EntitiesOverview.xlsx`, nicht Teil dieses Repositories), wie auf [Instrumente](Instrumente.md) und [Essstörungen — Erhebungsplan](Essstoerungen.md) ausgewertet. Rechteangaben: DIZ-Implementierungsliste PCOR-MII. Die Zuordnung PCOR-MII/MII PRO ist gegen das Dependency-Paket `de.medizininformatikinitiative.kerndatensatz.pros` 2026.7.0 geprüft; die Links in den MII-PRO-IG sind einzeln gegen den veröffentlichten Guide verifiziert (Stand 2026-09-30).

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

