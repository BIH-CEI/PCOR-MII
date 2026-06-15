# PROMIS-16 Profile v2.1 (PROPr) - PCOR-MII Implementation Guide v0.1.0

## PROMIS-16 Profile v2.1 (PROPr)

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

