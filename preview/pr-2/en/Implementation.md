# Anwendung - PCOR-MII Implementation Guide v0.1.0

## Anwendung

**Translated page. Original language: German.**

This page describes how the questionnaires defined in the PCOR-MII Implementation Guide are applied in practice.

### From Questionnaire to Response

A `Questionnaire` is the **definition** of a form. The concrete answers of a person are captured as a **`QuestionnaireResponse`**. They are linked via:

* `QuestionnaireResponse.questionnaire` → canonical URL of the `Questionnaire` (including version)
* each answer references the corresponding item via the identical **`linkId`**

This keeps every captured answer unambiguously mapped to its question — even across system boundaries.

### Lifecycle

1. **Provisioning**– the`Questionnaire`is served from a FHIR server (`GET [base]/Questionnaire?url=...`).
1. **Rendering**– a client (ePRO app, study portal) renders the items based on`type`,`text`, and answer options.
1. **Pre-population****(optional)**– existing data is pre-filled (e.g. via[Structured Data Capture, SDC](https://hl7.org/fhir/uv/sdc/)).
1. **Capture**– the completed answers are stored as a`QuestionnaireResponse`(`status = completed`).
1. **Evaluation / extraction****(optional)**– relevant answers are transferred into other FHIR resources (e.g.`Observation`) via data extraction.

### Example: QuestionnaireResponse (excerpt)

```
{
  "resourceType": "QuestionnaireResponse",
  "questionnaire": "https://bih-cei.github.io/PCOR-MII/Questionnaire/PcorExampleQuestionnaire",
  "status": "completed",
  "item": [
    {
      "linkId": "pro",
      "item": [
        { "linkId": "pro.general-health",
          "answer": [ { "valueString": "Good" } ] }
      ]
    }
  ]
}

```

### Validation

`QuestionnaireResponse`s can be validated against the corresponding `Questionnaire` — including mandatory items (`required`), permitted answer options, and data types. The IG Publisher / FHIR validator can validate against the definitions published here.

### Integration Notes

* **Versioning**: always capture answers against a **versioned** `Questionnaire` URL, so later changes to the form do not make existing data ambiguous.
* **Structured Data Capture (SDC)**: for pre-population and extraction, the HL7 SDC IG is recommended as a complementary standard.
* **Multi-language**: item texts can be provided in multiple languages via `translation` extensions.

