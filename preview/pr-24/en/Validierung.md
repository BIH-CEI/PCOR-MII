# Validierung - PCOR-MII Implementation Guide v0.3.0

## Validierung

**Translated page. Original language: German.**

This page answers one question: **how do I make sure my implementation is valid against the PRO and PCOR-MII data definitions?**

## What validating actually checks

A `QuestionnaireResponse` — or a FHIR bundle containing one — has to satisfy three things to count as valid:

1. **Structurally**conform to the[`MII PR PRO QuestionnaireResponse` profile](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.pros/2026.7.0): data types, required elements, element constraints
1. Its**`linkId`s**must match the item structure of the referenced questionnaire
1. Every**coded answer**must come from that item's`answerValueSet`(or`answerOption`)

```
flowchart TB
    QR["QuestionnaireResponse<br/>(to be validated)"]
    Profile["meta.profile<br/>MII PR PRO QR"]
    Q["Questionnaire<br/>(e.g. mii-qst-pro-promis-16)"]
    VS["ValueSet<br/>(e.g. frequency-response-scale)"]
    CS["CodeSystem<br/>(LOINC)"]

    QR -->|"validated against"| Profile
    QR -->|"questionnaire = canonical|version"| Q
    Q -->|"item.answerValueSet"| VS
    VS -->|"compose.include"| CS

    style QR fill:#e1f5ff
    style Profile fill:#fff4e1
    style Q fill:#fff4e1
    style VS fill:#e1ffe1
    style CS fill:#e1ffe1

```

For that to work the validator has to know all four resource levels — the **MII PRO module package (2026.7.0)** plus SDC plus LOINC. All the routes below arrange this automatically, either through `-ig` parameters or through the container preload.

## Three routes to a validated bundle

### A. Container $validate (fastest loop while writing a mapper)

Start the [PCOR-MII container](Bereitstellung.md) and throw the bundle at `$validate` over HTTP:

```
curl -X POST http://localhost:8097/fhir/QuestionnaireResponse/\$validate \
  -H "Content-Type: application/fhir+json" \
  -d @my-questionnaire-response.json

```

The reply is an `OperationOutcome` with a severity-tagged `issue` list. Good for iterative mapper development in a shell and quick round trips without a Java setup.

### B. HL7 validator CLI (for CI pipelines)

The official Java validator. Preferable when your build system should not call HTTP endpoints.

```
# One-time download
curl -L "https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar" \
  -o ~/.fhir/validator_cli.jar

# Validate
java -jar ~/.fhir/validator_cli.jar my-questionnaire-response.json \
  -version 4.0.1 \
  -ig de.medizininformatikinitiative.kerndatensatz.pros#2026.7.0 \
  -ig hl7.fhir.uv.sdc#3.0.0 \
  -profile https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response

```

Good for GitHub Actions and GitLab CI steps, pre-commit hooks, and mass validation of large data sets.

### C. IG Publisher build (automatic inside your own IG)

If you build your own Implementation Guide that consumes PCOR-MII: declare your resources with `meta.profile` and the IG Publisher validates them during the build, stopping on errors. Output lands in `output/qa.html` and `output/qa.json`.

## What to get right in your implementation

A practical checklist for mappers, ePRO apps and populating a recipient server:

* **`meta.profile`** set on the response — `mii-pr-pro-questionnaire-response|2026.7.0`
* **`questionnaire` reference** with version — `…/mii-qst-pro-promis-16|2026.7.0`
* **`linkId`s** of the answer items match **exactly** those defined in the questionnaire
* **Coded answers** with system and code from the item's `answerValueSet` (for the PROMIS value sets the LA codes are documented inline — see the item tables on [PROMIS-16](PROMIS-16.md))
* **Item order** follows the questionnaire, not your own grouping (see below — this one is easy to get wrong)
* **`status = completed`** (or `in-progress` / `amended`, depending on the lifecycle)
* **`subject`** reference to the patient
* **`authored`** timestamp set
* **`text.div`** narrative with `xml:lang` / `lang` when `Resource.language` is set (see the best-practice block below)

## Reading severities

| | | |
| :--- | :--- | :--- |
| `error` | FHIR conformance violated | ❌ must be fixed |
| `warning` | FHIR best practice violated | ⚠️ case by case |
| `information`/`note` | informational, e.g. the terminology server could not resolve a code | ✓ usually fine |

### Common warnings — when to ignore them and when not to

| | |
| :--- | :--- |
| `dom-6: A resource should have narrative for robust management` | add a`text.div`element (FHIR best practice). Often ignorable for pure machine-to-machine bundles |
| `The resource has a language, but the XHTML has no lang tag` | if`Resource.language`is set, also set`xml:lang="de" lang="de"`on the`<div>`element |
| `Wrong Display Name 'X' for http://loinc.org#LAxxx-y` | the display differs from the LOINC designation, e.g. a German translation. Deliberately acceptable; can be switched off on strict-display servers |
| `Canonical URL … cannot be resolved` | the server does not have the referenced questionnaire — either add an`-ig`parameter or check how the server was populated (see[Distribution](Bereitstellung.md)) |

## Validated examples for reference

The three original examples, all with **0 errors, 0 warnings**:

* [`pcor-mii-exa-promis-16-response`](QuestionnaireResponse-pcor-mii-exa-promis-16-response.md)
* [`pcor-mii-exa-promis-cognitive-function-response`](QuestionnaireResponse-pcor-mii-exa-promis-cognitive-function-response.md)
* [`pcor-mii-exa-example-response`](QuestionnaireResponse-pcor-mii-exa-example-response.md) (for the example questionnaire)

Plus the **AN data set** — five responses and two score observations from a single assessment session with the same patient (overview on the [AN](AN.md) page): [ERQ6Response](QuestionnaireResponse-ERQ6Response.md), [EDEQ6Response](QuestionnaireResponse-EDEQ6Response.md), [ANSOCQ2Response](QuestionnaireResponse-ANSOCQ2Response.md), [SSUK2Response](QuestionnaireResponse-SSUK2Response.md), [ACEResponse](QuestionnaireResponse-ACEResponse.md), and [ErqsReappraisalObservation](Observation-ErqsReappraisalObservation.md) and [ErqsSuppressionObservation](Observation-ErqsSuppressionObservation.md).

These seven are checked at **0 errors** but are not warning-free, and both remaining warnings are known and accepted:

* `dom-6` (missing narrative) on all seven — listed as ignorable in the table above
* a `java.net.SocketTimeoutException` during the UCUM check of the two `valueQuantity` values — a network timeout against the terminology server, not a finding about the resource

**One real defect found while validating:** the ERQ-6 example response initially grouped its items by subscale — the three reappraisal items first, then the three suppression items. The validator rejects that: **"structural error: elements in the wrong order"**. A `QuestionnaireResponse` must list its items in the **order of the questionnaire**; the clinical grouping belongs in comments, not in the arrangement. SUSHI does not catch this, so it only surfaces here.

Reproduce:

```
for f in input/examples/QuestionnaireResponse-*.json; do
  java -jar ~/.fhir/validator_cli.jar "$f" \
    -version 4.0.1 \
    -ig de.medizininformatikinitiative.kerndatensatz.pros#2026.7.0 \
    -ig hl7.fhir.uv.sdc#3.0.0 \
    -ig fsh-generated/resources \
    -profile https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-questionnaire-response
done

```

## Why validate in the pipeline at all?

Validation checks structural and code-binding conformance, **not** clinical plausibility. What it does reliably catch are the commonest mapping mistakes: wrong LA codes (a frequency scale confused with an intensity scale), missing required items, and a version mismatch between the `questionnaire` reference and what the server actually holds.

For the [50 First Patients pilot](Implementation.md) the rule is simple: **every sender validates locally before sending**, and every recipient validates again on arrival. That catches the large majority of drift problems for very little effort.

