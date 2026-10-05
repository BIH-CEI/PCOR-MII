### Versionierung

Dieser IG folgt [Semantic Versioning 2.0.0](https://semver.org/):

- **MAJOR** — inkompatible Änderungen an normativem Inhalt (Item-Struktur, `linkId`s, Terminologie-Bindungen)
- **MINOR** — neue Questionnaires, Items, Beispiele oder abwärtskompatible Verbesserungen
- **PATCH** — Korrekturen von Fehlern in normativem Inhalt (falsche Codes, fehlerhafte Constraints)

Versionen `0.x.y` kennzeichnen die frühe Entwicklung — die Spezifikation ist noch nicht stabil. Version `1.0.0` markiert das erste stabile Release nach fachlicher Abstimmung und formaler Veröffentlichung.

Jede Änderung ist einer der folgenden Kategorien zugeordnet:

- **`feature`** — neuer Inhalt (Questionnaires, Items, ValueSets, Beispiele)
- **`improve`** — Verfeinerung oder Erweiterung bestehenden normativen Inhalts
- **`fix`** — Korrektur von Fehlern in normativem Inhalt
- **`documentation`** — Dokumentationsänderungen ohne Auswirkung auf normative Aspekte

---

### Unveröffentlicht

**`feature`** Neuer Questionnaire `PROMISGH` mit den PROMIS-Global-Health-Items Global01 `61577-3` und Global02 `61578-1` sowie ValueSet `promis-global-skala-5-vs` auf Basis der Answerlist `LL4280-5`. Übergangslösung bis zur Aufnahme der vollständigen 10-Item-Skala `85524-7` ins MII-PRO-Modul. Global07 ist über PROMIS-29 abgedeckt

**`documentation`** PROMIS-Seite um einen Abschnitt zu PROMIS Global Health erweitert mit Item-Tabelle, Antwortskala, Übergangscharakter und Abgrenzung zu Global07

**`feature`** ISiK-Formularprofile mit neuer Abhängigkeit `de.gematik.isik 5.1.1`. `DEM`, `MHI`, `GSLTPAQ`, `OPD-SFK` und `WAI` sind als `ISiKFormularDefinition` ausgewiesen, `DEMResponse` und `MHIResponse` als `ISiKFormularDaten`

**`improve`** `meta.profile` durchgehend versionsgepinnt als `url|version`, Beispiele eingeschlossen. Profil-Canonicals werden zentral in `Aliases.fsh` gepflegt

**`improve`** SDC-Profil aus `meta.profile` der Nicht-PRO-Fragebögen entfernt. SDC bleibt Abhängigkeit, die verwendeten SDC-Extensions sind unberührt

**`fix`** Beispielantworten auf `mii-pr-pro-questionnaire-response|2026.6.0` gezogen. Die vorherige Version `2026.4.1` war für den Validator nicht auflösbar und blieb damit ungeprüft

**`fix`** `PcorExampleQuestionnaire` profilkonform gemacht durch `capabilities`-Extension und `code`. Die Verstöße waren zuvor durch den unauflösbaren Profil-Pin verdeckt

**`improve`** MII-PRO-Abhängigkeit auf 2026.6.0 angehoben (rein additiv gegenüber 2026.5.2: neue Questionnaires EURONET-SOMA, ISR-Z, PC-PTSD, SCOFF, SSD-12, WI-7 samt Score-`ObservationDefinition`s)

**`feature`** OPD-SFK, WAI und GSLTPAQ als PCOR-MII-eigene Instrumente (nicht im MII-PRO-Modul enthalten)

### v0.2.0 (2026-08-05) — PHQ-Familie

**`improve`** MII-PRO-Abhängigkeit auf 2026.5.2 angehoben (PHQ-9 neues `linkId`-Schema, PHQ-15, Migrations-ConceptMap)

**`feature`** Neue Seite PHQ-9

**`feature`** Neue PHQ-Übersicht mit `linkId`-Migrationstabelle (2026.4.x → ab 2026.5.0)

**`documentation`** PHQ-15 und PHQ-9 als schlanke Referenzseiten (Details upstream statt dupliziert); toten Simplifier-Link entfernt

**`fix`** MHI: falschen Hinweis „GIPS13 nicht in PSS" entfernt — GIPS13 ist in allen drei Szenarien enthalten

### v0.1.0 (2026-06-04) — Initial Draft

**`feature`** Erstaufbau des PCOR-MII Implementation Guide mit BIH-Corporate-Design-Template, Mehrsprachigkeit (Deutsch als Standardsprache, Englisch als Übersetzung) und CI/CD-Pipeline (GitHub Actions → GitHub Pages)

**`feature`** Beispiel-Questionnaire `PcorExampleQuestionnaire` als Vorlage (Item-Typen `group`, `choice`, `date`, `string`)

**`documentation`** Seitenstruktur: Startseite, Fragebögen, Anwendung (QuestionnaireResponse, Population, Extraktion), Release Notes

**`documentation`** CC-BY-4.0-Lizenz
