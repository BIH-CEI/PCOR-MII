# PROMIS-33 Profile v2.1 - PCOR-MII Implementation Guide v0.1.0

## PROMIS-33 Profile v2.1

PROMIS®-33 Profile v2.1 ergänzt PROMIS-29 um die Cognitive-Function-Domäne. In PCOR-MII wird **keine eigenständige PROMIS-33-Implementierung** vorgesehen — stattdessen wird die PROMIS-33-Abdeckung durch die getrennte Verwendung der zwei bereits verfügbaren Instrumente erreicht:

* [**PROMIS-29 Profile v2.1**](PROMIS-29.md) — deckt die 7 Domänen Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Social Function, Pain Interference + Schmerzintensität ab
* [**PROMIS Cognitive Function SF 4a**](PROMIS-Cognitive-Function.md) — deckt die Cognitive-Function-Domäne ab

Diese Kombination entspricht funktional dem PROMIS-33-Profile (PROMIS-29 + 4 Cognitive-Function-Items) und nutzt die bereits im MII PRO-Modul gepflegten Items und Scoring-Logiken. Eine separate FHIR-Repräsentation von PROMIS-33 ist daher nicht erforderlich.

### Beispiele (PROMIS-33-Abdeckung als zwei QuestionnaireResponses)

Für die [Pilot-Kohorte "50 First Patients"](Implementation.md) wird die PROMIS-33-Abdeckung als **zwei separate QuestionnaireResponses** ausgetauscht, beide konform zum [`MII PR PRO QuestionnaireResponse`-Profil](https://simplifier.net/guide/mii-pro-v2026-de):

* [**`pcor-mii-exa-promis-29-response`**](QuestionnaireResponse-pcor-mii-exa-promis-29-response.md) — 29 Items (7 Domänen + Schmerzintensität)
* [**`pcor-mii-exa-promis-cognitive-function-response`**](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.md) — 4 Cognitive-Function-Items

Beide referenzieren die jeweiligen Questionnaire-Canonicals aus dem MII PRO-Modul v2026.4.1 und sind über ihre `meta.profile` für Validierung gegen das PRO-QR-Profil markiert.

