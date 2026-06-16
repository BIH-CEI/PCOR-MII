# Anwendung - PCOR-MII Implementation Guide v0.1.0

## Anwendung

Diese Seite beschreibt, wie die im PCOR-MII Implementation Guide definierten Fragebögen in der Praxis angewendet werden.

### Rolle von FHIR in PCOR-MII

Das Erfassungs-System kann **außerhalb FHIR** liegen (REDCap, LimeSurvey, hauseigene ePRO-Apps, Papier mit Eingabemaske) **oder direkt in FHIR** erfolgen (z.B. via LHC-Forms oder einer SDC-fähigen Renderer-Applikation gegen einen PCOR-MII Container). **FHIR ist primär die Ablage- und Austausch-Form** — die strukturierte, versionierte und validierbare Darstellung der erfassten Daten zwischen Sites, Konsortien und Forschungs-Empfängern.

In beiden Fällen entstehen `QuestionnaireResponse`s + ggf. `Observation`s konform zum [`MII PR PRO QuestionnaireResponse`-Profil](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.4.1). Validierung und Austausch sehen deshalb gleich aus — siehe [Validierung](Validierung.md) und [Bereitstellung](Bereitstellung.md).

### Vom Questionnaire zur Antwort

Ein `Questionnaire` ist die **Definition** eines Fragebogens. Die konkreten Antworten einer Person werden als **`QuestionnaireResponse`** erfasst. Die Verknüpfung erfolgt über:

* `QuestionnaireResponse.questionnaire` → kanonische URL des `Questionnaire` (inkl. Version)
* jede Antwort referenziert das zugehörige Item über die identische **`linkId`**

Dadurch bleibt jede erfasste Antwort eindeutig der Frage zugeordnet – auch über Systemgrenzen hinweg.

### Lebenszyklus

1. **Bereitstellung**– das`Questionnaire`wird über einen FHIR-Server bereitgestellt (`GET [base]/Questionnaire?url=...`).
1. **Rendering**– ein Client (ePRO-App, Studienportal) rendert die Items anhand von`type`,`text`und Antwortoptionen.
1. **Erfassung**– die ausgefüllten Antworten werden als`QuestionnaireResponse`gespeichert (`status = completed`).
1. **Auswertung / Extraktion****(zukünftig)**– relevante Antworten werden in andere FHIR-Ressourcen (z. B.`Observation`) überführt (Data Extraction via[SDC](https://hl7.org/fhir/uv/sdc/)). In PCOR-MII aktuell nicht implementiert.

### Beispiel: QuestionnaireResponse (Auszug)

```
{
  "resourceType": "QuestionnaireResponse",
  "meta": {
    "profile": [
      "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response|2026.4.1"
    ]
  },
  "language": "de-DE",
  "questionnaire": "https://bih-cei.github.io/PCOR-MII/Questionnaire/PcorExampleQuestionnaire|0.1.0",
  "status": "completed",
  "subject": { "reference": "Patient/pcor-mii-exa-patient" },
  "authored": "2026-06-16T10:00:00+02:00",
  "item": [{
    "linkId": "pro",
    "item": [{
      "linkId": "pro.general-health",
      "answer": [{
        "valueCoding": {
          "system": "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-example-general-health",
          "code": "good",
          "display": "Good"
        }
      }]
    }]
  }]
}

```

Vollständige, validierte Beispiele:

* [`pcor-mii-exa-example-response`](QuestionnaireResponse-pcor-mii-exa-example-response.md) — Beispiel-Fragebogen mit allen Item-Typen
* [`pcor-mii-exa-promis-16-response`](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md) — PROMIS-16 vollständig befüllt
* [`pcor-mii-exa-promis-cognitive-function-response`](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.md) — PROMIS Cognitive Function SF 4a
* Für PROMIS-29 wird das upstream-Beispiel `mii-exa-pro-promis-29-response` aus dem MII PRO-Modul verwendet (siehe [PROMIS-29-Seite](PROMIS-29.md))

### Validierung

`QuestionnaireResponse`s können gegen das `MII PR PRO QuestionnaireResponse`-Profil und das zugehörige `Questionnaire` validiert werden – u. a. auf Pflicht-Items (`required`), zulässige Antwortoptionen, Datentypen und kodierte Antwortwerte. Alle vier Beispiele oben sind gegen den FHIR-Validator geprüft (0 Errors).

```
fhir validate <qr.json> \
  -version 4.0.1 \
  -ig de.medizininformatikinitiative.kerndatensatz.pros#2026.4.1 \
  -ig hl7.fhir.uv.sdc#3.0.0 \
  -profile https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response

```

### Hinweise zur Integration

* **Versionierung**: Antworten immer gegen eine **versionierte** `Questionnaire`-URL erfassen, damit spätere Änderungen am Fragebogen bestehende Daten nicht uneindeutig machen.
* **Structured Data Capture (SDC)**: ergänzender Standard für Data-Extraction (zukünftig in PCOR-MII).
* **Mehrsprachigkeit**: Item-Texte können über `translation`-Extensions mehrsprachig hinterlegt werden.

