PROMIS®-16 Profile v2.1 (PROPr) ist die ultrakurze Variante der PROMIS-Profile mit 16 Items über 8 Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Ability to Participate in Social Roles and Activities, Pain Interference, **Cognitive Function**). Im Vergleich zu PROMIS-29 ergänzt PROMIS-16 die Cognitive-Function-Domäne und reduziert die Item-Last pro Domäne auf zwei Items.

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Die deutschen Wordings stammen direkt aus dem offiziellen PHO PDF "PROMIS-16 Profile v2.1 (PROPr), German, 20 September 2024" (MATCH=15, DIFF=0).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16`

### Quellen

- Definition im MII PRO-Modul: [PROMIS-16 (Simplifier)](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/dev/promis-16.html)
- Lizenz & Copyright (4-Schichten-Modell PHO / CPCOR / LOINC / MII): [PROMIS-Lizenzierung](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/dev/promis.html)
- Offizielle deutsche Quelle: PHO PDF "PROMIS-16 Profile v2.1 (PROPr), German, 20 September 2024"

### Eigenschaften

- **Items**: 16 (2 pro Domäne über 8 Domänen)
- **Primärsprache**: Englisch mit deutscher `translation`-Extension
- **Capabilities**: displayable, collectable (Scoring im MII PRO-Modul bewusst auf v2026.5.0 verschoben)

### Scoring

PROPr unterstützt zwei komplementäre Auswertungsformen:

1. **PROPr Utility Score** — Multi-Attribute-Utility-Score (3-Stufen-Methodik) als gesundheitsökonomisches Summary-Maß
2. **8 Domain T-Scores** — domänenspezifische Raw-Score → T-Score Conversion analog PROMIS-29

Beide Scoring-Varianten werden im MII PRO-Modul v2026.5.0 als CQL Library `mii-lib-promis-16` implementiert. Bis dahin ist PROMIS-16 in PCOR-MII als Datenerfassungsinstrument nutzbar; die Score-Berechnung muss extern erfolgen.

### Hinweise

- Item-Überlapp mit PROMIS-29: 14 der 16 Items aus PROMIS-16 finden sich auch in PROMIS-29. Die Cognitive-Function-Items sind die 2 zusätzlichen Items in PROMIS-16.
- Bei kombinierter Erfassung von PROMIS-29 und PROMIS-16 in einer Studie sollten die überlappenden Items nicht doppelt erhoben werden — eine spätere Item-basierte Score-Berechnung (geplant 2027 im MII PRO-Modul) wird hier mehr Flexibilität bringen.

### Beispiel-QuestionnaireResponse

[**`pcor-mii-exa-promis-16-response`**](QuestionnaireResponse-pcor-mii-exa-promis-16-response.html) — vollständige Antwort eines hypothetischen Patienten über alle 8 Domänen (inkl. Cognitive Function), konform zum [`MII PR PRO QuestionnaireResponse`-Profil](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/dev/) (`meta.profile`: `mii-pr-pro-questionnaire-response|2026.4.1`).

### Item-Tabelle

<!-- BEGIN AUTO-TRANSLATION-TABLE -->

_Auto-generiert aus `mii-qst-pro-promis-16` v2026.4.1 (de.medizininformatikinitiative.kerndatensatz.pros)._

Wo Translation-Extensions auf den `text`-Feldern fehlen, wird die Sprache der Quelle über eine Heuristik bestimmt — leere EN-Spalten weisen auf upstream noch ausstehende EN/DE-Architektur-Migration hin.

### Körperliche Funktion

_Sektion `PROMIS-16.PhysicalFunction`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-pfa21` | 62826-3 | Are you able to go up and down stairs at a normal pace? | Können Sie mit normaler Geschwindigkeit Treppen hoch- und runtergehen? | **1**&nbsp;·&nbsp;Ohne jede Schwierigkeiten / Without any difficulty&nbsp;(`LA13921-4`)<br>**2**&nbsp;·&nbsp;Mit geringen Schwierigkeiten / With a little difficulty&nbsp;(`LA13918-0`)<br>**3**&nbsp;·&nbsp;Mit einigen Schwierigkeiten / With some difficulty&nbsp;(`LA13920-6`)<br>**4**&nbsp;·&nbsp;Mit großen Schwierigkeiten / With much difficulty&nbsp;(`LA13919-8`)<br>**5**&nbsp;·&nbsp;Kann ich gar nicht / Unable to do&nbsp;(`LA13912-3`) |
| `promis-pfa23` | 62827-1 | Are you able to go for a walk of at least 15 minutes? | Können Sie mindestens 15 Minuten lang spazieren gehen? | **1**&nbsp;·&nbsp;Ohne jede Schwierigkeiten / Without any difficulty&nbsp;(`LA13921-4`)<br>**2**&nbsp;·&nbsp;Mit geringen Schwierigkeiten / With a little difficulty&nbsp;(`LA13918-0`)<br>**3**&nbsp;·&nbsp;Mit einigen Schwierigkeiten / With some difficulty&nbsp;(`LA13920-6`)<br>**4**&nbsp;·&nbsp;Mit großen Schwierigkeiten / With much difficulty&nbsp;(`LA13919-8`)<br>**5**&nbsp;·&nbsp;Kann ich gar nicht / Unable to do&nbsp;(`LA13912-3`) |

</div>

### Emotionale Belastung — Angst

_Sektion `PROMIS-16.Anxiety`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-edanx40` | 61941-1 | I found it hard to focus on anything other than my anxiety. | Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |
| `promis-edanx41` | 61942-9 | My worries overwhelmed me. | Meine Sorgen haben mich überwältigt. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |

</div>

### Emotionale Belastung — Depressivität

_Sektion `PROMIS-16.Depression`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-eddep29` | 61967-6 | I felt depressed. | Ich fühlte mich niedergeschlagen. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |
| `promis-eddep41` | 61973-4 | I felt hopeless. | Ich fühlte mich hoffnungslos. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |

</div>

### Erschöpfung

_Sektion `PROMIS-16.Fatigue`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-hi7` | 61878-5 | I feel fatigued. | Ich bin erschöpft. | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |
| `promis-an3` | 61882-7 | I had trouble starting things because I was tired. | Es fällt mir schwer, etwas anzufangen, weil ich müde bin. | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |

</div>

### Schlafbezogene Beeinträchtigungen / Schlafbeeinträchtigung

_Sektion `PROMIS-16.Sleep`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-sleep25` |  | I had problems during the day because of poor sleep. | Ich hatte tagsüber Probleme, weil ich schlecht geschlafen habe. | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |
| `promis-sleep90` |  | I had trouble sleeping. | Es fiel mir schwer zu schlafen. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |

</div>

### Teilhabe an sozialen Rollen und Aktivitäten

_Sektion `PROMIS-16.SocialRoles`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-srpper31-caps` |  | I have trouble taking care of my regular personal responsibilities. | Es fällt mir schwer, mich um meine regelmäßigen persönlichen Verpflichtungen zu kümmern. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |
| `promis-srpper46-caps` | 76712-9 | I have trouble doing all of the activities with friends that I want to do. | Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte. | **1**&nbsp;·&nbsp;Nie / Never&nbsp;(`LA6270-8`)<br>**2**&nbsp;·&nbsp;Selten / Rarely&nbsp;(`LA10066-1`)<br>**3**&nbsp;·&nbsp;Manchmal / Sometimes&nbsp;(`LA10082-8`)<br>**4**&nbsp;·&nbsp;Oft / Often&nbsp;(`LA10044-8`)<br>**5**&nbsp;·&nbsp;Immer / Always&nbsp;(`LA9933-8`) |

</div>

### Beeinträchtigung durch Schmerzen

_Sektion `PROMIS-16.PainInterference`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-painin9` | 61758-9 | How much did pain interfere with your day-to-day activities? | Wie sehr beeinträchtigen Schmerzen Ihre Alltagsaktivitäten? | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |
| `promis-painin31` | 61773-8 | How much did pain interfere with your ability to participate in social activities? | Wie sehr beeinträchtigen Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen? | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |

</div>

### Kognitive Funktionen — Fähigkeiten

_Sektion `PROMIS-16.Cognition`_

<div markdown="1" class="promis-item-table">

| linkId | LOINC | English | Deutsch | Antwortoptionen |
|---|---|---|---|---|
| `promis-pc27r` |  | I have been able to remember to do things, like take medicine or buy something I needed. | Ich bin fähig gewesen, mich an Dinge zu erinnern, die ich tun musste, wie z.B. Medikamente einnehmen oder etwas kaufen, das ich benötigte. | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |
| `promis-pc-caps3r` |  | I have been able to think clearly without extra effort. | Ich bin fähig gewesen, klar zu denken, ohne mich extra anzustrengen. | **1**&nbsp;·&nbsp;Überhaupt nicht / Not at all&nbsp;(`LA6568-5`)<br>**2**&nbsp;·&nbsp;Ein wenig / A little bit&nbsp;(`LA13863-8`)<br>**3**&nbsp;·&nbsp;Mäßig / Somewhat&nbsp;(`LA13909-9`)<br>**4**&nbsp;·&nbsp;Ziemlich / Quite a bit&nbsp;(`LA13902-4`)<br>**5**&nbsp;·&nbsp;Sehr / Very much&nbsp;(`LA13914-9`) |

</div>

<!-- END AUTO-TRANSLATION-TABLE -->
