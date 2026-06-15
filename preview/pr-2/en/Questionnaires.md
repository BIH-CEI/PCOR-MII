# Fragebögen - PCOR-MII Implementation Guide v0.1.0

## Fragebögen

**Translated page. Original language: German.**

This page gives an overview of the questionnaires defined in the PCOR-MII Implementation Guide. The full, machine-readable definitions can be found under [Artifacts](artifacts.md).

### Overview

| | | |
| :--- | :--- | :--- |
| [PCOR Example Questionnaire](Questionnaire-PcorExampleQuestionnaire.md) | Template for capturing patient-reported information | draft |

> The included questionnaire is a **template**. Define your own questionnaires as FSH files under `input/fsh/Questionnaires/` (copy `PCOR_Example_Questionnaire.fsh` as a starting point).

### Structure of a Questionnaire

A FHIR `Questionnaire` is built hierarchically from **items**. Each item has:

* **`linkId`** – unique, stable identifier of the item (the basis for later evaluation)
* **`text`** – the displayed question or group heading
* **`type`** – e.g. `group`, `string`, `date`, `choice`, `integer`, `boolean`, `decimal`
* **`required`** / **`repeats`** – mandatory and repeatability flags
* **`answerOption`** or **`answerValueSet`** – permitted answers for `choice` items

Items of type `group` bundle thematically related questions and can be nested.

### Conventions

* **Stable `linkId`s**: once published, `linkId`s are not renamed, so existing `QuestionnaireResponse`s remain mappable.
* **Meaningful, hierarchical `linkId`s** (e.g. `pro.general-health`) ease evaluation and maintenance.
* **Answer options**: small, closed lists directly as `answerOption`; larger, reusable concept lists as `answerValueSet` with a dedicated ValueSet.
* **Terminology**: use coded answers (LOINC/SNOMED CT) instead of free text wherever possible to keep data analyzable.

Details on completion and evaluation are provided under [Implementation](Implementation.md).

