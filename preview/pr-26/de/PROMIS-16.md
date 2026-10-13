# PROMIS-16 Profile v2.1 (PROPr) - PCOR-MII Implementation Guide v0.3.0

## PROMIS-16 Profile v2.1 (PROPr)

PROMIS®-16 Profile v2.1 (PROPr) ist die ultrakurze Variante der PROMIS-Profile mit 16 Items über 8 Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Ability to Participate in Social Roles and Activities, Pain Interference, **Cognitive Function**). Im Vergleich zu PROMIS-29 ergänzt PROMIS-16 die Cognitive-Function-Domäne und reduziert die Item-Last pro Domäne auf zwei Items.

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Die deutschen Wordings stammen direkt aus dem offiziellen PHO PDF "PROMIS-16 Profile v2.1 (PROPr), German, 20 September 2024" (MATCH=15, DIFF=0).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16`

### Quellen

* IG-Doku-Seite: [PROMIS-16 im MII PRO IG (Simplifier)](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-16.page.md?version=current)
* Raw-Resource: [PROMIS-16 Questionnaire (Simplifier Package)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.4.1/files/3538121)
* Lizenz & Copyright (4-Schichten-Modell PHO / CPCOR / LOINC / MII): [PROMIS-Lizenzierung](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.4.1)
* Offizielle deutsche Quelle: PHO PDF "PROMIS-16 Profile v2.1 (PROPr), German, 20 September 2024"

### Eigenschaften

* **Items**: 16 (2 pro Domäne über 8 Domänen)
* **Primärsprache**: Englisch mit deutscher `translation`-Extension
* **Capabilities**: displayable, collectable (Scoring im MII PRO-Modul bewusst auf v2026.5.0 verschoben)

### Domänen im Vergleich zu PROMIS-29

Auf **Domänenebene** unterscheiden sich die beiden Profile in genau zwei Punkten — PROMIS-16 hat Cognitive Function, PROMIS-29 hat die Schmerzintensität:

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Physical Function | 4 Items | 2 Items | [`91721-1`](https://loinc.org/91721-1) | [`71959-1`](https://loinc.org/71959-1) | Bank |
| Anxiety | 4 | 2 | [`77862-1`](https://loinc.org/77862-1) | [`71967-4`](https://loinc.org/71967-4) | **PROMIS-29** |
| Depression | 4 | 2 | [`77861-3`](https://loinc.org/77861-3) | [`71965-8`](https://loinc.org/71965-8) | Bank |
| Fatigue | 4 | 2 | [`77864-7`](https://loinc.org/77864-7) | [`71963-3`](https://loinc.org/71963-3) | Bank |
| Sleep Disturbance | 4 | 2 | [`77860-5`](https://loinc.org/77860-5) | [`71955-9`](https://loinc.org/71955-9) | Bank |
| Ability to Participate in Social Roles | 4 | 2 | [`77854-8`](https://loinc.org/77854-8) | ([`71957-5`](https://loinc.org/71957-5)— andere Domäne¹) | Bank |
| Pain Interference | 4 | 2 | [`77865-4`](https://loinc.org/77865-4) | [`71961-7`](https://loinc.org/71961-7) | Bank |
| **Cognitive Function — Abilities** | — | **2** | [`81538-1`](https://loinc.org/81538-1) | — | Bank (via SF 4a) |
| **Pain Intensity**(NRS 0–10) | **1**(`global07`) | — | [`75261-8`](https://loinc.org/75261-8)(Item-Code) | — | Item-Code |

¹ `71957-5` heißt „PROMIS-29 Satisfaction with participation in social roles score T-score" und benennt damit die Domäne des **PROMIS-29 v1.0**. Ab v2.0 heißt sie **Ability to Participate in Social Roles and Activities** — eine andere Domäne mit eigener Kalibrierung, nicht bloß umbenannt. Für ein v2.1-Profil ist der Bank-Code `77854-8` daher der richtige.

**Auf Score-Ebene sind die Profile dagegen durchweg verschieden — auch in den sieben gemeinsamen Domänen.** Die Domäne ist dieselbe, die Kurzform nicht: PROMIS-29 scort über vier Items per Summenscore und Rohwert-Lookup, PROMIS-16 über zwei Items per Antwortmuster-Lookup (5 × 5 = 25 Werte, Supplement S4 von Edelen et al.). Ein `promis-29-…-tscore`-Code steht deshalb **nicht** für einen PROMIS-16-T-Score derselben Domäne, und die acht upstream geführten `promis-29-*`-Score-Codes sind für PROMIS-16 nicht wiederverwendbar. Vergleichbar sind die Werte nur insofern, als beide auf die **gemeinsame T-Score-Metrik der jeweiligen Item-Bank** kalibriert sind (Mean 50, SD 10) — ein Score-Crosswalk zwischen den Profilen ist upstream ausdrücklich als späteres Arbeitspaket benannt.

**Bei LOINC ist die Lage asymmetrisch**, und das ist der praktisch wichtigste Befund dieses Vergleichs (geprüft 2026-09-30 gegen LOINC 2.83). LOINC führt zwei Ebenen nebeneinander:

* **Bank-Ebene** — z. B. `PROMIS emotional distress - anxiety - version 1.0 Tscore`. Bezeichnet Item-Bank und T-Score-Metrik, **nicht** die Kurzform, und gilt damit für jedes Profil, das auf diese Bank kalibriert ist.
* **Instrumenten-Ebene** — z. B. `PROMIS-29 Anxiety score T-score`. Für PROMIS-29 existiert dieser Satz **vollständig** über alle sieben Domänen (`71955-9`–`71967-4`).

**Für PROMIS-16 gibt es die instrumentenspezifische Ebene nicht** — die Suche nach „PROMIS-16" liefert in LOINC 2.83 **null Treffer**, weder Panel- noch Score- noch Item-Codes (upstream sind entsprechend auch die fünf PROMIS-16-spezifischen Item-Codes im FSH noch als TODO markiert). Ein PROMIS-16-T-Score kann also nur den **Bank-Code** tragen — denselben, den ein PROMIS-29-T-Score derselben Domäne trägt. Die Unterscheidung der Kurzform muss damit zwingend über den **MII-Katalogcode** und `method.text` laufen; LOINC allein kann sie nicht leisten. Wer PROMIS-16- und PROMIS-29-Werte nur über `Observation.code.coding[loinc]` filtert, mischt sie unbemerkt.

**Upstream ist die Wahl zwischen beiden Ebenen inkonsistent.** Die PROMIS-29-ObservationDefinitions nutzen bei sechs von sieben Domänen den Bank-Code, bei **Anxiety** dagegen den instrumentenspezifischen `71967-4` — obwohl mit `77862-1` ein Bank-Code vorliegt. Bei Social Roles ist der Bank-Code sachlich zwingend (siehe Fußnote), bei Anxiety ist die Abweichung nicht begründet. Für PCOR-MII ist das derzeit folgenlos, weil hier keine PROMIS-Score-Observations modelliert werden; für einen späteren Cross-Walk ist es eine Fußangel und gehört auf die Upstream-Liste.

**Zur Sleep-Domäne, weil die Itemauswahl irritiert:** PROMIS-16 nimmt `sleep90` („I had trouble sleeping") aus der Sleep-Disturbance-Bank und `sleep25` („I had problems during the day because of poor sleep") aus der Bank **Sleep-Related Impairment** — LOINC führt für beide Bänke getrennte T-Scores ([`77860-5`](https://loinc.org/77860-5) vs. [`77859-7`](https://loinc.org/77859-7)), und der Sektionstitel des Questionnaire lautet entsprechend zweideutig „Sleep-related Impairment / Sleep Disturbance". Die Entwicklungspublikation ist hier aber eindeutig: Die Domäne heißt **Sleep Disturbance**, und die Itemparameter des SRI-Items wurden ausdrücklich **auf die Sleep-Disturbance-Items kalibriert** („parameters for the sleep-related impairment item were generated based on calibration to the sleep disturbance items", Edelen et al. 2024). Ein PROMIS-16-Sleep-T-Score gehört damit unter **Sleep Disturbance** (`77860-5`), nicht unter SRI. Zu beachten ist zudem, dass die T-Score-Zentrierung dieser einen Domäne — anders als bei den übrigen sieben — nicht auf einer reinen Allgemeinbevölkerungsstichprobe beruht, sondern auf einer kombinierten Allgemeinbevölkerungs- und klinischen Stichprobe.

### Scoring

PROMIS-16 erlaubt **drei** Auswertungsformen:

| | | | |
| :--- | :--- | :--- | :--- |
| **8 Domänen-T-Scores** | je Domäne, Rohwert 2–10 aus zwei Items | T ≈ 27–80 je nach Domäne | Umrechnungstabelle Rohwert → T-Score, oder genauer per Antwortmuster |
| **Physical/Mental Health Summary Scores** | zwei Summenmaße über die Domänen | Z-Scores | nach Hays-Methodik |
| **PROPr Utility Score** | **7**der 8 Domänen | **−0,022 bis 1,0** | multiplikatives Multi-Attribute-Utility-Modell |

**Bemerkenswert am PROPr: Angst geht nicht ein.** Der PROMIS-Preference-Score (Dewitt et al. 2018, [doi:10.1177/0272989X18776637](https://doi.org/10.1177/0272989X18776637)) beruht auf sieben Domänen — Cognitive Function-Abilities, Depression, Fatigue, Pain Interference, Physical Function, Sleep Disturbance und Ability to Participate in Social Roles and Activities. Die Anxiety-Domäne des PROMIS-16 bleibt außen vor. Der Wertebereich beginnt knapp unterhalb von null, weil einzelne Zustände als „schlechter als tot" bewertet wurden (0 = tot, 1 = bestmögliche Gesundheit).

Der PROPr rechnet dabei **nicht auf Item-, sondern auf Domänenebene**: Aus dem T-Score wird θ = (T − 50) / 10, und darauf setzt das Utility-Modell auf. Genau deshalb ist er aus dem PROMIS-16 berechenbar — die zwei Cognitive-Function-Items, die dem PROMIS-29 fehlen, liefern die letzte noch benötigte Domäne. Eine Agreement-Studie (Hanmer et al. 2025, [doi:10.1007/s11136-024-03827-5](https://doi.org/10.1007/s11136-024-03827-5)) findet Korrelationen von 0,93–0,95 zwischen PROPr aus PROMIS-16 und aus PROMIS-29+2, mit leichter Überschätzung am oberen Ende.

**Die Scoring-Grundlagen sind öffentlich**, das Scoring ist also nicht an eine proprietäre Engine gebunden:

* Umrechnungstabellen Rohwert → T-Score je 2a-Kurzform im [PROMIS Adult Profile Scoring Manual](https://healthmeasures.net/implement/scoring/manual-scoring-resources/promis-scoring-manuals/) (HealthMeasures, Stand 15.07.2025)
* Genauere Antwortmuster-Tabelle als Supplement S4 der Entwicklungspublikation (Edelen et al., **Qual Life Res** 2025;34(1):3–15, [doi:10.1007/s11136-023-03597-6](https://doi.org/10.1007/s11136-023-03597-6), Open Access)
* Referenzimplementierung des PROPr in R, SAS, Stata und Python: [github.com/janelhanmer/PROPr](https://github.com/janelhanmer/PROPr)

Zwei Fallstricke für eine spätere Implementierung: Bei **fehlenden Antworten** ist die Summenscore-Tabelle laut Manual ausdrücklich unzulässig. Und die **Umpolung** folgt nicht der Formulierungsrichtung — **Social Roles** ist trotz negativer Itemformulierung umzupolen, **Cognitive Function** trotz positiver Formulierung nicht; maßgeblich sind die offiziellen Antwort-Codewerte.

### Artefakt: PROPr als ObservationDefinition

Für den PROPr ist in PCOR-MII eine Score-Definition angelegt: [**PcorObsDefProprUtility**](ObservationDefinition-PcorObsDefProprUtility.md). Sie konformiert gegen das `mii-pr-pro-score-blueprint` des MII-PRO-Moduls und hält Wertebereich (−0,022 bis 1,0), Einheit, Nachkommastellen und die Scoring-Richtung fest — höhere Werte bedeuten bessere Gesundheit, anders als bei den meisten Belastungs-Scores.

Sie **definiert** den Score, sie **berechnet** ihn nicht: Das multiplikative Utility-Modell liegt als Referenzimplementierung in R, SAS, Stata und Python vor ([github.com/janelhanmer/PROPr](https://github.com/janelhanmer/PROPr)). Das folgt der MDR-Abgrenzung aus [ADR-004](Designentscheidungen.md).

Da PROPr weder in LOINC noch in SNOMED CT noch im MII-Score-Katalog einen Code hat (geprüft 2026-09-29), trägt die Definition den Code `promis-propr-utility` aus dem lokalen [`pcor-score-catalogue`](CodeSystem-pcor-score-catalogue.md). Das ist profilkonform: Das Blueprint bindet den MII-Katalog nicht per ValueSet, sondern als Slice über `coding.system`, und das Slicing ist **offen** — Codings anderer Systeme sind ausdrücklich vorgesehen (siehe [ADR-004](Designentscheidungen.md)). Migrierbar bleibt es ebenfalls: Ein künftiger MII-Code wird als **zusätzliches** `code.coding` ergänzt, nicht als Ersatz.

**Die Zuständigkeit liegt gleichwohl upstream.** PROPr ist PROMIS-spezifisch, und die PROMIS-Artefakte pflegt das MII-PRO-Modul. Dort wären nachzuziehen: der Code `promis-propr-utility` im Score-Katalog, eine `mii-obsdef-pro-score-promis-propr-utility` nach dem Muster des EQ-5D-5L-Index und ein Verweis vom PROMIS-16-Questionnaire auf den Score. Der lokale Code trägt bereits denselben Namen, damit die Ergänzung ein reines Hinzufügen bleibt. Was hier steht, ist eine arbeitsfähige Vorwegnahme für die Erprobung.

**Stand 2026-09-29: keiner der beiden Scores ist verfügbar.** Die frühere Ankündigung, beide Varianten würden im MII-PRO-Modul v2026.5.0 als CQL Library `mii-lib-promis-16` implementiert, hat sich nicht erfüllt. Auch in der aktuellen Abhängigkeit 2026.7.0 existiert upstream **ausschließlich der Questionnaire** — keine `ObservationDefinition`, keine CQL Library, keine Score-Codes im `mii-cs-pro-score-catalogue` (zum Vergleich: PROMIS-29 hat dort acht T-Score-Codes). Der Questionnaire setzt `calculatable` ausdrücklich auf `false` mit der Begründung, der Pattern-basierte T-Score-Lookup (Supplement S4 der Entwicklungspublikation) werde an eine CQL Library delegiert — laut Beschreibung dort inzwischen **Roadmap 2027**.

Für PCOR-MII heißt das: PROMIS-16 ist als **Datenerfassungsinstrument** nutzbar, die Score-Berechnung muss extern erfolgen.

**Die acht Domänen-T-Scores werden in PCOR-MII bewusst nicht lokal angelegt** (Entscheidung 2026-09-30). Möglich wäre es — der PROPr oben zeigt den Weg über einen Code aus dem lokalen [`pcor-score-catalogue`](CodeSystem-pcor-score-catalogue.md), und das Blueprint-Slicing lässt das ausdrücklich zu. Der PROPr rechtfertigt diese Vorwegnahme aber durch etwas, das die Domänen-T-Scores nicht haben: Er ist **profilunabhängig** (er rechnet auf Domänen-θ, nicht auf Items) und damit ein stabiles Artefakt, egal welches PROMIS-Profil ihn speist. Die PROMIS-16-Domänen-T-Scores sind das Gegenteil — sie sind an die **2-Item-Kurzform** gebunden, und damit an genau die Antwortmuster-Tabelle, die upstream noch nicht implementiert ist. Acht lokale Codes vorwegzunehmen, deren Berechnungsvorschrift upstream erst 2027 festgelegt wird, würde Migrationsschulden erzeugen statt Arbeitsfähigkeit herstellen.

**Nachzuziehen upstream im MII-PRO-Modul** (vollständige Liste, damit sie als Ticket verwendbar ist):

1. Acht Codes`promis-16-<domäne>-tscore`im`mii-cs-pro-score-catalogue`— parallel zu den bestehenden`promis-29-*`-Codes und aus demselben Grund instrumentenbezogen benannt (verschiedene Kurzform ⇒ verschiedene Rohwert-/Muster-Tabelle).
1. Acht`ObservationDefinition`s gegen`mii-pr-pro-score-blueprint`, mit dem**bank-ebenen LOINC-T-Score**als`code.coding[loinc]`— für PROMIS-16 gibt es keine andere Wahl (siehe Tabelle oben) — und der Kurzform-Unterscheidung in`method.text`. Für Cognitive Function ist das`81538-1`, derselbe Code wie bei der SF 4a.
1. Für Sleep den Code**`77860-5` (Sleep Disturbance)**, nicht`77859-7`(SRI) — Begründung und Belegstelle oben.
1. **Anxiety bei PROMIS-29 auf den Bank-Code `77862-1` umstellen**(oder die Abweichung begründen): Die bestehende`mii-obsdef-pro-promis-29-anxiety-tscore`nutzt als einzige der sieben den instrumentenspezifischen`71967-4`. Solange das so bleibt, tragen PROMIS-29- und PROMIS-16-Anxiety-Scores LOINC-Codes verschiedener Ebenen, was einen Cross-Walk unnötig erschwert.
1. Optional die beiden**Summary Scores**(Physical/Mental Health, Hays-Methodik) und den**PROPr**(`promis-propr-utility`, vgl. Abschnitt oben).
1. Die fünf noch offenen LOINC-Item-Codes (`sleep25`,`sleep90`,`srpper31-caps`,`pc27r`,`pc-caps3r`), upstream im FSH als TODO markiert.
1. Die CQL Library`mii-lib-promis-16`für den Muster-Lookup, sowie`calculatable = true`am Questionnaire, sobald sie vorliegt.

### Hinweise

* **Kein Schmerzintensitäts-Item.** Anders als PROMIS-29 (28 Domänen-Items + Global07 auf 0–10) enthält PROMIS-16 keine numerische Schmerzintensität — die Schmerzdomäne ist allein über **Pain Interference** abgedeckt.
* **Item-Überlapp mit PROMIS-29: 11 der 16 Items** — gegen die Questionnaires im Dependency-Paket verifiziert (2026-09-30) und deckungsgleich mit Hanmer et al. 2025 für PROMIS-29+2. Gemeinsam: `pfa21`, `pfa23`, `edanx40`, `edanx41`, `eddep29`, `eddep41`, `hi7`, `an3`, `srpper46-caps`, `painin9`, `painin31`.
* **PROMIS-16 ist kein PROMIS-29-Subset** — die fünf spezifischen Items liegen in **drei** Domänen, nicht nur in Cognitive Function: `sleep25` und `sleep90` (die Sleep-Domäne hat mit PROMIS-29 **kein** Item gemeinsam), `srpper31-caps` (Social Roles) sowie `pc27r` und `pc-caps3r` (Cognitive Function). Im PROMIS-29+2 sind die zwei Cognitive-Function-Items dagegen enthalten — dort sind sie genau das „+2".
* **Aus PROMIS-29 + Cognitive Function SF 4a lässt sich kein PROMIS-16 rekonstruieren.** Die SF 4a nutzt vier andere Items (`pc2r`, `pc35r`, `pc36r`, `pc42r`), und die fünf PROMIS-16-spezifischen Items fehlen. Das betrifft auch die in [PROMIS-33](PROMIS-33.md) beschriebene Abdeckung: Sie ersetzt funktional das PROMIS-33, **nicht** das PROMIS-16.
* Bei kombinierter Erfassung von PROMIS-29 und PROMIS-16 in einer Studie sollten die 11 überlappenden Items nicht doppelt erhoben werden — eine spätere Item-basierte Score-Berechnung (geplant 2027 im MII PRO-Modul) wird hier mehr Flexibilität bringen.

### Beispiel-QuestionnaireResponse

[**`pcor-mii-exa-promis-16-response`**](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) — vollständige Antwort eines hypothetischen Patienten über alle 8 Domänen (inkl. Cognitive Function), konform zum [`MII PR PRO QuestionnaireResponse`-Profil](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.4.1) (`meta.profile`: `mii-pr-pro-questionnaire-response|2026.4.1`).

### Item-Tabelle

**Auto-generiert aus `mii-qst-pro-promis-16` v2026.7.0 (de.medizininformatikinitiative.kerndatensatz.pros).**

Wo Translation-Extensions auf den `text`-Feldern fehlen, wird die Sprache der Quelle über eine Heuristik bestimmt — leere EN-Spalten weisen auf upstream noch ausstehende EN/DE-Architektur-Migration hin.

### Körperliche Funktion

**Sektion `PROMIS-16.PhysicalFunction`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-pfa21` | 62826-3 | Are you able to go up and down stairs at a normal pace? | Können Sie mit normaler Geschwindigkeit Treppen hoch- und runtergehen? | **1** · Ohne jede Schwierigkeiten / Without any difficulty (`LA13921-4`)**2** · Mit geringen Schwierigkeiten / With a little difficulty (`LA13918-0`)**3** · Mit einigen Schwierigkeiten / With some difficulty (`LA13920-6`)**4** · Mit großen Schwierigkeiten / With much difficulty (`LA13919-8`)**5** · Kann ich gar nicht / Unable to do (`LA13912-3`) |
| `promis-pfa23` | 62827-1 | Are you able to go for a walk of at least 15 minutes? | Können Sie mindestens 15 Minuten lang spazieren gehen? | **1** · Ohne jede Schwierigkeiten / Without any difficulty (`LA13921-4`)**2** · Mit geringen Schwierigkeiten / With a little difficulty (`LA13918-0`)**3** · Mit einigen Schwierigkeiten / With some difficulty (`LA13920-6`)**4** · Mit großen Schwierigkeiten / With much difficulty (`LA13919-8`)**5** · Kann ich gar nicht / Unable to do (`LA13912-3`) |

### Emotionale Belastung — Angst

**Sektion `PROMIS-16.Anxiety`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-edanx40` | 61941-1 | I found it hard to focus on anything other than my anxiety. | Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-edanx41` | 61942-9 | My worries overwhelmed me. | Meine Sorgen haben mich überwältigt. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |

### Emotionale Belastung — Depressivität

**Sektion `PROMIS-16.Depression`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-eddep29` | 61967-6 | I felt depressed. | Ich fühlte mich niedergeschlagen. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-eddep41` | 61973-4 | I felt hopeless. | Ich fühlte mich hoffnungslos. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |

### Erschöpfung

**Sektion `PROMIS-16.Fatigue`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-hi7` | 61878-5 | I feel fatigued. | Ich bin erschöpft. | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-an3` | 61882-7 | I had trouble starting things because I was tired. | Es fällt mir schwer, etwas anzufangen, weil ich müde bin. | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |

### Schlafbezogene Beeinträchtigungen / Schlafbeeinträchtigung

**Sektion `PROMIS-16.Sleep`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-sleep25` |   | I had problems during the day because of poor sleep. | Ich hatte tagsüber Probleme, weil ich schlecht geschlafen habe. | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-sleep90` |   | I had trouble sleeping. | Es fiel mir schwer zu schlafen. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |

### Teilhabe an sozialen Rollen und Aktivitäten

**Sektion `PROMIS-16.SocialRoles`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-srpper31-caps` |   | I have trouble taking care of my regular personal responsibilities. | Es fällt mir schwer, mich um meine regelmäßigen persönlichen Verpflichtungen zu kümmern. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-srpper46-caps` | 76712-9 | I have trouble doing all of the activities with friends that I want to do. | Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |

### Beeinträchtigung durch Schmerzen

**Sektion `PROMIS-16.PainInterference`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-painin9` | 61758-9 | How much did pain interfere with your day-to-day activities? | Wie sehr beeinträchtigen Schmerzen Ihre Alltagsaktivitäten? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-painin31` | 61773-8 | How much did pain interfere with your ability to participate in social activities? | Wie sehr beeinträchtigen Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |

### Kognitive Funktionen — Fähigkeiten

**Sektion `PROMIS-16.Cognition`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-pc27r` |   | I have been able to remember to do things, like take medicine or buy something I needed. | Ich bin fähig gewesen, mich an Dinge zu erinnern, die ich tun musste, wie z.B. Medikamente einnehmen oder etwas kaufen, das ich benötigte. | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-pc-caps3r` |   | I have been able to think clearly without extra effort. | Ich bin fähig gewesen, klar zu denken, ohne mich extra anzustrengen. | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |

