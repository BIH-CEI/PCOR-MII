Der **PHQ-9** (Patient Health Questionnaire-9) ist das etablierte Screening- und Verlaufsinstrument für die Schwere einer **depressiven Symptomatik** (neun Items, zwei Wochen Recall, vierstufige Skala 0–3).

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. Er kommt über die Paket-Abhängigkeit `de.medizininformatikinitiative.kerndatensatz.pros` (2026.7.0) mit; der Score wird als `Observation` abgelegt (LOINC `44261-6`, Summenscore 0–27). Die vollständige Spezifikation (Items, Antwortoptionen, Scoring-Logik, abgeleiteter PROMIS-Depression-T-Score) ist einmal im MII PRO-Modul gepflegt und wird hier bewusst nicht dupliziert: [PHQ-9 im MII PRO IG](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_PRO/MIIIGModulPRO-PRO-Bibliothek-PHQ-9.html).

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9`

### Hinweise

- **Item 9 (Suizidalität)** erfragt Gedanken, „lieber tot zu sein oder sich Leid zuzufügen". Eine positive Antwort ist klinisch relevant und erfordert im Anwendungskontext ein definiertes Vorgehen — nicht als reines Skalen-Item behandeln.
- **Alt-Daten:** PHQ-9-Antworten von vor 2026.5.0 tragen ein älteres Item-`linkId`-Schema und passen nicht mehr zum aktuellen Questionnaire. Die Migrationstabelle steht auf der [PHQ-Übersicht](PHQ.html).
- **PHQ-8:** Alle acht PHQ-8-Items sind identisch im PHQ-9 enthalten (`phq-phq2a…h`) — für eine PHQ-8-Erhebung kann daher die PHQ-9-Definition genutzt werden; es entfällt lediglich das Suizid-Item `phq-phq2i`.

### Beispiel-QuestionnaireResponse

Das MII PRO-Modul liefert ein vollständiges QR-Beispiel mit — [`mii-exa-pro-phq-9-response`](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0) (Upstream, Simplifier), sowie das Bundle `mii-exa-pro-phq-9-bundle` inklusive berechneter Score-`Observation`. Die Pflege erfolgt zentral im MII PRO-Modul und wird hier bewusst nicht dupliziert.

### Quellen

- [PHQ-9 im MII PRO IG (Doku)](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_PRO/MIIIGModulPRO-PRO-Bibliothek-PHQ-9.html) · [MII PRO Package 2026.7.0 (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0)
- Lizenz: PHQ / PHQ-9 © Pfizer Inc. — frei verfügbar (public domain), keine Genehmigung erforderlich. Deutsche Fassung: PHQ-D (Löwe, Spitzer, Zipfel & Herzog 2002).
- Referenz: Kroenke K, Spitzer RL, Williams JBW. The PHQ-9. *J Gen Intern Med.* 2001;16(9):606–613.
