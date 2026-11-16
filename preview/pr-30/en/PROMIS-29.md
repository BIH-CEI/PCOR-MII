# PROMIS-29 Profile v2.1 - PCOR-MII Implementation Guide v0.9.0

## PROMIS-29 Profile v2.1

**Translated page. Original language: German.**

PROMIS®-29 Profile v2.1 ist das umfassende Multi-Domain-Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität. 29 Items decken sieben Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Ability to Participate in Social Roles and Activities, Pain Interference) plus ein Schmerzintensitäts-Single-Item ab.

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Damit gilt automatisch die offizielle deutsche PHO-Übersetzung mit allen Korrekturen aus v2026.4.x (Wording-Migration, Antwortskalen-Fix, Pain-Interference Verb-Tempus etc.).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29`

### Quellen

* IG-Doku-Seite: [PROMIS-29 im MII PRO IG](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-29.html)
* Raw-Resource: [PROMIS-29 Questionnaire (MII PRO 2027.0.0-ballot.2)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/Questionnaire-mii-qst-pro-promis-29.html)
* Lizenz & Copyright (4-Schichten-Modell PHO / CPCOR / LOINC / MII): [PROMIS-Lizenzierung](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/promis.html)
* Offizielle deutsche Quelle: PHO PDF "PROMIS-29 Profile v2.1 German, 06 April 2020"

### Eigenschaften

* **Items**: 29 (28 × 5-Punkt-Likert + 1 × 11-Punkt-NRS Schmerzintensität)
* **Primärsprache**: Englisch mit deutscher `translation`-Extension
* **Scoring**: Raw Score + T-Score je Domäne (FHIR Variables Pattern, ohne CQL)
* **Capabilities**: displayable, collectable, calculatable, extractable

### Hinweise

* Die frühere DE-primary-Darstellungsvariante (`mii-qst-pro-promis-29-de`) und der 8-Item-Zuschnitt (`-minimal`) sind seit 2027.0.0-ballot.2 stillgelegt und bleiben nur als leere Hüllen auflösbar; deutsch-primäre Darstellung ist Sache des Renderers (`translation`-Extension bzw. `$localize`).
* Score-Berechnung erfolgt im Questionnaire selbst über FHIR-Variables-Variable, eine separate CQL Library ist nicht erforderlich.

### Beispiel-QuestionnaireResponse

Das MII PRO-Modul liefert ein vollständiges, professionell kuratiertes QR-Beispiel direkt mit:

* [**`mii-exa-pro-promis-29-response`**](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/QuestionnaireResponse-mii-exa-pro-promis-29-response.html) (Upstream, Simplifier) — vollständige Antwort über alle 7 Domänen + Schmerzintensität, konform zum `MII PR PRO QuestionnaireResponse`-Profil (validiert: 0 Errors).

Diese Referenz wird hier bewusst **nicht dupliziert** — Pflege erfolgt zentral im MII PRO-Modul.

### Item-Tabelle

**Auto-generiert aus `mii-qst-pro-promis-29` v2027.0.0-ballot.2 (de.medizininformatikinitiative.kerndatensatz.pros).**

Wo Translation-Extensions auf den `text`-Feldern fehlen, wird die Sprache der Quelle über eine Heuristik bestimmt — leere EN-Spalten weisen auf upstream noch ausstehende EN/DE-Architektur-Migration hin.

### Körperliche Funktion

**Sektion `PROMIS-29.PhysicalFunction`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-pfa11` | 61597-1 | Are you able to do chores such as vacuuming or yard work? | Können Sie Hausarbeiten erledigen, z.B. Staubsaugen oder Gartenarbeit? | **5** · Ohne jede Schwierigkeiten / Without any difficulty (`LA13921-4`)**4** · Mit geringen Schwierigkeiten / With a little difficulty (`LA13918-0`)**3** · Mit einigen Schwierigkeiten / With some difficulty (`LA13920-6`)**2** · Mit großen Schwierigkeiten / With much difficulty (`LA13919-8`)**1** · Kann ich gar nicht / Unable to do (`LA13912-3`) |
| `promis-pfa21` | 61607-8 | Are you able to go up and down stairs at a normal pace? | Können Sie mit normaler Geschwindigkeit Treppen hoch- und runtergehen? | **5** · Ohne jede Schwierigkeiten / Without any difficulty (`LA13921-4`)**4** · Mit geringen Schwierigkeiten / With a little difficulty (`LA13918-0`)**3** · Mit einigen Schwierigkeiten / With some difficulty (`LA13920-6`)**2** · Mit großen Schwierigkeiten / With much difficulty (`LA13919-8`)**1** · Kann ich gar nicht / Unable to do (`LA13912-3`) |
| `promis-pfa23` | 61609-4 | Are you able to go for a walk of at least 15 minutes? | Können Sie mindestens 15 Minuten lang spazieren gehen? | **5** · Ohne jede Schwierigkeiten / Without any difficulty (`LA13921-4`)**4** · Mit geringen Schwierigkeiten / With a little difficulty (`LA13918-0`)**3** · Mit einigen Schwierigkeiten / With some difficulty (`LA13920-6`)**2** · Mit großen Schwierigkeiten / With much difficulty (`LA13919-8`)**1** · Kann ich gar nicht / Unable to do (`LA13912-3`) |
| `promis-pfa53` | 61635-9 | Are you able to run errands and shop? | Können Sie Besorgungen machen und einkaufen gehen? | **5** · Ohne jede Schwierigkeiten / Without any difficulty (`LA13921-4`)**4** · Mit geringen Schwierigkeiten / With a little difficulty (`LA13918-0`)**3** · Mit einigen Schwierigkeiten / With some difficulty (`LA13920-6`)**2** · Mit großen Schwierigkeiten / With much difficulty (`LA13919-8`)**1** · Kann ich gar nicht / Unable to do (`LA13912-3`) |

### Angst

**Sektion `PROMIS-29.Anxiety`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-edanx01` | 61923-9 | I felt fearful. | Ich fürchtete mich. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-edanx40` | 61941-1 | I found it hard to focus on anything other than my anxiety. | Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-edanx41` | 61942-9 | My worries overwhelmed me. | Meine Sorgen haben mich überwältigt. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-edanx53` | 61949-4 | I felt uneasy. | Ich fühlte mich unruhig. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |

### Depression

**Sektion `PROMIS-29.Depression`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-eddep04` | 61953-6 | I felt worthless. | Ich fühlte mich wertlos. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-eddep06` | 61955-1 | I felt helpless. | Ich fühlte mich hilflos. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-eddep29` | 61967-6 | I felt depressed. | Ich fühlte mich niedergeschlagen. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |
| `promis-eddep41` | 61973-4 | I felt hopeless. | Ich fühlte mich hoffnungslos. | **1** · Nie / Never (`LA6270-8`)**2** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**4** · Oft / Often (`LA10044-8`)**5** · Immer / Always (`LA9933-8`) |

### Erschöpfung

**Sektion `PROMIS-29.Fatigue`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-hi7` | 61878-5 | I feel fatigued. | Ich bin erschöpft. | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-an3` | 61882-7 | I have trouble starting things because I am tired. | Es fällt mir schwer, etwas anzufangen, weil ich müde bin. | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-fatexp41` | 61865-2 | How run-down did you feel on average? | Wie ausgelaugt fühlten Sie sich im Allgemeinen? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-fatexp40` | 61864-5 | How fatigued were you on average? | Wie erschöpft waren Sie im Allgemeinen? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |

### Schlafstörungen

**Sektion `PROMIS-29.Sleep`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-sleep109` | 61987-4 | My sleep quality was… | Meine Schlafqualität war … | **5** · Sehr schlecht / Very poor (`LA9615-1`)**4** · Schlecht / Poor (`LA8969-3`)**3** · Mäßig / Fair (`LA8968-5`)**2** · Gut / Good (`LA8967-7`)**1** · Sehr gut / Very Good (`LA13913-1`) |
| `promis-sleep116` | 61986-6 | My sleep was refreshing. | Mein Schlaf war erfrischend. | **5** · Überhaupt nicht / Not at all (`LA6568-5`)**4** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**2** · Ziemlich / Quite a bit (`LA13902-4`)**1** · Sehr / Very much (`LA13914-9`) |
| `promis-sleep20` | 61998-1 | I had a problem with my sleep. | Ich hatte Schlafprobleme. | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-sleep44` | 61999-9 | I had difficulty falling asleep. | Ich hatte Schwierigkeiten einzuschlafen. | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |

### Soziale Teilhabe

**Sektion `PROMIS-29.Social`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-srpper23-caps` | 76709-5 | I have trouble doing all of my usual work (include work at home). | Es fällt mir schwer, meine gewohnte Arbeit zu erledigen (einschließlich der Arbeit zu Hause). | **5** · Nie / Never (`LA6270-8`)**4** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**2** · Meistens / Usually (`LA14747-2`)**1** · Immer / Always (`LA9933-8`) |
| `promis-srpper11-caps` | 75417-6 | I have trouble doing all of my regular leisure activities with others. | Es fällt mir schwer, allen meinen regelmäßigen Freizeitaktivitäten mit anderen nachzugehen. | **5** · Nie / Never (`LA6270-8`)**4** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**2** · Meistens / Usually (`LA14747-2`)**1** · Immer / Always (`LA9933-8`) |
| `promis-srpper18-caps` | 76708-7 | I have trouble doing all of the family activities that I want to do. | Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit meiner Familie machen möchte. | **5** · Nie / Never (`LA6270-8`)**4** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**2** · Meistens / Usually (`LA14747-2`)**1** · Immer / Always (`LA9933-8`) |
| `promis-srpper46-caps` | 76712-9 | I have trouble doing all of the activities with friends that I want to do. | Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte. | **5** · Nie / Never (`LA6270-8`)**4** · Selten / Rarely (`LA10066-1`)**3** · Manchmal / Sometimes (`LA10082-8`)**2** · Meistens / Usually (`LA14747-2`)**1** · Immer / Always (`LA9933-8`) |

### Schmerzbedingte Beeinträchtigung

**Sektion `PROMIS-29.PainInterference`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-painin9` | 61758-9 | How much did pain interfere with your day to day activities? | Wie sehr beeinträchtigten Schmerzen Ihre Alltagsaktivitäten? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-painin22` | 61769-6 | How much did pain interfere with work around the home? | Wie sehr beeinträchtigten Schmerzen Ihre häuslichen Tätigkeiten? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-painin31` | 61773-8 | How much did pain interfere with your ability to participate in social activities? | Wie sehr beeinträchtigten Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |
| `promis-painin34` | 61775-3 | How much did pain interfere with your household chores? | Wie sehr beeinträchtigten Schmerzen Sie bei Ihrer Hausarbeit? | **1** · Überhaupt nicht / Not at all (`LA6568-5`)**2** · Ein wenig / A little bit (`LA13863-8`)**3** · Mäßig / Somewhat (`LA13909-9`)**4** · Ziemlich / Quite a bit (`LA13902-4`)**5** · Sehr / Very much (`LA13914-9`) |

### Schmerzintensität

**Sektion `PROMIS-29.PainIntensity`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-global07` | 61583-1 | How would you rate your pain on average? | Wie würden Sie Ihre Schmerzen im Allgemeinen einschätzen? |   |

### Bereichs-Bewertungen

**Sektion `PROMIS-29.Scores`**

