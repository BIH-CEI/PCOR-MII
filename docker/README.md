# PCOR-MII FHIR Server (Docker)

Pre-built HAPI FHIR Server mit **MII PRO-Modul 2026.4.1** und **PCOR-MII** vorinstalliert. Kein Cold-Start, kein Online-Package-Download zur Laufzeit.

## Quick Start (lokal)

```bash
cd docker/
docker compose up --build
```

Dann erreichbar unter:
- **Web UI**: <http://localhost:8080/>
- **FHIR API**: <http://localhost:8080/fhir>
- **CapabilityStatement**: <http://localhost:8080/fhir/metadata>

## Was ist drin?

| Package | Version | Quelle |
|---------|---------|--------|
| `de.medizininformatikinitiative.kerndatensatz.pros` | 2026.4.1 | Simplifier (Build-Time-Download) |
| `hl7.fhir.uv.sdc` | 3.0.0 | über MII PRO als Dependency |
| `pcor-mii` | 0.1.0 | aus diesem Repo (FSH → SUSHI → in den Container) |

Konkrete Ressourcen ad-hoc anzeigen:
- `GET /fhir/Questionnaire?_summary=true` — alle Questionnaires
- `GET /fhir/Questionnaire?url=https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16` — direkter Canonical-Lookup
- `GET /fhir/ValueSet/mii-vs-pro-promis-frequency-response-scale/$expand` — VS expandieren

## Image-Build (CI)

Bei jedem Push auf `main` wird das Image gebaut und nach GitHub Container Registry gepushed:
- `ghcr.io/bih-cei/pcor-mii-fhir-server:latest` (main)
- `ghcr.io/bih-cei/pcor-mii-fhir-server:vX.Y.Z` (bei Tags)
- `ghcr.io/bih-cei/pcor-mii-fhir-server:main-<sha>` (jeder main-Commit)

## Validierung gegen den laufenden Server

```bash
curl -X POST http://localhost:8080/fhir/QuestionnaireResponse/\$validate \
  -H "Content-Type: application/fhir+json" \
  -d @../input/examples/QuestionnaireResponse-pcor-mii-exa-promis-16-response.json
```

Erwartet: `OperationOutcome` mit issue-severity `information` (alle drei PCOR-MII QR-Beispiele validieren clean gegen das PRO-QR-Profil).

## Anpassen / Erweitern

### MII PRO Version bumpen

`docker-compose.yml`: `args.MII_PRO_VERSION` setzen + neu builden.

### HAPI-Konfig

`application.yaml` editieren. Konfigurations-Optionen siehe [HAPI FHIR Starter Reference](https://github.com/hapifhir/hapi-fhir-jpaserver-starter).

### Persistenz statt H2

In `application.yaml` einen Postgres/MySQL-Datasource-Block ergänzen und entsprechenden Service in `docker-compose.yml` aufnehmen.

## Limitations

- **Kein Auth** — Pilot-Setup. Für produktive Daten muss mindestens HTTPS + Basic Auth oder OIDC ergänzt werden.
- **H2 in-memory DB** — Restarts löschen alle Daten. Für Persistence externe DB anbinden.
- **Single-Version-Lookup** — siehe [Bereitstellung](../input/pagecontent/Bereitstellung.md) für die Diskussion zu Multi-Version-Canonical-Resolution.

## Verhältnis zu fhir-sdc-questionnaire-service

[BIH-CEI/fhir-sdc-questionnaire-service](https://github.com/BIH-CEI/fhir-sdc-questionnaire-service) bietet eine parallele HAPI-Image-Variante mit MII PRO (aktuell 2026.3.0). Wir haben uns hier bewusst für einen **eigenständigen Build von HAPI-Base** entschieden, um:

- die MII PRO Version unabhängig pinnen zu können (2026.4.1)
- PCOR-MII direkt aus dem gleichen Repo ohne externe Package-Veröffentlichung mit reinzuziehen
- Spec, IG-Doku und Deployable im gleichen Commit zu halten
