# PROMIS-16 Profile v2.1 (PROPr) - PCOR-MII Implementation Guide v0.1.0

## PROMIS-16 Profile v2.1 (PROPr)

**Translated page. Original language: German.**

PROMIS®-16 Profile v2.1 (PROPr) ist die ultrakurze Variante der PROMIS-Profile mit 16 Items über 8 Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Ability to Participate in Social Roles and Activities, Pain Interference, **Cognitive Function**). Im Vergleich zu PROMIS-29 ergänzt PROMIS-16 die Cognitive-Function-Domäne und reduziert die Item-Last pro Domäne auf zwei Items.

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Die deutschen Wordings stammen direkt aus dem offiziellen PHO PDF "PROMIS-16 Profile v2.1 (PROPr), German, 20 September 2024" (MATCH=15, DIFF=0).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16`

### Quellen

* Definition im MII PRO-Modul: [PROMIS-16 (Simplifier)](https://simplifier.net/guide/mii-pro-v2026-de/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-16)
* Lizenz & Copyright (4-Schichten-Modell PHO / CPCOR / LOINC / MII): [PROMIS-Lizenzierung](https://simplifier.net/guide/mii-pro-v2026-de/MIIIGModulPRO/PRO-Bibliothek/PROMIS)
* Offizielle deutsche Quelle: PHO PDF "PROMIS-16 Profile v2.1 (PROPr), German, 20 September 2024"

### Eigenschaften

* **Items**: 16 (2 pro Domäne über 8 Domänen)
* **Primärsprache**: Englisch mit deutscher `translation`-Extension
* **Capabilities**: displayable, collectable (Scoring im MII PRO-Modul bewusst auf v2026.5.0 verschoben)

### Scoring

PROPr unterstützt zwei komplementäre Auswertungsformen:

1. **PROPr Utility Score**— Multi-Attribute-Utility-Score (3-Stufen-Methodik) als gesundheitsökonomisches Summary-Maß
1. **8 Domain T-Scores**— domänenspezifische Raw-Score → T-Score Conversion analog PROMIS-29

Beide Scoring-Varianten werden im MII PRO-Modul v2026.5.0 als CQL Library `mii-lib-promis-16` implementiert. Bis dahin ist PROMIS-16 in PCOR-MII als Datenerfassungsinstrument nutzbar; die Score-Berechnung muss extern erfolgen.

### Hinweise

* Item-Überlapp mit PROMIS-29: 14 der 16 Items aus PROMIS-16 finden sich auch in PROMIS-29. Die Cognitive-Function-Items sind die 2 zusätzlichen Items in PROMIS-16.
* Bei kombinierter Erfassung von PROMIS-29 und PROMIS-16 in einer Studie sollten die überlappenden Items nicht doppelt erhoben werden — eine spätere Item-basierte Score-Berechnung (geplant 2027 im MII PRO-Modul) wird hier mehr Flexibilität bringen.

**Auto-generiert aus `mii-qst-pro-promis-16` v2026.4.1 (de.medizininformatikinitiative.kerndatensatz.pros).**

Wo Translation-Extensions auf den `text`-Feldern fehlen, wird die Sprache der Quelle über eine Heuristik bestimmt — leere EN-Spalten weisen auf upstream noch ausstehende EN/DE-Architektur-Migration hin.

### Körperliche Funktion

**Sektion `PROMIS-16.PhysicalFunction`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-pfa21` | 62826-3 | Are you able to go up and down stairs at a normal pace? | Können Sie mit normaler Geschwindigkeit Treppen hoch- und runtergehen? |   |
| `promis-pfa23` | 62827-1 | Are you able to go for a walk of at least 15 minutes? | Können Sie mindestens 15 Minuten lang spazieren gehen? |   |

### Emotionale Belastung — Angst

**Sektion `PROMIS-16.Anxiety`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-edanx40` | 61941-1 | I found it hard to focus on anything other than my anxiety. | Ich fand es schwer, auf etwas anderes zu achten als auf meine Angst. |   |
| `promis-edanx41` | 61942-9 | My worries overwhelmed me. | Meine Sorgen haben mich überwältigt. |   |

### Emotionale Belastung — Depressivität

**Sektion `PROMIS-16.Depression`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-eddep29` | 61967-6 | I felt depressed. | Ich fühlte mich niedergeschlagen. |   |
| `promis-eddep41` | 61973-4 | I felt hopeless. | Ich fühlte mich hoffnungslos. |   |

### Erschöpfung

**Sektion `PROMIS-16.Fatigue`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-hi7` | 61878-5 | I feel fatigued. | Ich bin erschöpft. |   |
| `promis-an3` | 61882-7 | I had trouble starting things because I was tired. | Es fällt mir schwer, etwas anzufangen, weil ich müde bin. |   |

### Schlafbezogene Beeinträchtigungen / Schlafbeeinträchtigung

**Sektion `PROMIS-16.Sleep`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-sleep25` |   | I had problems during the day because of poor sleep. | Ich hatte tagsüber Probleme, weil ich schlecht geschlafen habe. |   |
| `promis-sleep90` |   | I had trouble sleeping. | Es fiel mir schwer zu schlafen. |   |

### Teilhabe an sozialen Rollen und Aktivitäten

**Sektion `PROMIS-16.SocialRoles`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-srpper31-caps` |   | I have trouble taking care of my regular personal responsibilities. | Es fällt mir schwer, mich um meine regelmäßigen persönlichen Verpflichtungen zu kümmern. |   |
| `promis-srpper46-caps` | 76712-9 | I have trouble doing all of the activities with friends that I want to do. | Es fällt mir schwer, allen Aktivitäten nachzugehen, die ich mit Freunden machen möchte. |   |

### Beeinträchtigung durch Schmerzen

**Sektion `PROMIS-16.PainInterference`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-painin9` | 61758-9 | How much did pain interfere with your day-to-day activities? | Wie sehr beeinträchtigen Schmerzen Ihre Alltagsaktivitäten? |   |
| `promis-painin31` | 61773-8 | How much did pain interfere with your ability to participate in social activities? | Wie sehr beeinträchtigen Schmerzen Ihre Fähigkeit, an sozialen Aktivitäten teilzunehmen? |   |

### Kognitive Funktionen — Fähigkeiten

**Sektion `PROMIS-16.Cognition`**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `promis-pc27r` |   | I have been able to remember to do things, like take medicine or buy something I needed. | Ich bin fähig gewesen, mich an Dinge zu erinnern, die ich tun musste, wie z.B. Medikamente einnehmen oder etwas kaufen, das ich benötigte. |   |
| `promis-pc-caps3r` |   | I have been able to think clearly without extra effort. | Ich bin fähig gewesen, klar zu denken, ohne mich extra anzustrengen. |   |

