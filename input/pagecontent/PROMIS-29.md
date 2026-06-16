PROMIS®-29 Profile v2.1 ist das umfassende Multi-Domain-Instrument zur Erfassung der gesundheitsbezogenen Lebensqualität. 29 Items decken sieben Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Ability to Participate in Social Roles and Activities, Pain Interference) plus ein Schmerzintensitäts-Single-Item ab.

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Damit gilt automatisch die offizielle deutsche PHO-Übersetzung mit allen Korrekturen aus v2026.4.x (Wording-Migration, Antwortskalen-Fix, Pain-Interference Verb-Tempus etc.).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29`

### Quellen

- Definition im MII PRO-Modul: [PROMIS-29 (Simplifier)](https://simplifier.net/guide/mii-pro-v2026-de/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-29)
- Lizenz & Copyright (4-Schichten-Modell PHO / CPCOR / LOINC / MII): [PROMIS-Lizenzierung](https://simplifier.net/guide/mii-pro-v2026-de/MIIIGModulPRO/PRO-Bibliothek/PROMIS)
- Offizielle deutsche Quelle: PHO PDF "PROMIS-29 Profile v2.1 German, 06 April 2020"

### Eigenschaften

- **Items**: 29 (28 × 5-Punkt-Likert + 1 × 11-Punkt-NRS Schmerzintensität)
- **Primärsprache**: Englisch mit deutscher `translation`-Extension
- **Scoring**: Raw Score + T-Score je Domäne (FHIR Variables Pattern, ohne CQL)
- **Capabilities**: displayable, collectable, calculatable, extractable

### Hinweise

- Eine separate DE-primary-Darstellungsvariante (`mii-qst-pro-promis-29-de`) existiert für Renderer, die die `translation`-Extension nicht auswerten; inhaltlich ist sie mit der Hauptversion identisch und wird nicht eigenständig gepflegt.
- Score-Berechnung erfolgt im Questionnaire selbst über FHIR-Variables-Variable, eine separate CQL Library ist nicht erforderlich.

<!-- BEGIN AUTO-TRANSLATION-TABLE -->

_Auto-generiert aus `mii-qst-pro-promis-29` v2026.4.1 (de.medizininformatikinitiative.kerndatensatz.pros)._

Wo Translation-Extensions auf den `text`-Feldern fehlen, wird die Sprache der Quelle über eine Heuristik bestimmt — leere EN-Spalten weisen auf upstream noch ausstehende EN/DE-Architektur-Migration hin.

### KÖRPERLICHE FUNKTION

_Sektion `PROMIS-29.PhysicalFunction`_

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-pfa11` | 61597-1 | Are you able to do chores such as vacuuming or yard work [PROMIS] | Können Sie Hausarbeiten erledigen, z.B. Staubsaugen oder Gartenarbeit? |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA13912-3 | Unable to do | Kann ich gar nicht | 1 |
| LA13919-8 | With much difficulty | Mit großen Schwierigkeiten | 2 |
| LA13920-6 | With some difficulty | Mit einigen Schwierigkeiten | 3 |
| LA13918-0 | With a little difficulty | Mit geringen Schwierigkeiten | 4 |
| LA13921-4 | Without any difficulty | Ohne jede Schwierigkeiten | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-pfa21` | 61607-8 | Are you able to go up and down stairs at a normal pace [PROMIS] | Können Sie mit normaler Geschwindigkeit Treppen hoch- und runtergehen? |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA13912-3 | Unable to do | Kann ich gar nicht | 1 |
| LA13919-8 | With much difficulty | Mit großen Schwierigkeiten | 2 |
| LA13920-6 | With some difficulty | Mit einigen Schwierigkeiten | 3 |
| LA13918-0 | With a little difficulty | Mit geringen Schwierigkeiten | 4 |
| LA13921-4 | Without any difficulty | Ohne jede Schwierigkeiten | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-pfa23` | 61609-4 | Are you able to go for a walk of at least 15 minutes [PROMIS] | Können Sie mindestens 15 Minuten lang spazieren gehen? |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA13912-3 | Unable to do | Kann ich gar nicht | 1 |
| LA13919-8 | With much difficulty | Mit großen Schwierigkeiten | 2 |
| LA13920-6 | With some difficulty | Mit einigen Schwierigkeiten | 3 |
| LA13918-0 | With a little difficulty | Mit geringen Schwierigkeiten | 4 |
| LA13921-4 | Without any difficulty | Ohne jede Schwierigkeiten | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-pfa53` | 61635-9 | Are you able to run errands and shop [PROMIS] | Können Sie Besorgungen machen und einkaufen gehen? |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA13912-3 | Unable to do | Kann ich gar nicht | 1 |
| LA13919-8 | With much difficulty | Mit großen Schwierigkeiten | 2 |
| LA13920-6 | With some difficulty | Mit einigen Schwierigkeiten | 3 |
| LA13918-0 | With a little difficulty | Mit geringen Schwierigkeiten | 4 |
| LA13921-4 | Without any difficulty | Ohne jede Schwierigkeiten | 5 |

### ANGST

_Sektion `PROMIS-29.Anxiety`_

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-edanx01` | 61923-9 |  | Ich fürchtete mich. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6270-8 | Never | Nie | 1 |
| LA10066-1 | Rarely | Selten | 2 |
| LA10082-8 | Sometimes | Manchmal | 3 |
| LA10044-8 | Often | Oft | 4 |
| LA9933-8 | Always | Immer | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-edanx40` | 61941-1 |  | Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6270-8 | Never | Nie | 1 |
| LA10066-1 | Rarely | Selten | 2 |
| LA10082-8 | Sometimes | Manchmal | 3 |
| LA10044-8 | Often | Oft | 4 |
| LA9933-8 | Always | Immer | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-edanx41` | 61942-9 |  | Meine Sorgen haben mich überwältigt. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6270-8 | Never | Nie | 1 |
| LA10066-1 | Rarely | Selten | 2 |
| LA10082-8 | Sometimes | Manchmal | 3 |
| LA10044-8 | Often | Oft | 4 |
| LA9933-8 | Always | Immer | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-edanx53` | 61949-4 |  | Ich fühlte mich unruhig. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6270-8 | Never | Nie | 1 |
| LA10066-1 | Rarely | Selten | 2 |
| LA10082-8 | Sometimes | Manchmal | 3 |
| LA10044-8 | Often | Oft | 4 |
| LA9933-8 | Always | Immer | 5 |

### DEPRESSION

_Sektion `PROMIS-29.Depression`_

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-eddep04` | 61953-6 |  | Ich fühlte mich wertlos. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6270-8 | Never | Nie | 1 |
| LA10066-1 | Rarely | Selten | 2 |
| LA10082-8 | Sometimes | Manchmal | 3 |
| LA10044-8 | Often | Oft | 4 |
| LA9933-8 | Always | Immer | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-eddep06` | 61955-1 |  | Ich fühlte mich hilflos. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6270-8 | Never | Nie | 1 |
| LA10066-1 | Rarely | Selten | 2 |
| LA10082-8 | Sometimes | Manchmal | 3 |
| LA10044-8 | Often | Oft | 4 |
| LA9933-8 | Always | Immer | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-eddep29` | 61967-6 |  | Ich fühlte mich niedergeschlagen. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6270-8 | Never | Nie | 1 |
| LA10066-1 | Rarely | Selten | 2 |
| LA10082-8 | Sometimes | Manchmal | 3 |
| LA10044-8 | Often | Oft | 4 |
| LA9933-8 | Always | Immer | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-eddep41` | 61973-4 |  | Ich fühlte mich hoffnungslos. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6270-8 | Never | Nie | 1 |
| LA10066-1 | Rarely | Selten | 2 |
| LA10082-8 | Sometimes | Manchmal | 3 |
| LA10044-8 | Often | Oft | 4 |
| LA9933-8 | Always | Immer | 5 |

### ERSCHÖPFUNG

_Sektion `PROMIS-29.Fatigue`_

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-hi7` | 61878-5 |  | Ich bin erschöpft. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6568-5 | Not at all | Überhaupt nicht | 1 |
| LA13863-8 | A little bit | Ein wenig | 2 |
| LA13909-9 | Somewhat | Mäßig | 3 |
| LA13902-4 | Quite a bit | Ziemlich | 4 |
| LA13914-9 | Very much | Sehr | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-an3` | 61882-7 | Es fällt mir schwer, etwas anzufangen, weil ich müde bin. |  |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6568-5 | Not at all | Überhaupt nicht | 1 |
| LA13863-8 | A little bit | Ein wenig | 2 |
| LA13909-9 | Somewhat | Mäßig | 3 |
| LA13902-4 | Quite a bit | Ziemlich | 4 |
| LA13914-9 | Very much | Sehr | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-fatexp41` | 61863-7 |  | Wie ausgelaugt fühlten Sie sich im Allgemeinen? |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6568-5 | Not at all | Überhaupt nicht | 1 |
| LA13863-8 | A little bit | Ein wenig | 2 |
| LA13909-9 | Somewhat | Mäßig | 3 |
| LA13902-4 | Quite a bit | Ziemlich | 4 |
| LA13914-9 | Very much | Sehr | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-fatexp40` | 61864-5 |  | Wie erschöpft waren Sie im Allgemeinen? |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6568-5 | Not at all | Überhaupt nicht | 1 |
| LA13863-8 | A little bit | Ein wenig | 2 |
| LA13909-9 | Somewhat | Mäßig | 3 |
| LA13902-4 | Quite a bit | Ziemlich | 4 |
| LA13914-9 | Very much | Sehr | 5 |

### SCHLAFSTÖRUNGEN

_Sektion `PROMIS-29.Sleep`_

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-sleep109` | 61987-4 |  | Meine Schlafqualität war ... |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA9615-1 | Very poor | Sehr schlecht | 5 |
| LA8969-3 | Poor | Schlecht | 4 |
| LA8968-5 | Fair | Mäßig | 3 |
| LA8967-7 | Good | Gut | 2 |
| LA13913-1 | Very Good | Sehr gut | 1 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-sleep116` | 61986-6 |  | Mein Schlaf war erfrischend. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6568-5 | Not at all | Überhaupt nicht | 5 |
| LA13863-8 | A little bit | Ein wenig | 4 |
| LA13909-9 | Somewhat | Mäßig | 3 |
| LA13902-4 | Quite a bit | Ziemlich | 2 |
| LA13914-9 | Very much | Sehr | 1 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-sleep20` | 61998-1 |  | Ich hatte Schlafprobleme. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6568-5 | Not at all | Überhaupt nicht | 1 |
| LA13863-8 | A little bit | Ein wenig | 2 |
| LA13909-9 | Somewhat | Mäßig | 3 |
| LA13902-4 | Quite a bit | Ziemlich | 4 |
| LA13914-9 | Very much | Sehr | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-sleep44` | 61999-9 |  | Ich hatte Schwierigkeiten einzuschlafen. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6568-5 | Not at all | Überhaupt nicht | 1 |
| LA13863-8 | A little bit | Ein wenig | 2 |
| LA13909-9 | Somewhat | Mäßig | 3 |
| LA13902-4 | Quite a bit | Ziemlich | 4 |
| LA13914-9 | Very much | Sehr | 5 |

### SOZIALE TEILHABE

_Sektion `PROMIS-29.Social`_

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-srpper23-caps` | 76709-5 |  | Es fällt mir schwer, meine gewohnte Arbeit zu erledigen (einschließlich der Arbeit zu Hause). |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6270-8 | Never | Nie | 1 |
| LA10066-1 | Rarely | Selten | 2 |
| LA10082-8 | Sometimes | Manchmal | 3 |
| LA10044-8 | Often | Oft | 4 |
| LA9933-8 | Always | Immer | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-srpper11-caps` | 75417-6 |  | Es fällt mir schwer, allen meinen regelmäßigen Freizeitaktivitäten mit anderen nachzugehen. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6270-8 | Never | Nie | 5 |
| LA10066-1 | Rarely | Selten | 4 |
| LA10082-8 | Sometimes | Manchmal | 3 |
| LA10044-8 | Often | Oft | 2 |
| LA9933-8 | Always | Immer | 1 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-srpper18-caps` | 76708-7 |  | Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit meiner Familie machen möchte. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6270-8 | Never | Nie | 5 |
| LA10066-1 | Rarely | Selten | 4 |
| LA10082-8 | Sometimes | Manchmal | 3 |
| LA10044-8 | Often | Oft | 2 |
| LA9933-8 | Always | Immer | 1 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-srpper46-caps` | 76712-9 |  | Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte. |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6270-8 | Never | Nie | 5 |
| LA10066-1 | Rarely | Selten | 4 |
| LA10082-8 | Sometimes | Manchmal | 3 |
| LA10044-8 | Often | Oft | 2 |
| LA9933-8 | Always | Immer | 1 |

### SCHMERZBEDINGTE BEEINTRÄCHTIGUNG

_Sektion `PROMIS-29.PainInterference`_

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-painin9` | 61758-9 |  | Wie sehr beeinträchtigten Schmerzen Ihre Alltagsaktivitäten? |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6568-5 | Not at all | Überhaupt nicht | 1 |
| LA13863-8 | A little bit | Ein wenig | 2 |
| LA13909-9 | Somewhat | Mäßig | 3 |
| LA13902-4 | Quite a bit | Ziemlich | 4 |
| LA13914-9 | Very much | Sehr | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-painin22` | 61769-6 |  | Wie sehr beeinträchtigten Schmerzen Ihre häuslichen Tätigkeiten? |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6568-5 | Not at all | Überhaupt nicht | 1 |
| LA13863-8 | A little bit | Ein wenig | 2 |
| LA13909-9 | Somewhat | Mäßig | 3 |
| LA13902-4 | Quite a bit | Ziemlich | 4 |
| LA13914-9 | Very much | Sehr | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-painin31` | 61773-8 |  | Wie sehr beeinträchtigten Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen? |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6568-5 | Not at all | Überhaupt nicht | 1 |
| LA13863-8 | A little bit | Ein wenig | 2 |
| LA13909-9 | Somewhat | Mäßig | 3 |
| LA13902-4 | Quite a bit | Ziemlich | 4 |
| LA13914-9 | Very much | Sehr | 5 |

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-painin34` | 61775-3 |  | Wie sehr beeinträchtigten Schmerzen Sie bei Ihrer Hausarbeit? |

**Antwortoptionen:**

| Code | English | Deutsch | Ordinal |
|---|---|---|---|
| LA6568-5 | Not at all | Überhaupt nicht | 1 |
| LA13863-8 | A little bit | Ein wenig | 2 |
| LA13909-9 | Somewhat | Mäßig | 3 |
| LA13902-4 | Quite a bit | Ziemlich | 4 |
| LA13914-9 | Very much | Sehr | 5 |

### SCHMERZINTENSITÄT

_Sektion `PROMIS-29.PainIntensity`_

| linkId | LOINC | English | Deutsch |
|---|---|---|---|
| `promis-global07` | 61583-1 |  | Wie würden Sie Ihre Schmerzen im Allgemeinen einschätzen? |

### BEREICHS-BEWERTUNGEN

_Sektion `PROMIS-29.Scores`_

<!-- END AUTO-TRANSLATION-TABLE -->
