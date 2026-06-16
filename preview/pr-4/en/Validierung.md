# Validierung - PCOR-MII Implementation Guide v0.1.0

## Validierung

**Translated page. Original language: German.**

Diese Seite beschreibt, wie `Questionnaire`s und `QuestionnaireResponse`s im PCOR-MII Kontext validiert werden können.

## Validierungs-Architektur

Ein `QuestionnaireResponse` ist nicht "alleine" validierbar — der Validator muss eine Auflösungskette durchlaufen, um zu wissen **gegen was** validiert wird:

```
flowchart TB
    QR["QuestionnaireResponse<br/>(zu validieren)"]
    Profile["meta.profile:<br/>MII PR PRO QR Profile"]
    Q["Questionnaire<br/>(z.B. mii-qst-pro-promis-16)"]
    VS["ValueSet<br/>(z.B. frequency-response-scale)"]
    CS["CodeSystem<br/>(LOINC)"]

    QR -->|"validiert gegen"| Profile
    QR -->|"questionnaire =<br/>canonical URL"| Q
    Q -->|"item.answerValueSet"| VS
    VS -->|"compose.include"| CS

    subgraph CLI ["Lokal: HL7 Validator CLI"]
        direction LR
        CLI_Cmd["fhir validate<br/>-profile ...<br/>-ig pros#2026.4.1"]
    end

    subgraph Server ["Lokal: PCOR-MII Container (port 8097)"]
        direction LR
        Server_Cmd["POST /fhir/QR/$validate"]
    end

    QR -.->|"Option 1"| CLI_Cmd
    QR -.->|"Option 2"| Server_Cmd

    style QR fill:#e1f5ff
    style Profile fill:#fff4e1
    style Q fill:#fff4e1
    style VS fill:#e1ffe1
    style CS fill:#e1ffe1

```

Beide Tools laden dieselben Quell-Definitionen (PRO-Modul-Package + SDC), kommen also zum **gleichen Ergebnis**. CLI ist gut für CI-Pipelines, Server-`$validate` für Run-Time-Checks beim Empfang.

## Was kann validiert werden?

| | |
| :--- | :--- |
| `QuestionnaireResponse` | (a) das[`MII PR PRO QuestionnaireResponse`-Profil](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/dev/)(Struktur-Constraints) und (b) das referenzierte`Questionnaire`(linkId-Treffer, Item-Typ-Konsistenz, codierte Antworten gegen die`answerValueSet`s) |
| `Questionnaire` | das[`MII PR PRO Questionnaire`-Profil](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/dev/)(SDC-konforme Struktur) |
| `Bundle`(Transaction/Batch) | Bundle-Struktur + jede einzelne Ressource gegen ihr deklariertes`meta.profile` |

## Tools

### FHIR Validator CLI (HL7)

Der offizielle Validator von HL7 (Java-basiert):

```
# Einmaliger Download
curl -L "https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar" \
  -o ~/.fhir/validator_cli.jar

# QR validieren gegen das PRO-QR-Profil
java -jar ~/.fhir/validator_cli.jar input/examples/QuestionnaireResponse-pcor-mii-exa-promis-16-response.json \
  -version 4.0.1 \
  -ig de.medizininformatikinitiative.kerndatensatz.pros#2026.4.1 \
  -ig hl7.fhir.uv.sdc#3.0.0 \
  -profile https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response

```

Wichtig: Mit `-ig <package>#<version>` werden die Profile, ValueSets und CodeSystems des MII PRO-Moduls + SDC geladen. Ohne das schlägt die Validierung von Code-Antworten gegen die `answerValueSet`s fehl.

### IG Publisher Validation

Beim lokalen Build (`./_build.sh`) validiert IG Publisher automatisch alle Beispiele gegen ihre `meta.profile`-Deklarationen. Errors brechen den Build. Output liegt unter `output/qa.html` und `output/qa.json`.

### Simplifier Online-Validator

[simplifier.net/validator](https://simplifier.net/validator) — Web-UI für ad-hoc-Validierung. ValueSets aus dem MII PRO-Modul müssen im Projekt-Scope sein.

### Firely Terminal

```
fhir push input/examples/QuestionnaireResponse-pcor-mii-exa-promis-16-response.json
fhir validate --profile https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response

```

### Server-seitig via PCOR-MII Container

Wenn der [lokale PCOR-MII Container](Bereitstellung.md) läuft (Port 8097), kann er Validierung als FHIR-`$validate`-Operation ausführen — derselbe Validator wie das CLI, aber via HTTP:

```
curl -X POST http://localhost:8097/fhir/QuestionnaireResponse/\$validate \
  -H "Content-Type: application/fhir+json" \
  -d @input/examples/QuestionnaireResponse-pcor-mii-exa-promis-16-response.json

```

Antwort ist ein `OperationOutcome` mit `issue`-Liste. Die `severity` ist identisch zur CLI-Ausgabe. Vorteil: keine Java/JAR-Installation beim Konsumenten nötig, alles per HTTP-Call.

## Ergebnis-Interpretation

| | | |
| :--- | :--- | :--- |
| `error` | FHIR-Konformanz verletzt | ❌ Nein — muss behoben werden |
| `warning` | FHIR-Best-Practice verletzt | ⚠️ Fall-by-Fall — manche legitim, manche zu fixen |
| `information`/`note` | Hinweis (z.B. terminology server konnte Code nicht auflösen) | ✓ meist OK |

### Typische Warnings — was bedeuten sie?

* **`dom-6: A resource should have narrative for robust management`** — fehlende `text.div`-Sektion. Best Practice, nicht blockend. Im PCOR-MII durch `additional`-Narrative auf allen Beispielen befüllt.
* **`Die Ressource hat eine language, aber das XHTML hat kein lang/xml:lang Tag`** — wenn `Resource.language` gesetzt ist, muss die `text.div` ebenfalls `xml:lang="..."` und `lang="..."` haben. Fix: beide Attribute am `<div>`-Element ergänzen.
* **`Wrong Display Name 'XYZ' for http://loinc.org#LAxxx-y`** — der Display weicht von der offiziellen LOINC-Bezeichnung ab. Häufig durch DE-Übersetzungen, die als alternative Display gespeichert sind. Bewusst akzeptabel; bei einigen FHIR-Servern via `lenient-display`-Setting deaktivierbar.
* **`Canonical URL ... kann nicht aufgelöst werden`** — Referenz auf eine externe Canonical-URL, die der Validator nicht findet. Bei Upstream-Modulen meist http/https-Mismatch (siehe Bead `anw` für das MII PRO-Modul).

## Validierte Beispiele in PCOR-MII

Alle drei `QuestionnaireResponse`-Beispiele in dieser IG validieren mit **0 errors, 0 warnings**:

* [`pcor-mii-exa-example-response`](QuestionnaireResponse-pcor-mii-exa-example-response.md)
* [`pcor-mii-exa-promis-16-response`](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md)
* [`pcor-mii-exa-promis-cognitive-function-response`](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.md)

Validation-Befehl zum Reproduzieren:

```
for f in input/examples/QuestionnaireResponse-*.json; do
  java -jar ~/.fhir/validator_cli.jar "$f" \
    -version 4.0.1 \
    -ig de.medizininformatikinitiative.kerndatensatz.pros#2026.4.1 \
    -ig hl7.fhir.uv.sdc#3.0.0 \
    -ig fsh-generated/resources \
    -profile https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
done

```

## Wozu Validierung in PCOR-MII?

Validierung ist eine notwendige, aber nicht hinreichende Bedingung für korrekte Daten. Sie prüft:

* **Strukturelle Konformanz**: alle Pflichtfelder gefüllt, Datentypen korrekt
* **Code-Bindung**: Antworten codiert nach den im Questionnaire definierten ValueSets
* **Profile-Constraints**: das `meta.profile` wird tatsächlich eingehalten

Nicht geprüft werden inhaltliche/klinische Plausibilität (z.B. ob ein Score-Wert sinnvoll ist) — dafür braucht es CQL- oder anwendungsspezifische Regeln.

Für den Datenaustausch in der [50-First-Patients Pilot-Kohorte](Implementation.md) wird empfohlen: jeder Sender validiert seine QRs lokal **vor** dem Versenden, und jeder Empfänger validiert nochmal beim Eingang.

