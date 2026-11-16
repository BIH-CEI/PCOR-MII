# PHQ-D Panik-Block (Angst-/Panikattacken) - PCOR-MII Implementation Guide v0.9.0

## PHQ-D Panik-Block (Angst-/Panikattacken)

Der **PHQ-D Panik-Block** umfasst die vier Ja/Nein-Screeningfragen zu **Angst- und Panikattacken** aus dem Gesundheitsfragebogen für Patienten (PHQ-D, Block 3a–3d; im Brief PHQ Block 2a–2d): eine Angstattacke in den letzten vier Wochen, ein früheres Auftreten, das unerwartete Auftreten der Anfälle sowie Beeinträchtigung bzw. Angst vor erneuten Anfällen.

### Verwendung in PCOR-MII

Der Block wird nur in [PSS](PSS.md) erhoben (Item Level Dictionary, Kategorie MHA, Instrument „PHQ-D", Variablen `phq3a`–`phq3d`). Das MII-PRO-Modul führt dafür **kein Artefakt** — anders als für PHQ-9, PHQ-15 und GAD-7, die PCOR-MII referenziert. Deshalb pflegt PCOR-MII den Block selbst ([ADR-012](Designentscheidungen.md)); eine spätere Übernahme ins Modul würde diese Instanz durch die Upstream-Referenz ersetzen.

> **Abgrenzung:** Der Panik-Block ist etwas anderes als [GAD-7](GAD-7.md), GAD-2 oder PHQ-4 (Häufigkeit von Angstsymptomen über zwei Wochen). Er ist Block 3 des PHQ-D mit 4-Wochen-Recall und Ja/Nein-Format — siehe [PHQ-Übersicht](PHQ.md).

### Artefakte

* **Fragebogen:** [Questionnaire-PHQPANIK](Questionnaire-PHQPANIK.md)
* **Beispielantwort:** [QuestionnaireResponse-PHQPANIKResponse](QuestionnaireResponse-PHQPANIKResponse.md) (PSS-Beispielpatient, Screening-Termin)
* **Antwortoptionen:** Ja/Nein als SNOMED CT `373066001`/`373067005` inline ([ADR-013](Designentscheidungen.md)), wie im MII-PRO-Modul

### Canonical

`https://bih-cei.github.io/PCOR-MII/Questionnaire/PHQPANIK`

### Items

| | | | |
| :--- | :--- | :--- | :--- |
| `phq-phq3a` | `phq3a` | In the last 4 weeks, have you had an anxiety attack — suddenly feeling fear or panic? | Hatten Sie in den letzten 4 Wochen eine Angstattacke (plötzliches Gefühl der Furcht oder Panik?) |
| `phq-phq3b` | `phq3b` | Has this ever happened before? | Ist dies bereits früher einmal vorgekommen? |
| `phq-phq3c` | `phq3c` | Do some of these attacks come suddenly out of the blue — that is, in situations where you don't expect to be nervous or uncomfortable? | Treten manche dieser Anfälle völlig unerwartet auf - d.h. in Situationen, in denen Sie nicht damit rechnen, dass Sie angespannt oder beunruhigt reagieren? |
| `phq-phq3d` | `phq3d` | Do these attacks bother you a lot or are you worried about having another attack? | Empfinden Sie diese Anfälle als stark beeinträchtigend, und/oder haben Sie Angst vor erneuten Anfällen? |

* **Sprache:** Englisch primär (Original Spitzer et al. 1999; Wortlaut gegen das Brief-PHQ-Formular von Pfizer verifiziert), Deutsch als `translation` (PHQ-D, Löwe et al. 2002, wortgleich aus dem Item Level Dictionary).
* **`linkId`s im PHQ-D-Namespace** (`phq-phq3a`–`phq-phq3d`) statt der Dictionary-Variablen — die bewusste Ausnahme für die PHQ-Familie (ADR-012), damit eine Übernahme ins Modul ohne Migration auskommt. Die Dictionary-Variable steht in `item.code`.
* **Sprungregel:** Das Formular verweist bei „Nein" in 3a auf die nächste Frage; 3b–3d sind daher per `enableWhen` nur bei 3a = ja aktiv.

### Kein Score-Item

Der PHQ kennt für den Block keinen Summenwert, sondern den Algorithmus **Paniksyndrom = 3a–3d alle „ja" **und** mindestens 4 von 11 Symptomfragen 4a–4k „ja"**. Die Symptomliste wird in PCOR-MII nicht erhoben; ableitbar ist nur die Screening-Stufe (alle vier „ja" = Screening positiv). Das ist Auswertungslogik und nach [ADR-004](Designentscheidungen.md) nicht Gegenstand dieses IG.

### Terminologie

Für die Panik-Screeningitems des PHQ sind keine LOINC- oder SNOMED-CT-Codes bekannt (Terminologie-Suche in der Autorensitzung nicht verfügbar). `Questionnaire.code` trägt den lokalen Katalogcode `phq-panik`; ein späterer Code wird ergänzt, nicht ersetzt.

### Quellen

* Spitzer RL, Kroenke K, Williams JBW. Validation and utility of a self-report version of PRIME-MD: the PHQ primary care study. **JAMA** 1999;282(18):1737–1744. doi:10.1001/jama.282.18.1737
* Löwe B, Spitzer RL, Zipfel S, Herzog W. PHQ-D. Gesundheitsfragebogen für Patienten. Pfizer, Karlsruhe 2002.
* PHQ Instruction Manual (Pfizer): „Panic Syndrome if #3a-d are all 'YES' and 4 or more of #4a-k are 'YES'."

Hinweise zum Lebenszyklus von `Questionnaire` zu `QuestionnaireResponse` siehe [Anwendung](Implementation.md); alle Artefakte unter [Artefakte](artifacts.md).

