# PCOR-MII Implementation Guide

FHIR R4 Implementation Guide für **patientenzentrierte Outcomes (PCOR)** im Kontext der
[Medizininformatik-Initiative (MII)](https://www.medizininformatik-initiative.de/). Der IG
stellt die im PCOR-MII-Projekt benötigten **FHIR Questionnaires** bereit und erklärt ihre Anwendung.

- **Veröffentlichter IG:** https://bih-cei.github.io/PCOR-MII/
- **Betreuung:** [BIH – Core Unit eHealth & Interoperability (CEI)](https://www.bihealth.org/) an der [Charité](https://www.charite.de/)
- **Lizenz:** CC-BY-4.0 · **FHIR-Version:** 4.0.1 (R4) · **Status:** draft (v0.1.0)

> **Aktueller Stand (2026-06-04):** Grundgerüst steht und ist live deployed. Die konkreten
> Questionnaires werden noch nicht geliefert — wir warten auf die Festlegung, **welche** Fragebögen
> aus dem MII-PRO-Modul übernommen werden. Siehe [docs/decisions.md](docs/decisions.md).

## Questionnaire-Strategie

Die Questionnaires werden **nicht** neu geschrieben, sondern aus dem bereits spezifizierten
**MII-PRO-Modul** übernommen:

| | |
|---|---|
| Paket | `de.medizininformatikinitiative.kerndatensatz.pros` |
| Version | 2026.3.0 (FHIR 4.0.1) |
| IG | https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_PRO/ |

Sobald die Auswahl feststeht, wird das Modul als Dependency in `sushi-config.yaml` eingetragen und
die benötigten Fragebögen entweder direkt referenziert oder per `Questionnaire.derivedFrom`
abgeleitet. Details und Begründung in [docs/decisions.md](docs/decisions.md).

Die fachliche Auswahl-/Mapping-Referenz ist die Datei `MASTER_3EntitiesOverview.xlsx` (liegt eine
Ebene oberhalb dieses Repos, nicht eingecheckt) — ein PRO-Daten-Dictionary über die Entitäten
PSS (Persistent Somatic Syndrome), AN (Anorexia Nervosa) und NTx (Nierentransplantation).

## Projektstruktur

```
input/
├── fsh/                     # FHIR Shorthand (SUSHI)
│   ├── Aliases.fsh
│   └── Questionnaires/      # PcorExampleQuestionnaire (Platzhalter/Vorlage)
├── pagecontent/             # Narrative Seiten (Default-Sprache: Deutsch)
│   ├── index.md
│   ├── Questionnaires.md
│   ├── Implementation.md
│   └── Release-Notes.md
├── translations/en/         # Englische Übersetzungen (gleiche Dateinamen)
├── includes/                # BIH-Template (fragment-css/-header, ...)
└── images/                  # BIH- und Charité-Logo
sushi-config.yaml            # IG-Konfiguration (id, canonical, i18n, menu, pages)
package-list.json            # Versionshistorie (für Publikation)
ig.ini                       # Template-Bindung (fhir2.base.template#current)
.github/workflows/buildIG.yml  # CI/CD → GitHub Pages
```

## Mehrsprachigkeit

Standardsprache **Deutsch**, **Englisch** als Übersetzung (Sprach-Switcher im Header).
Konfiguration in `sushi-config.yaml`:

```yaml
parameters:
  i18n-default-lang: de
  i18n-lang: [ en ]
  translation-sources: [ input/translations/en ]
```

Übersetzte Seiten liegen dateinamensgleich unter `input/translations/en/pagecontent/`. Fehlende
Übersetzungen fallen automatisch auf die deutsche Default-Version zurück. Details:
[input/translations/README.md](input/translations/README.md).

## Lokaler Build

Voraussetzungen: Node.js, Java 17+, [SUSHI](https://fshschool.org/) (`npm install -g fsh-sushi`).

```bash
# 1. FSH validieren / FHIR-Ressourcen erzeugen (schnell)
sushi .

# 2. Vollständigen IG bauen (lädt einmalig den IG-Publisher ~100 MB)
./_updatePublisher.sh -y
./_build.sh -y
# Ergebnis: output/index.html
```

## CI/CD

Push auf `main` (oder `development`) triggert `.github/workflows/buildIG.yml`: SUSHI-Build →
IG-Publisher → Deploy auf GitHub Pages. Pages-Quelle = „GitHub Actions" (Repo ist öffentlich).

## Kontakt

- Technisch / inhaltlich: thimo-andre.hoelter[at]charite.de
- [GitHub Issues](https://github.com/BIH-CEI/PCOR-MII/issues)
