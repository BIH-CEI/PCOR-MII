# PROMIS-29 Profile v2.1 - PCOR-MII Implementation Guide v0.1.0

## PROMIS-29 Profile v2.1

**Translated page. Original language: German.**

PROMIS®-29 Profile v2.1 ist das umfassende Multi-Domain-Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität. 29 Items decken sieben Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Ability to Participate in Social Roles and Activities, Pain Interference) plus ein Schmerzintensitäts-Single-Item ab.

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Damit gilt automatisch die offizielle deutsche PHO-Übersetzung mit allen Korrekturen aus v2026.4.x (Wording-Migration, Antwortskalen-Fix, Pain-Interference Verb-Tempus etc.).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29`

### Quellen

* Definition im MII PRO-Modul: [PROMIS-29 (Simplifier)](https://simplifier.net/guide/mii-pro-v2026-de/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-29)
* Lizenz & Copyright (4-Schichten-Modell PHO / CPCOR / LOINC / MII): [PROMIS-Lizenzierung](https://simplifier.net/guide/mii-pro-v2026-de/MIIIGModulPRO/PRO-Bibliothek/PROMIS)
* Offizielle deutsche Quelle: PHO PDF "PROMIS-29 Profile v2.1 German, 06 April 2020"

### Eigenschaften

* **Items**: 29 (28 × 5-Punkt-Likert + 1 × 11-Punkt-NRS Schmerzintensität)
* **Primärsprache**: Englisch mit deutscher `translation`-Extension
* **Scoring**: Raw Score + T-Score je Domäne (FHIR Variables Pattern, ohne CQL)
* **Capabilities**: displayable, collectable, calculatable, extractable

### Hinweise

* Eine separate DE-primary-Darstellungsvariante (`mii-qst-pro-promis-29-de`) existiert für Renderer, die die `translation`-Extension nicht auswerten; inhaltlich ist sie mit der Hauptversion identisch und wird nicht eigenständig gepflegt.
* Score-Berechnung erfolgt im Questionnaire selbst über FHIR-Variables-Variable, eine separate CQL Library ist nicht erforderlich.

**Auto-generiert aus `mii-qst-pro-promis-29` v2026.4.1 (de.medizininformatikinitiative.kerndatensatz.pros).**

Wo Translation-Extensions auf den `text`-Feldern fehlen, wird die Sprache der Quelle über eine Heuristik bestimmt — leere EN-Spalten weisen auf upstream noch ausstehende EN/DE-Architektur-Migration hin.

### KÖRPERLICHE FUNKTION

**Sektion `PROMIS-29.PhysicalFunction`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-pfa11` | 61597-1 | Are you able to do chores such as vacuuming or yard work [PROMIS] | Können Sie Hausarbeiten erledigen, z.B. Staubsaugen oder Gartenarbeit? | **1** · Kann ich gar nicht / Unable to do (`LA13912-3`)**2** · Mit großen Schwierigkeiten / With much difficulty (`LA13919-8`)**3** · Mit einigen Schwierigkeiten / With some difficulty (`LA13920-6`)**4** · Mit geringen Schwierigkeiten / With a little difficulty (`LA13918-0`)**5** · Ohne jede Schwierigkeiten / Without any difficulty (`LA13921-4`) |
| `promis-pfa21` | 61607-8 | Are you able to go up and down stairs at a normal pace [PROMIS] | Können Sie mit normaler Geschwindigkeit Treppen hoch- und runtergehen? | **1** · Kann ich gar nicht / Unable to do (`LA13912-3`)**2** · Mit großen Schwierigkeiten / With much difficulty (`LA13919-8`)**3** · Mit einigen Schwierigkeiten / With some difficulty (`LA13920-6`)**4** · Mit geringen Schwierigkeiten / With a little difficulty (`LA13918-0`)**5** · Ohne jede Schwierigkeiten / Without any difficulty (`LA13921-4`) |
| `promis-pfa23` | 61609-4 | Are you able to go for a walk of at least 15 minutes [PROMIS] | Können Sie mindestens 15 Minuten lang spazieren gehen? | **1** · Kann ich gar nicht / Unable to do (`LA13912-3`)**2** · Mit großen Schwierigkeiten / With much difficulty (`LA13919-8`)**3** · Mit einigen Schwierigkeiten / With some difficulty (`LA13920-6`)**4** · Mit geringen Schwierigkeiten / With a little difficulty (`LA13918-0`)**5** · Ohne jede Schwierigkeiten / Without any difficulty (`LA13921-4`) |
| `promis-pfa53` | 61635-9 | Are you able to run errands and shop [PROMIS] | Können Sie Besorgungen machen und einkaufen gehen? | **1** · Kann ich gar nicht / Unable to do (`LA13912-3`)**2** · Mit großen Schwierigkeiten / With much difficulty (`LA13919-8`)**3** · Mit einigen Schwierigkeiten / With some difficulty (`LA13920-6`)**4** · Mit geringen Schwierigkeiten / With a little difficulty (`LA13918-0`)**5** · Ohne jede Schwierigkeiten / Without any difficulty (`LA13921-4`) |

### ANGST

**Sektion `PROMIS-29.Anxiety`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-edanx01` | 61923-9 |   | Ich fürchtete mich. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-edanx40` | 61941-1 |   | Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-edanx41` | 61942-9 |   | Meine Sorgen haben mich überwältigt. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-edanx53` | 61949-4 |   | Ich fühlte mich unruhig. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |

### DEPRESSION

**Sektion `PROMIS-29.Depression`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-eddep04` | 61953-6 |   | Ich fühlte mich wertlos. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-eddep06` | 61955-1 |   | Ich fühlte mich hilflos. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-eddep29` | 61967-6 |   | Ich fühlte mich niedergeschlagen. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-eddep41` | 61973-4 |   | Ich fühlte mich hoffnungslos. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |

### ERSCHÖPFUNG

**Sektion `PROMIS-29.Fatigue`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-hi7` | 61878-5 |   | Ich bin erschöpft. | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-an3` | 61882-7 | Es fällt mir schwer, etwas anzufangen, weil ich müde bin. |   | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-fatexp41` | 61863-7 |   | Wie ausgelaugt fühlten Sie sich im Allgemeinen? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-fatexp40` | 61864-5 |   | Wie erschöpft waren Sie im Allgemeinen? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |

### SCHLAFSTÖRUNGEN

**Sektion `PROMIS-29.Sleep`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-sleep109` | 61987-4 |   | Meine Schlafqualität war … | **5** · Sehr schlecht / Very poor (`LA9615-1`)**4** · Schlecht / Poor (`LA8969-3`)**3** · Mäßig / Fair (`LA8968-5`)**2** · Gut / Good (`LA8967-7`)**1** · Sehr gut / Very Good (`LA13913-1`) |
| `promis-sleep116` | 61986-6 |   | Mein Schlaf war erfrischend. | **5** · Überhaupt nicht / Not at all (`LA6568-5`)**4** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**2** · Ziemlich / Quite a bit (`LA13902-4`)**1** · Sehr / Very much (`LA13914-9`) |
| `promis-sleep20` | 61998-1 |   | Ich hatte Schlafprobleme. | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-sleep44` | 61999-9 |   | Ich hatte Schwierigkeiten einzuschlafen. | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |

### SOZIALE TEILHABE

**Sektion `PROMIS-29.Social`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-srpper23-caps` | 76709-5 |   | Es fällt mir schwer, meine gewohnte Arbeit zu erledigen (einschließlich der Arbeit zu Hause). | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-srpper11-caps` | 75417-6 |   | Es fällt mir schwer, allen meinen regelmäßigen Freizeitaktivitäten mit anderen nachzugehen. | **5** · Nie / Never (`LA6270-8`)**4** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**2** · Oft / Often (`LA10044-8`)**1** · Immer / Always (`LA9933-8`) |
| `promis-srpper18-caps` | 76708-7 |   | Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit meiner Familie machen möchte. | **5** · Nie / Never (`LA6270-8`)**4** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**2** · Oft / Often (`LA10044-8`)**1** · Immer / Always (`LA9933-8`) |
| `promis-srpper46-caps` | 76712-9 |   | Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte. | **5** · Nie / Never (`LA6270-8`)**4** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**2** · Oft / Often (`LA10044-8`)**1** · Immer / Always (`LA9933-8`) |

### SCHMERZBEDINGTE BEEINTRÄCHTIGUNG

**Sektion `PROMIS-29.PainInterference`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-painin9` | 61758-9 |   | Wie sehr beeinträchtigten Schmerzen Ihre Alltagsaktivitäten? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-painin22` | 61769-6 |   | Wie sehr beeinträchtigten Schmerzen Ihre häuslichen Tätigkeiten? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-painin31` | 61773-8 |   | Wie sehr beeinträchtigten Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-painin34` | 61775-3 |   | Wie sehr beeinträchtigten Schmerzen Sie bei Ihrer Hausarbeit? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |

### SCHMERZINTENSITÄT

**Sektion `PROMIS-29.PainIntensity`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-global07` | 61583-1 |   | Wie würden Sie Ihre Schmerzen im Allgemeinen einschätzen? |   |

### BEREICHS-BEWERTUNGEN

**Sektion `PROMIS-29.Scores`**

