PROMIS®-29 Profile v2.1 ist das umfassende Multi-Domain-Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität. 29 Items decken sieben Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Ability to Participate in Social Roles and Activities, Pain Interference) plus ein Schmerzintensitäts-Single-Item ab.

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Damit gilt automatisch die offizielle deutsche PHO-Übersetzung mit allen Korrekturen aus v2026.4.x (Wording-Migration, Antwortskalen-Fix, Pain-Interference Verb-Tempus etc.).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29`

### Quellen

- Definition im MII PRO-Modul: [PROMIS-29 (Simplifier)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/dev/promis-29.html)
- Lizenz & Copyright (4-Schichten-Modell PHO / CPCOR / LOINC / MII): [PROMIS-Lizenzierung](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/dev/promis.html)
- Offizielle deutsche Quelle: PHO PDF "PROMIS-29 Profile v2.1 German, 06 April 2020"

### Eigenschaften

- **Items**: 29 (28 × 5-Punkt-Likert + 1 × 11-Punkt-NRS Schmerzintensität)
- **Primärsprache**: Englisch mit deutscher `translation`-Extension
- **Scoring**: Raw Score + T-Score je Domäne (FHIR Variables Pattern, ohne CQL)
- **Capabilities**: displayable, collectable, calculatable, extractable

### Hinweise

- Eine separate DE-primary-Darstellungsvariante (`mii-qst-pro-promis-29-de`) existiert für Renderer, die die `translation`-Extension nicht auswerten; inhaltlich ist sie mit der Hauptversion identisch und wird nicht eigenständig gepflegt.
- Score-Berechnung erfolgt im Questionnaire selbst über FHIR-Variables-Variable, eine separate CQL Library ist nicht erforderlich.

### Beispiel-QuestionnaireResponse

Das MII PRO-Modul liefert ein vollständiges, professionell kuratiertes QR-Beispiel direkt mit:

- [**`mii-exa-pro-promis-29-response`**](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/dev/) (Upstream, Simplifier) — vollständige Antwort über alle 7 Domänen + Schmerzintensität, konform zum `MII PR PRO QuestionnaireResponse`-Profil (validiert: 0 Errors).

Diese Referenz wird hier bewusst **nicht dupliziert** — Pflege erfolgt zentral im MII PRO-Modul.

### Item-Tabelle

<!-- BEGIN AUTO-TRANSLATION-TABLE -->

_Auto-generiert aus `mii-qst-pro-promis-29` v2026.4.1 (de.medizininformatikinitiative.kerndatensatz.pros)._

Wo Translation-Extensions auf den `text`-Feldern fehlen, wird die Sprache der Quelle über eine Heuristik bestimmt — leere EN-Spalten weisen auf upstream noch ausstehende EN/DE-Architektur-Migration hin.

### KÖRPERLICHE FUNKTION

_Sektion `PROMIS-29.PhysicalFunction`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-pfa11` | 61597-1 | Are you able to do chores such as vacuuming or yard work [PROMIS] | Können Sie Hausarbeiten erledigen, z.B. Staubsaugen oder Gartenarbeit? | **1**&nbsp;·&nbsp;Kann ich gar nicht / Unable to do&nbsp;(`LA13912-3`)<br>**2**&nbsp;·&nbsp;Mit großen Schwierigkeiten / With much difficulty&nbsp;(`LA13919-8`)<br>**3**&nbsp;·&nbsp;Mit einigen Schwierigkeiten / With some difficulty&nbsp;(`LA13920-6`)<br>**4**&nbsp;·&nbsp;Mit geringen Schwierigkeiten / With a little difficulty&nbsp;(`LA13918-0`)<br>**5**&nbsp;·&nbsp;Ohne jede Schwierigkeiten / Without any difficulty&nbsp;(`LA13921-4`) |
| `promis-pfa21` | 61607-8 | Are you able to go up and down stairs at a normal pace [PROMIS] | Können Sie mit normaler Geschwindigkeit Treppen hoch- und runtergehen? | **1**&nbsp;·&nbsp;Kann ich gar nicht / Unable to do&nbsp;(`LA13912-3`)<br>**2**&nbsp;·&nbsp;Mit großen Schwierigkeiten / With much difficulty&nbsp;(`LA13919-8`)<br>**3**&nbsp;·&nbsp;Mit einigen Schwierigkeiten / With some difficulty&nbsp;(`LA13920-6`)<br>**4**&nbsp;·&nbsp;Mit geringen Schwierigkeiten / With a little difficulty&nbsp;(`LA13918-0`)<br>**5**&nbsp;·&nbsp;Ohne jede Schwierigkeiten / Without any difficulty&nbsp;(`LA13921-4`) |
| `promis-pfa23` | 61609-4 | Are you able to go for a walk of at least 15 minutes [PROMIS] | Können Sie mindestens 15 Minuten lang spazieren gehen? | **1**&nbsp;·&nbsp;Kann ich gar nicht / Unable to do&nbsp;(`LA13912-3`)<br>**2**&nbsp;·&nbsp;Mit großen Schwierigkeiten / With much difficulty&nbsp;(`LA13919-8`)<br>**3**&nbsp;·&nbsp;Mit einigen Schwierigkeiten / With some difficulty&nbsp;(`LA13920-6`)<br>**4**&nbsp;·&nbsp;Mit geringen Schwierigkeiten / With a little difficulty&nbsp;(`LA13918-0`)<br>**5**&nbsp;·&nbsp;Ohne jede Schwierigkeiten / Without any difficulty&nbsp;(`LA13921-4`) |
| `promis-pfa53` | 61635-9 | Are you able to run errands and shop [PROMIS] | Können Sie Besorgungen machen und einkaufen gehen? | **1**&nbsp;·&nbsp;Kann ich gar nicht / Unable to do&nbsp;(`LA13912-3`)<br>**2**&nbsp;·&nbsp;Mit großen Schwierigkeiten / With much difficulty&nbsp;(`LA13919-8`)<br>**3**&nbsp;·&nbsp;Mit einigen Schwierigkeiten / With some difficulty&nbsp;(`LA13920-6`)<br>**4**&nbsp;·&nbsp;Mit geringen Schwierigkeiten / With a little difficulty&nbsp;(`LA13918-0`)<br>**5**&nbsp;·&nbsp;Ohne jede Schwierigkeiten / Without any difficulty&nbsp;(`LA13921-4`) |

</div>

### ANGST

_Sektion `PROMIS-29.Anxiety`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-edanx01` | 61923-9 | I felt fearful in past 7 days [PROMIS] | Ich fürchtete mich. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |
| `promis-edanx40` | 61941-1 | I found it hard to focus on anything other than my anxiety in past 7 days | Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |
| `promis-edanx41` | 61942-9 | My worries overwhelmed me in past 7 days | Meine Sorgen haben mich überwältigt. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |
| `promis-edanx53` | 61949-4 | I felt uneasy in past 7 days | Ich fühlte mich unruhig. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |

</div>

### DEPRESSION

_Sektion `PROMIS-29.Depression`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-eddep04` | 61953-6 | I felt worthless in past 7 days [PROMIS] | Ich fühlte mich wertlos. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |
| `promis-eddep06` | 61955-1 | I felt helpless in past 7 days [PROMIS] | Ich fühlte mich hilflos. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |
| `promis-eddep29` | 61967-6 | I felt depressed in past 7 days [PROMIS] | Ich fühlte mich niedergeschlagen. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |
| `promis-eddep41` | 61973-4 | I felt hopeless in past 7 days [PROMIS] | Ich fühlte mich hoffnungslos. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |

</div>

### ERSCHÖPFUNG

_Sektion `PROMIS-29.Fatigue`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-hi7` | 61878-5 | I feel fatigued during the past 7 days [PROMIS] | Ich bin erschöpft. | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |
| `promis-an3` | 61882-7 | Es fällt mir schwer, etwas anzufangen, weil ich müde bin. |  | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |
| `promis-fatexp41` | 61863-7 | How fatigued were you on the day you felt most fatigued in past 7 days [PROMIS] | Wie ausgelaugt fühlten Sie sich im Allgemeinen? | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |
| `promis-fatexp40` | 61864-5 | How fatigued were you on average in past 7 days [PROMIS] | Wie erschöpft waren Sie im Allgemeinen? | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |

</div>

### SCHLAFSTÖRUNGEN

_Sektion `PROMIS-29.Sleep`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-sleep109` | 61987-4 | My sleep quality was...in past 7 days [PROMIS] | Meine Schlafqualität war ... | **5**&nbsp;·&nbsp;Sehr schlecht / Very poor&nbsp;(`LA9615-1`)<br>**4**&nbsp;·&nbsp;Schlecht / Poor&nbsp;(`LA8969-3`)<br>**3**&nbsp;·&nbsp;Mäßig / Fair&nbsp;(`LA8968-5`)<br>**2**&nbsp;·&nbsp;Gut / Good&nbsp;(`LA8967-7`)<br>**1**&nbsp;·&nbsp;Sehr gut / Very Good&nbsp;(`LA13913-1`) |
| `promis-sleep116` | 61986-6 | My sleep was refreshing in past 7 days [PROMIS] | Mein Schlaf war erfrischend. | **5**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**4**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**2**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**1**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |
| `promis-sleep20` | 61998-1 | I had a problem with my sleep 7 days [PROMIS] | Ich hatte Schlafprobleme. | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |
| `promis-sleep44` | 61999-9 | I had difficulty falling asleep in past 7 days [PROMIS] | Ich hatte Schwierigkeiten einzuschlafen. | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |

</div>

### SOZIALE TEILHABE

_Sektion `PROMIS-29.Social`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-srpper23-caps` | 76709-5 | I have trouble doing all of my usual work (include work at home) [PROMIS] | Es fällt mir schwer, meine gewohnte Arbeit zu erledigen (einschließlich der Arbeit zu Hause). | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |
| `promis-srpper11-caps` | 75417-6 | I have trouble doing all of my regular leisure activities with others [PROMIS] | Es fällt mir schwer, allen meinen regelmäßigen Freizeitaktivitäten mit anderen nachzugehen. | **5**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**4**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**2**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**1**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |
| `promis-srpper18-caps` | 76708-7 | I have trouble doing all of the family activities that I want to do [PROMIS] | Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit meiner Familie machen möchte. | **5**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**4**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**2**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**1**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |
| `promis-srpper46-caps` | 76712-9 | I have trouble doing all of the activities with friends that I want to do [PROMIS] | Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte. | **5**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**4**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**2**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**1**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |

</div>

### SCHMERZBEDINGTE BEEINTRÄCHTIGUNG

_Sektion `PROMIS-29.PainInterference`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-painin9` | 61758-9 | How much did pain interfere with your day to day activities in past 7 days [PROMIS] | Wie sehr beeinträchtigten Schmerzen Ihre Alltagsaktivitäten? | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |
| `promis-painin22` | 61769-6 | How much did pain interfere with work around the home in past 7 days [PROMIS] | Wie sehr beeinträchtigten Schmerzen Ihre häuslichen Tätigkeiten? | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |
| `promis-painin31` | 61773-8 | How much did pain interfere with your ability to participate in social activities in past 7 days [PROMIS] | Wie sehr beeinträchtigten Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen? | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |
| `promis-painin34` | 61775-3 | How much did pain interfere with your household chores in past 7 days [PROMIS] | Wie sehr beeinträchtigten Schmerzen Sie bei Ihrer Hausarbeit? | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |

</div>

### SCHMERZINTENSITÄT

_Sektion `PROMIS-29.PainIntensity`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-global07` | 61583-1 | How would you rate your pain on average in past 7 days [PROMIS] | Wie würden Sie Ihre Schmerzen im Allgemeinen einschätzen? |  |

</div>

### BEREICHS-BEWERTUNGEN

_Sektion `PROMIS-29.Scores`_

<!-- END AUTO-TRANSLATION-TABLE -->
