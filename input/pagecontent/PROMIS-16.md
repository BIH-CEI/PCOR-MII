PROMIS®-16 Profile v2.1 (PROPr) ist die ultrakurze Variante der PROMIS-Profile mit 16 Items über 8 Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Ability to Participate in Social Roles and Activities, Pain Interference, **Cognitive Function**). Im Vergleich zu PROMIS-29 ergänzt PROMIS-16 die Cognitive-Function-Domäne und reduziert die Item-Last pro Domäne auf zwei Items.

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Die deutschen Wordings stammen direkt aus dem offiziellen PHO PDF "PROMIS-16 Profile v2.1 (PROPr), German, 20 September 2024" (MATCH=15, DIFF=0).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16`

### Quellen

- IG-Doku-Seite: [PROMIS-16 im MII PRO IG (Simplifier)](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/PROMIS/PROMIS-16.page.md?version=current)
- Raw-Resource: [PROMIS-16 Questionnaire (Simplifier Package)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.4.1/files/3538121)
- Lizenz & Copyright (4-Schichten-Modell PHO / CPCOR / LOINC / MII): [PROMIS-Lizenzierung](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.4.1)
- Offizielle deutsche Quelle: PHO PDF "PROMIS-16 Profile v2.1 (PROPr), German, 20 September 2024"

### Eigenschaften

- **Items**: 16 (2 pro Domäne über 8 Domänen)
- **Primärsprache**: Englisch mit deutscher `translation`-Extension
- **Capabilities**: displayable, collectable (Scoring im MII PRO-Modul bewusst auf v2026.5.0 verschoben)

### Scoring

PROMIS-16 erlaubt **drei** Auswertungsformen:

| Score | Umfang | Wertebereich | Verfahren |
|---|---|--:|---|
| **8 Domänen-T-Scores** | je Domäne, Rohwert 2–10 aus zwei Items | T ≈ 27–80 je nach Domäne | Umrechnungstabelle Rohwert → T-Score, oder genauer per Antwortmuster |
| **Physical/Mental Health Summary Scores** | zwei Summenmaße über die Domänen | Z-Scores | nach Hays-Methodik |
| **PROPr Utility Score** | **7** der 8 Domänen | **−0,022 bis 1,0** | multiplikatives Multi-Attribute-Utility-Modell |

**Bemerkenswert am PROPr: Angst geht nicht ein.** Der PROMIS-Preference-Score (Dewitt et al. 2018, [doi:10.1177/0272989X18776637](https://doi.org/10.1177/0272989X18776637)) beruht auf sieben Domänen — Cognitive Function-Abilities, Depression, Fatigue, Pain Interference, Physical Function, Sleep Disturbance und Ability to Participate in Social Roles and Activities. Die Anxiety-Domäne des PROMIS-16 bleibt außen vor. Der Wertebereich beginnt knapp unterhalb von null, weil einzelne Zustände als „schlechter als tot" bewertet wurden (0 = tot, 1 = bestmögliche Gesundheit).

Der PROPr rechnet dabei **nicht auf Item-, sondern auf Domänenebene**: Aus dem T-Score wird θ = (T − 50) / 10, und darauf setzt das Utility-Modell auf. Genau deshalb ist er aus dem PROMIS-16 berechenbar — die zwei Cognitive-Function-Items, die dem PROMIS-29 fehlen, liefern die letzte noch benötigte Domäne. Eine Agreement-Studie (Hanmer et al. 2025, [doi:10.1007/s11136-024-03827-5](https://doi.org/10.1007/s11136-024-03827-5)) findet Korrelationen von 0,93–0,95 zwischen PROPr aus PROMIS-16 und aus PROMIS-29+2, mit leichter Überschätzung am oberen Ende.

**Die Scoring-Grundlagen sind öffentlich**, das Scoring ist also nicht an eine proprietäre Engine gebunden:

- Umrechnungstabellen Rohwert → T-Score je 2a-Kurzform im [PROMIS Adult Profile Scoring Manual](https://healthmeasures.net/implement/scoring/manual-scoring-resources/promis-scoring-manuals/) (HealthMeasures, Stand 15.07.2025)
- Genauere Antwortmuster-Tabelle als Supplement S4 der Entwicklungspublikation (Edelen et al., *Qual Life Res* 2025;34(1):3–15, [doi:10.1007/s11136-023-03597-6](https://doi.org/10.1007/s11136-023-03597-6), Open Access)
- Referenzimplementierung des PROPr in R, SAS, Stata und Python: [github.com/janelhanmer/PROPr](https://github.com/janelhanmer/PROPr)

Zwei Fallstricke für eine spätere Implementierung: Bei **fehlenden Antworten** ist die Summenscore-Tabelle laut Manual ausdrücklich unzulässig. Und die **Umpolung** folgt nicht der Formulierungsrichtung — *Social Roles* ist trotz negativer Itemformulierung umzupolen, *Cognitive Function* trotz positiver Formulierung nicht; maßgeblich sind die offiziellen Antwort-Codewerte.

<a name="propr"></a>

### Artefakt: PROPr als ObservationDefinition

Für den PROPr ist in PCOR-MII eine Score-Definition angelegt: [**PcorObsDefProprUtility**](ObservationDefinition-PcorObsDefProprUtility.html). Sie konformiert gegen das `mii-pr-pro-score-blueprint` des MII-PRO-Moduls und hält Wertebereich (−0,022 bis 1,0), Einheit, Nachkommastellen und die Scoring-Richtung fest — höhere Werte bedeuten bessere Gesundheit, anders als bei den meisten Belastungs-Scores.

Sie **definiert** den Score, sie **berechnet** ihn nicht: Das multiplikative Utility-Modell liegt als Referenzimplementierung in R, SAS, Stata und Python vor ([github.com/janelhanmer/PROPr](https://github.com/janelhanmer/PROPr)). Das folgt der MDR-Abgrenzung aus [ADR-004](Designentscheidungen.html).

Da PROPr weder in LOINC noch in SNOMED CT noch im MII-Score-Katalog einen Code hat (geprüft 2026-09-29), trägt die Definition den Code `promis-propr-utility` aus dem lokalen [`pcor-score-catalogue`](CodeSystem-pcor-score-catalogue.html). Das ist profilkonform: Das Blueprint bindet den MII-Katalog nicht per ValueSet, sondern als Slice über `coding.system`, und das Slicing ist **offen** — Codings anderer Systeme sind ausdrücklich vorgesehen (siehe [ADR-004](Designentscheidungen.html)). Migrierbar bleibt es ebenfalls: Ein künftiger MII-Code wird als **zusätzliches** `code.coding` ergänzt, nicht als Ersatz.

**Die Zuständigkeit liegt gleichwohl upstream.** PROPr ist PROMIS-spezifisch, und die PROMIS-Artefakte pflegt das MII-PRO-Modul. Dort wären nachzuziehen: der Code `promis-propr-utility` im Score-Katalog, eine `mii-obsdef-pro-score-promis-propr-utility` nach dem Muster des EQ-5D-5L-Index und ein Verweis vom PROMIS-16-Questionnaire auf den Score. Der lokale Code trägt bereits denselben Namen, damit die Ergänzung ein reines Hinzufügen bleibt. Was hier steht, ist eine arbeitsfähige Vorwegnahme für die Erprobung.

**Stand 2026-09-29: keiner der beiden Scores ist verfügbar.** Die frühere Ankündigung, beide Varianten würden im MII-PRO-Modul v2026.5.0 als CQL Library `mii-lib-promis-16` implementiert, hat sich nicht erfüllt. Auch in der aktuellen Abhängigkeit 2026.7.0 existiert upstream **ausschließlich der Questionnaire** — keine `ObservationDefinition`, keine CQL Library, keine Score-Codes im `mii-cs-pro-score-catalogue` (zum Vergleich: PROMIS-29 hat dort acht T-Score-Codes). Der Questionnaire setzt `calculatable` ausdrücklich auf `false` mit der Begründung, der Pattern-basierte T-Score-Lookup (Supplement S4 der Entwicklungspublikation) werde an eine CQL Library delegiert — laut Beschreibung dort inzwischen **Roadmap 2027**.

Für PCOR-MII heißt das: PROMIS-16 ist als **Datenerfassungsinstrument** nutzbar, die Score-Berechnung muss extern erfolgen. Score-`Observation`s können hier auch nicht ersatzweise modelliert werden — nach [ADR-004](Designentscheidungen.html) stammen Score-Codes aus dem MII-Score-Katalog, der für PROMIS-16 noch keine führt.

### Hinweise

- **Kein Schmerzintensitäts-Item.** Anders als PROMIS-29 (28 Domänen-Items + Global07 auf 0–10) enthält PROMIS-16 keine numerische Schmerzintensität — die Schmerzdomäne ist allein über *Pain Interference* abgedeckt.
- Item-Überlapp mit PROMIS-29: Laut Hanmer et al. 2025 teilen sich PROMIS-16 und PROMIS-29+2 **11 der 16 Items**. Die zwei Cognitive-Function-Items sind im PROMIS-29 nicht enthalten — im PROMIS-29+2 dagegen schon, dort sind sie genau das „+2".
- Bei kombinierter Erfassung von PROMIS-29 und PROMIS-16 in einer Studie sollten die überlappenden Items nicht doppelt erhoben werden — eine spätere Item-basierte Score-Berechnung (geplant 2027 im MII PRO-Modul) wird hier mehr Flexibilität bringen.

### Beispiel-QuestionnaireResponse

[**`pcor-mii-exa-promis-16-response`**](QuestionnaireResponse-pcor-mii-exa-promis-16-response.html) — vollständige Antwort eines hypothetischen Patienten über alle 8 Domänen (inkl. Cognitive Function), konform zum [`MII PR PRO QuestionnaireResponse`-Profil](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.4.1) (`meta.profile`: `mii-pr-pro-questionnaire-response|2026.4.1`).

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
