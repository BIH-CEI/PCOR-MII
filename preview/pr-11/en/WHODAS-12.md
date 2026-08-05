# WHODAS 2.0 (12-Item) - PCOR-MII Implementation Guide v0.2.0

## WHODAS 2.0 (12-Item)

**Translated page. Original language: German.**

Der **WHODAS 2.0** (WHO Disability Assessment Schedule 2.0) ist das generische Instrument der WHO zur Erfassung von **Funktionsfähigkeit und Beeinträchtigung** über alle Erkrankungen hinweg, methodisch an der ICF ausgerichtet. PCOR-MII nutzt die **12-Item-Kurzform (Selbstauskunft)**: 12 Items über sechs ICF-Domänen (Kognition, Mobilität, Selbstversorgung, Umgang mit anderen Menschen, Lebensaktivitäten, Partizipation), 30-Tage-Recall, fünfstufige Skala (0–4).

### Verwendung in PCOR-MII

PCOR-MII referenziert den im MII PRO-Modul gepflegten Questionnaire — kein eigener Nachbau. PCOR-MII führt WHODAS-12 unter der Domäne „Generic Health" gemeinsam mit PROMIS Global Health; eine Konversion des Summenscores auf die PROMIS Generic/Global Health Scale ist als Folgearbeit vorgesehen.

### Canonical

`https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12`

### Quellen

* IG-Doku-Seite: [WHODAS 2.0 im MII PRO IG (Simplifier)](https://simplifier.net/guide/modul-pro-v2026/MIIIGModulPRO/PRO-Bibliothek/WHODAS-2.0.page.md?version=current)
* Raw-Resource: [MII PRO Package (Simplifier)](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.5.0)
* Offizielle Quelle: WHO. **Measuring Health and Disability: Manual for WHODAS 2.0**. Genf: WHO; 2010. ISBN 9789241547598.
* Deutsche Wortlaute: validiertes PCOR-MII Item Level Dictionary

### Eigenschaften

* **Items**: 12 (5-Punkt-Skala 0–4), 6 ICF-Domänen
* **Primärsprache**: Englisch mit deutschen Translations/Designations
* **Antwortmodellierung**: `answerValueSet` (`mii-vs-pro-whodas-12-answer-list`) mit ordinalValue-Gewichten
* **Scoring**: einfacher Summenscore 0–48 (WHO „simple scoring"), höher = stärkere Beeinträchtigung (Einschränkungsscore); IRT-basiertes 0–100-Scoring als Folgearbeit
* **Capabilities**: displayable, collectable, calculatable, extractable, domain-aligned

### Lizenz

> **Wichtig:** WHODAS 2.0 ist **© World Health Organization 2010** (ISBN 9789241547598).

* WHO gestattet **Kliniker:innen die Reproduktion zur Nutzung bei eigenen Patient:innen kostenfrei und ohne gesonderte Genehmigung**.
* **Jede andere Nutzung — insbesondere die Einbindung in elektronische Datenerfassungssysteme — erfordert eine WHO-Lizenzvereinbarung** (für nicht-kommerzielle Nutzer kostenlos, Online-Nutzungsvereinbarung über den WHO-Classifications-Prozess).
* **Übersetzungen** erfordern zusätzlich die Genehmigung der WHO.
* Nur die MII-eigenen FHIR-Inhalte (Profile, Codes, Scoring) stehen unter CC0; der WHODAS-2.0-Itemtext bleibt © WHO. Die Bedingungen sind maschinenlesbar im `copyright`-Element hinterlegt.

### Hinweise

* Der Score wird als `ObservationDefinition` (`mii-obsdef-pro-score-whodas12-simple-sum`, 0–48, SNOMED `715823002`) abgebildet.
* Die Simplifier-Links lösen auf, sobald **v2026.5.0** des MII PRO-Moduls nach Simplifier publiziert ist (WHODAS-12 ist ab 2026.5.0 enthalten); die Canonical-URL ist stabil.

### Beispiel-QuestionnaireResponse

Das MII PRO-Modul liefert ein vollständiges QR-Beispiel mit — [`mii-exa-pro-whodas12-response-01`](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.5.0) (Upstream, Simplifier).

