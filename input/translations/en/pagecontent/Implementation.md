This page describes how the questionnaires defined in the PCOR-MII Implementation Guide are used in practice.

### What FHIR is for in PCOR-MII

The capture system may sit **outside FHIR** (REDCap, LimeSurvey, in-house ePRO apps, paper with a data-entry form) **or run directly in FHIR** (for example via LHC-Forms or an SDC-capable renderer against a PCOR-MII container). **FHIR is primarily the storage and exchange form** — the structured, versioned and validatable representation of the captured data between sites, consortia and research recipients.

Either way the result is `QuestionnaireResponse`s, and where applicable `Observation`s, conforming to the [`MII PR PRO QuestionnaireResponse` profile](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0). Validation and exchange therefore look the same in both cases — see [Validation](Validierung.html) and [Distribution](Bereitstellung.html).

### From questionnaire to response

A `Questionnaire` is the **definition** of a form. One person's actual answers are captured as a **`QuestionnaireResponse`**. The two are tied together by:

- `QuestionnaireResponse.questionnaire` → the canonical URL of the `Questionnaire`, including its version
- each answer referencing its item through the identical **`linkId`**

This keeps every captured answer unambiguously attached to its question, including across system boundaries.

### Lifecycle

1. **Distribution** — the `Questionnaire` is served from a FHIR server (`GET [base]/Questionnaire?url=...`).
2. **Rendering** — a client (ePRO app, study portal) renders the items from `type`, `text` and the answer options.
3. **Capture** — the completed answers are stored as a `QuestionnaireResponse` (`status = completed`).
4. **Evaluation / extraction** *(future)* — relevant answers are transferred into other FHIR resources such as `Observation` (data extraction via [SDC](https://hl7.org/fhir/uv/sdc/)). Not currently implemented in PCOR-MII.

### Example: QuestionnaireResponse (excerpt)

```json
{
  "resourceType": "QuestionnaireResponse",
  "meta": {
    "profile": [
      "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response"
    ]
  },
  "language": "de",
  "questionnaire": "https://bih-cei.github.io/PCOR-MII/Questionnaire/PcorExampleQuestionnaire|0.3.0",
  "status": "completed",
  "subject": { "reference": "Patient/pcor-mii-exa-patient-an" },
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

Complete, validated examples:

- [`pcor-mii-exa-example-response`](QuestionnaireResponse-pcor-mii-exa-example-response.html) — the example questionnaire with every item type
- [`pcor-mii-exa-promis-16-response`](QuestionnaireResponse-pcor-mii-exa-promis-16-response.html) — PROMIS-16 fully completed
- [`pcor-mii-exa-promis-cognitive-function-response`](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.html) — PROMIS Cognitive Function SF 4a
- For PROMIS-29 the upstream example `mii-exa-pro-promis-29-response` from the MII PRO module is used (see the [PROMIS-29 page](PROMIS-29.html))
- The **AN data set** — five responses and two score observations from one assessment session; see [AN](AN.html)

### Two things the AN examples demonstrate

They are worth reading before writing a mapper, because both cost time when discovered late.

**Item order is normative.** A `QuestionnaireResponse` must list its items in the order of the `Questionnaire`. Grouping them by subscale — which reads more naturally — is rejected by the validator with *"structural error: elements in the wrong order"*. SUSHI does not catch this; it only surfaces during validation. Some instruments make the point explicitly: the official ERQ form instructs that item order must not be changed, because items 1 and 3 define the terms "positive emotion" and "negative emotion" for everything that follows.

**Pin the questionnaire version.** Every PCOR-MII response references its questionnaire as a versioned canonical (`…/Questionnaire/ERQ6|0.3.0`). Without the pin it is not possible to tell from a response which wording the person was actually shown — and with instruments that carry several language layers, or that are item subsets, that is precisely the information an analysis needs.

### Validation

`QuestionnaireResponse`s can be validated against the `MII PR PRO QuestionnaireResponse` profile and against the referenced `Questionnaire` — covering required items, permitted answer options, data types and coded answer values. All the examples above are checked with the FHIR validator (0 errors).

```bash
fhir validate <qr.json> \
  -version 4.0.1 \
  -ig de.medizininformatikinitiative.kerndatensatz.pros#2026.7.0 \
  -ig hl7.fhir.uv.sdc#3.0.0 \
  -profile https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
```

### Integration notes

- **Versioning**: always capture answers against a **versioned** `Questionnaire` URL, so that later changes to the form do not make existing data ambiguous.
- **Structured Data Capture (SDC)**: the companion standard for data extraction (future work in PCOR-MII).
- **Multiple languages**: item texts can carry additional languages through `translation` extensions. Which language is primary is a modelling decision per instrument, not a preference — see [ADR-005 and ADR-010](Designentscheidungen.html).
- **Splitting a flat data set**: where collection happened in one large non-FHIR form, each item carries its dictionary variable in `Questionnaire.item.code` against [`pcor-item-dictionary`](CodeSystem-pcor-item-dictionary.html). Looking that code up tells you both which questionnaire the variable belongs to and what its `linkId` is there. Do not match on `linkId`s: they are unique only *within* one questionnaire, and at least one collision exists in practice. See [ADR-011](Designentscheidungen.html).
