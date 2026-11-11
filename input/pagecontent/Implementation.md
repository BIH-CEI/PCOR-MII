Diese Seite beschreibt, wie die im PCOR-MII Implementation Guide definierten Fragebögen in der Praxis angewendet werden.

### Rolle von FHIR in PCOR-MII

Das Erfassungs-System kann **außerhalb FHIR** liegen (REDCap, LimeSurvey, hauseigene ePRO-Apps, Papier mit Eingabemaske) **oder direkt in FHIR** erfolgen (z.B. via LHC-Forms oder einer SDC-fähigen Renderer-Applikation gegen einen PCOR-MII Container). **FHIR ist primär die Ablage- und Austausch-Form** — die strukturierte, versionierte und validierbare Darstellung der erfassten Daten zwischen Sites, Konsortien und Forschungs-Empfängern.

In beiden Fällen entstehen `QuestionnaireResponse`s + ggf. `Observation`s konform zum [`MII PR PRO QuestionnaireResponse`-Profil](https://medizininformatik-initiative.github.io/kerndatensatzmodul-proms/StructureDefinition-mii-pr-pro-questionnaire-response.html). Validierung und Austausch sehen deshalb gleich aus — siehe [Validierung](Validierung.html) und [Bereitstellung](Bereitstellung.html).

### Vom Questionnaire zur Antwort

Ein `Questionnaire` ist die **Definition** eines Fragebogens. Die konkreten Antworten einer Person werden als **`QuestionnaireResponse`** erfasst. Die Verknüpfung erfolgt über:

- `QuestionnaireResponse.questionnaire` → kanonische URL des `Questionnaire` (inkl. Version)
- jede Antwort referenziert das zugehörige Item über die identische **`linkId`**

Dadurch bleibt jede erfasste Antwort eindeutig der Frage zugeordnet – auch über Systemgrenzen hinweg.

### Lebenszyklus

1. **Bereitstellung** – das `Questionnaire` wird über einen FHIR-Server bereitgestellt (`GET [base]/Questionnaire?url=...`).
2. **Rendering** – ein Client (ePRO-App, Studienportal) rendert die Items anhand von `type`, `text` und Antwortoptionen.
3. **Erfassung** – die ausgefüllten Antworten werden als `QuestionnaireResponse` gespeichert (`status = completed`).
4. **Auswertung / Extraktion** *(zukünftig)* – relevante Antworten werden in andere FHIR-Ressourcen (z. B. `Observation`) überführt (Data Extraction via [SDC](https://hl7.org/fhir/uv/sdc/)). In PCOR-MII aktuell nicht implementiert.

### Beispiel: QuestionnaireResponse (Auszug)

```json
{
  "resourceType": "QuestionnaireResponse",
  "meta": {
    "profile": [
      "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    ]
  },
  "language": "de-DE",
  "questionnaire": "https://bih-cei.github.io/PCOR-MII/Questionnaire/PHQPANIK|0.9.0",
  "status": "completed",
  "subject": { "reference": "Patient/pcor-mii-exa-patient-pss" },
  "authored": "2026-06-25T12:05:00+02:00",
  "item": [{
    "linkId": "phq-phq3a",
    "answer": [{
      "valueCoding": { "system": "http://snomed.info/sct", "code": "373066001", "display": "Yes" }
    }]
  }, {
    "linkId": "phq-phq3b",
    "answer": [{
      "valueCoding": { "system": "http://snomed.info/sct", "code": "373066001", "display": "Yes" }
    }]
  }]
}
```

Der Auszug stammt aus der Beispielantwort [PHQPANIKResponse](QuestionnaireResponse-PHQPANIKResponse.html) (PHQ-D Panik-Block, Ja/Nein als SNOMED CT nach ADR-013). Vollständige, validierte Beispiele: drei synthetische **Beispielpatienten** (AN, PSS und NTx) mit vier **Termin-Bundles** und über vierzig Einzelantworten — Übersicht in der [Fragebogen-Bibliothek](Fragebogen-Bibliothek.html), Validierungsstatus auf [Validierung](Validierung.html). Für PROMIS-29 wird das Upstream-Beispiel `mii-exa-pro-promis-29-response` aus dem MII PRO-Modul verwendet (siehe [PROMIS-29-Seite](PROMIS-29.html)).

### Validierung

`QuestionnaireResponse`s können gegen das `MII PR PRO QuestionnaireResponse`-Profil und das zugehörige `Questionnaire` validiert werden – u. a. auf Pflicht-Items (`required`), zulässige Antwortoptionen, Datentypen und kodierte Antwortwerte. Alle Beispiele des IG sind gegen den FHIR-Validator geprüft (0 Errors; Warnungsklassen auf [Validierung](Validierung.html)).

```bash
fhir validate <qr.json> \
  -version 4.0.1 \
  -ig de.medizininformatikinitiative.kerndatensatz.pros#2027.0.0-ballot.2 \
  -ig hl7.fhir.uv.sdc#3.0.0 \
  -profile https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
```

### Hinweise zur Integration

- **Versionierung**: Antworten immer gegen eine **versionierte** `Questionnaire`-URL erfassen, damit spätere Änderungen am Fragebogen bestehende Daten nicht uneindeutig machen.
- **Structured Data Capture (SDC)**: ergänzender Standard für Data-Extraction (zukünftig in PCOR-MII).
- **Mehrsprachigkeit**: Item-Texte können über `translation`-Extensions mehrsprachig hinterlegt werden.
