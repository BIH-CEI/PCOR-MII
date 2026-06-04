Diese Seite beschreibt, wie die im PCOR-MII Implementation Guide definierten Fragebögen in der Praxis angewendet werden.

### Vom Questionnaire zur Antwort

Ein `Questionnaire` ist die **Definition** eines Fragebogens. Die konkreten Antworten einer Person werden als **`QuestionnaireResponse`** erfasst. Die Verknüpfung erfolgt über:

- `QuestionnaireResponse.questionnaire` → kanonische URL des `Questionnaire` (inkl. Version)
- jede Antwort referenziert das zugehörige Item über die identische **`linkId`**

Dadurch bleibt jede erfasste Antwort eindeutig der Frage zugeordnet – auch über Systemgrenzen hinweg.

### Lebenszyklus

1. **Bereitstellung** – das `Questionnaire` wird über einen FHIR-Server bereitgestellt (`GET [base]/Questionnaire?url=...`).
2. **Rendering** – ein Client (ePRO-App, Studienportal) rendert die Items anhand von `type`, `text` und Antwortoptionen.
3. **Pre-Population** *(optional)* – vorhandene Daten werden vorbefüllt (z. B. via [Structured Data Capture, SDC](https://hl7.org/fhir/uv/sdc/)).
4. **Erfassung** – die ausgefüllten Antworten werden als `QuestionnaireResponse` gespeichert (`status = completed`).
5. **Auswertung / Extraktion** *(optional)* – relevante Antworten werden in andere FHIR-Ressourcen (z. B. `Observation`) überführt (Data Extraction).

### Beispiel: QuestionnaireResponse (Auszug)

```json
{
  "resourceType": "QuestionnaireResponse",
  "questionnaire": "https://bih-cei.github.io/PCOR-MII/Questionnaire/PcorExampleQuestionnaire",
  "status": "completed",
  "item": [
    {
      "linkId": "pro",
      "item": [
        { "linkId": "pro.general-health",
          "answer": [ { "valueString": "Gut" } ] }
      ]
    }
  ]
}
```

### Validierung

`QuestionnaireResponse`s können gegen das zugehörige `Questionnaire` validiert werden – u. a. auf Pflicht-Items (`required`), zulässige Antwortoptionen und Datentypen. Dies erlaubt der IG Publisher bzw. der FHIR-Validator gegen die hier veröffentlichten Definitionen.

### Hinweise zur Integration

- **Versionierung**: Antworten immer gegen eine **versionierte** `Questionnaire`-URL erfassen, damit spätere Änderungen am Fragebogen bestehende Daten nicht uneindeutig machen.
- **Structured Data Capture (SDC)**: Für Pre-Population und Extraktion empfiehlt sich der HL7-SDC-IG als ergänzender Standard.
- **Mehrsprachigkeit**: Item-Texte können über `translation`-Extensions mehrsprachig hinterlegt werden.
