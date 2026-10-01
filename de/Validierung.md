# Validierung - PCOR-MII Implementation Guide v0.3.0

## Validierung

Diese Seite beantwortet die Frage: **wie stelle ich sicher, dass meine Implementierung valide gegenüber den PRO- und PCOR-MII-Datendefinitionen ist?**

## Worum geht's beim Validieren?

Eine `QuestionnaireResponse` (oder ein FHIR-Bundle das sie enthält) muss drei Dinge erfüllen, um "valide" zu sein:

1. **Strukturell**dem[`MII PR PRO QuestionnaireResponse`-Profil](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0)entsprechen (Datentypen, Pflichtfelder, Element-Constraints)
1. Die**`linkId`s**müssen mit der Item-Struktur des referenzierten Questionnaire übereinstimmen
1. Jede**codierte Antwort**muss aus dem`answerValueSet`(bzw.`answerOption`) des jeweiligen Items stammen

```
flowchart TB
    QR["QuestionnaireResponse<br/>(zu validieren)"]
    Profile["meta.profile<br/>MII PR PRO QR"]
    Q["Questionnaire<br/>(z.B. mii-qst-pro-promis-16)"]
    VS["ValueSet<br/>(z.B. frequency-response-scale)"]
    CS["CodeSystem<br/>(LOINC)"]

    QR -->|"validiert gegen"| Profile
    QR -->|"questionnaire = canonical|version"| Q
    Q -->|"item.answerValueSet"| VS
    VS -->|"compose.include"| CS

    style QR fill:#e1f5ff
    style Profile fill:#fff4e1
    style Q fill:#fff4e1
    style VS fill:#e1ffe1
    style CS fill:#e1ffe1

```

Damit das funktioniert, muss der Validator alle vier Resource-Ebenen kennen — sprich das **MII PRO-Modul Package (2026.7.0)** + SDC + LOINC. Bei den unten gezeigten Wegen passiert das automatisch via `-ig`-Parameter bzw. via Container-Preload.

## Drei Wege zum validierten Bundle

### A. Container-$validate (schnellste Schleife beim Mapper-Entwickeln)

[PCOR-MII Container](Bereitstellung.md) starten und das Bundle per HTTP gegen `$validate` werfen:

```
curl -X POST http://localhost:8097/fhir/QuestionnaireResponse/\$validate \
  -H "Content-Type: application/fhir+json" \
  -d @my-questionnaire-response.json

```

Antwort ist ein `OperationOutcome` mit `issue`-Liste, severity-getaggt. Praktisch für: iterative Mapper-Entwicklung in der Shell, schnelle Roundtrips ohne Java-Setup.

### B. HL7 Validator CLI (für CI-Pipelines)

Der offizielle Java-Validator. Empfohlen wenn dein Build-System keine HTTP-Endpoints aufrufen soll.

```
# Einmaliger Download
curl -L "https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar" \
  -o ~/.fhir/validator_cli.jar

# Validieren
java -jar ~/.fhir/validator_cli.jar my-questionnaire-response.json \
  -version 4.0.1 \
  -ig de.medizininformatikinitiative.kerndatensatz.pros#2026.7.0 \
  -ig hl7.fhir.uv.sdc#3.0.0 \
  -profile https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response

```

Best für: GitHub-Actions/GitLab-CI-Steps, Pre-Commit-Hooks, Mass-Validation großer Datensätze.

### C. IG Publisher Build (automatisch in deinem IG)

Wenn du einen eigenen Implementation Guide baust, der PCOR-MII konsumiert: deklariere die Resources mit `meta.profile` — IG Publisher validiert dann beim Build automatisch und stoppt bei Errors. Output in `output/qa.html` und `output/qa.json`.

## Was du in deiner Implementierung sicherstellst

Praktische Checkliste für Mapper/ePRO-App/Empfänger-Server-Bestückung:

* **`meta.profile`** auf der QR gesetzt — `mii-pr-pro-questionnaire-response`, **bewusst ohne Versionspin**: Die Profilversion löst sich über die Paketabhängigkeit auf; ein Pin müsste bei jedem Dependency-Update in allen Bestandsdaten nachgezogen werden. Die **`questionnaire`-Referenz dagegen immer mit Version** (nächster Punkt) — dort hängt der Wortlaut dran
* **`questionnaire`-Referenz** mit Version — `…/mii-qst-pro-promis-16|2026.7.0`
* **`linkId`s** der Answer-Items matchen **exakt** die im Questionnaire definierten linkIds
* **Codierte Antworten** mit System + Code aus dem im Questionnaire definierten `answerValueSet` (für PROMIS-VS sind die LA-Codes inline in der VS dokumentiert — siehe [PROMIS-16](PROMIS-16.md) Item-Tabellen)
* **`status = completed`** (bzw. `in-progress`/`amended` je nach Lebenszyklus)
* **`subject`-Referenz** auf den Patienten
* **`authored`** Timestamp gesetzt
* **`text.div`** narrative mit `xml:lang`/`lang` wenn `Resource.language` gesetzt (siehe Best-Practice-Block unten)

## Severity-Interpretation

| | | |
| :--- | :--- | :--- |
| `error` | FHIR-Konformanz verletzt | ❌ Muss behoben werden |
| `warning` | FHIR-Best-Practice verletzt | ⚠️ Fall-by-Fall |
| `information`/`note` | Hinweis (z.B. Terminologie-Server konnte Code nicht auflösen) | ✓ meist OK |

### Häufige Warnings — wann ignorieren, wann nicht

| | |
| :--- | :--- |
| `dom-6: A resource should have narrative for robust management` | `text.div`-Element ergänzen (FHIR Best Practice). Bei reinen Maschine-zu-Maschine-Bundles oft ignorierbar |
| `Die Ressource hat eine language, aber das XHTML hat kein lang Tag` | wenn`Resource.language`gesetzt, dann auch`xml:lang="de-DE" lang="de-DE"`am`<div>`-Element |
| `Wrong Display Name 'X' for http://loinc.org#LAxxx-y` | Display weicht von der LOINC-Bezeichnung ab (z.B. deutsche Übersetzung). Bewusst akzeptabel, bei strict-display-Servern via Setting deaktivierbar |
| `Canonical URL ... kann nicht aufgelöst werden` | Server hat den referenzierten Questionnaire nicht — entweder`-ig`-Parameter ergänzen oder Server-Bestückung prüfen (siehe[Bereitstellung](Bereitstellung.md)) |

## Validierte Beispiele als Referenz

Der Beispielbestand ist seit dem 01.10.2026 als **drei Use-Case-Bundles** organisiert — je Erhebungstermin ein `collection`-Bundle mit Patient und allen Antworten des Termins, alle drei mit **0 Errors** validiert:

| | | |
| :--- | :--- | :--- |
| [AN — Initial](Bundle-pcor-mii-exa-bundle-an-initial.md) | 18.06.2026 | 13 |
| [AN — Monitoring](Bundle-pcor-mii-exa-bundle-an-monitoring.md) | 30.07.2026 | 10 |
| [PSS — Screening](Bundle-pcor-mii-exa-bundle-pss-screening.md) | 25.06.2026 | 20 |

Jede enthaltene Antwort existiert zusätzlich als eigenständiges Beispiel (vollständige Liste: [Fragebogen-Bibliothek](Fragebogen-Bibliothek.md)); die Bundles entstehen daraus mit `scripts/build-example-bundles.py`. Dazu der generische [`pcor-mii-exa-example-response`](QuestionnaireResponse-pcor-mii-exa-example-response.md) für den Beispiel-Questionnaire.

Die Beispiele sind mit **0 Errors** geprüft, aber nicht warnungsfrei — die verbleibenden Warnungsklassen sind bekannt und akzeptiert:

* `dom-6` (fehlende Narrative) auf allen Beispielantworten — steht oben in der Tabelle als ignorierbar
* Profilreferenz auf `mii-pr-pro-questionnaire-response` **„nicht geprüft, da unbekannt"**, wenn ohne das MII-PRO-Paket validiert wird — mit `-ig de.medizininformatikinitiative.kerndatensatz.pros#2026.7.0` verschwindet sie
* Display-/Terminologie-Hinweise bei `-tx n/a` — der Validator kann ohne Terminologieserver BCP-47 und LOINC-Displays nicht expandieren

**Ein echter Fund beim Prüfen:** Die ERQ-6-Beispielantwort hatte ihre Items zunächst nach Subskala gruppiert (erst die drei Neubewertungs-, dann die drei Unterdrückungs-Items). Der Validator lehnt das ab — **„Struktureller Fehler: Elemente in falscher Reihenfolge"**. Eine `QuestionnaireResponse` muss ihre Items in der **Reihenfolge des Questionnaire** führen; die fachliche Gruppierung gehört in Kommentare, nicht in die Anordnung. SUSHI fängt das nicht, es fällt erst in der Validierung auf.

Reproduzieren (deckt auch die Bundles ab):

```
sushi . && python3 scripts/build-example-bundles.py
for f in input/examples/QuestionnaireResponse-*.json input/examples/Bundle-*.json fsh-generated/resources/QuestionnaireResponse-*.json; do
  java -jar ~/.fhir/validator_cli.jar "$f" \
    -version 4.0.1 \
    -ig de.medizininformatikinitiative.kerndatensatz.pros#2026.7.0 \
    -ig hl7.fhir.uv.sdc#3.0.0 \
    -ig fsh-generated/resources \
    -profile https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
done

```

## Wozu Validierung in der Pipeline?

Validierung prüft strukturelle und Code-Bindungs-Konformanz, **nicht** klinische/inhaltliche Plausibilität. Sie schützt aber sehr zuverlässig vor den häufigsten Mapping-Fehlern: falsche LA-Codes (z.B. Frequency- vs Intensity-Skala verwechselt), fehlende Pflicht-Items, Versions-Mismatch zwischen `questionnaire`-Referenz und Server-Stand.

Für den [50-First-Patients Pilot](Implementation.md): **jeder Sender validiert lokal bevor er sendet**, jeder Empfänger validiert nochmal beim Eingang. Das fängt 95% der Drift-Probleme bei wenig Aufwand.

