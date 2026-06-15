PROMIS®-33 Profile v2.1 ist die erweiterte Variante der PROMIS-Profile mit 33 Items über 8 Domänen (Physical Function, Anxiety, Depression, Fatigue, Sleep Disturbance, Ability to Participate in Social Roles and Activities, Pain Interference, **Cognitive Function**) plus Schmerzintensität. Gegenüber PROMIS-29 ergänzt PROMIS-33 vier Cognitive-Function-Items, behält die Item-Tiefe der anderen Domänen (jeweils 4 Items) bei.

> **Status in PCOR-MII**: geplant, noch nicht implementiert.
>
> Der zugehörige FHIR-Questionnaire ist im MII PRO-Modul aktuell **nicht** verfügbar. Die Implementierung ist als Nachfolge-Erweiterung zu PROMIS-29 vorgesehen, sobald PHO und PCOR-MII den finalen validierten deutschen Wording-Stand bereitstellen. Diese Seite dient zunächst als Platzhalter zur sichtbaren Kennzeichnung des geplanten Umfangs.

### Geplante Eigenschaften

- **Items**: 33 (PROMIS-29 Items + 4 zusätzliche Cognitive-Function-Items)
- **Primärsprache**: voraussichtlich Englisch mit deutscher `translation`-Extension (Konvention des MII PRO-Moduls)
- **Scoring**: Raw Score + T-Score je Domäne, analog PROMIS-29
- **Geplante Capabilities**: displayable, collectable, calculatable, extractable

### Bezug zu anderen PROMIS-Instrumenten

- **vs PROMIS-29**: identisch in 7 Domänen + Schmerzintensität, ergänzt um Cognitive Function (4 Items)
- **vs PROMIS-16**: vollständige (nicht ultrakurze) Variante mit denselben 8 Domänen
- **vs PROMIS Cognitive Function SF 4a**: integriert die Cognitive-Function-Items direkt im Multi-Domain-Profile statt als separate Short-Form

### Quellen

- PROMIS Health Organization Übersicht: [healthmeasures.net](https://www.healthmeasures.net/explore-measurement-systems/promis)
- MII PRO-Modul (für künftige Implementierung): [Simplifier-IG](https://simplifier.net/guide/mii-pro-v2026-de)
