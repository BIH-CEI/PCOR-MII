This page announces **what changes with the move to the MII PRO module 2027** — so implementers do not learn about it only in the migration release. The basis is the published ballot `de.medizininformatikinitiative.kerndatensatz.pros` **2027.0.0-ballot.1** (as of 2026-10; compared against the current dependency **2026.7.0**). Everything here may still change before the final 2027 release — that is what a ballot is for.

> **None of this is in effect yet.** PCOR-MII still inherits from 2026.7.0 with SDC 3.0.0; all examples and the [validation container](Bereitstellung.html) are pinned to it. The switch will be its own release, marked `breaking`.

### What the ballot changes — and what that means for PCOR-MII

| Upstream change (2027 ballot) | Consequence for PCOR-MII |
|---|---|
| **SDC 3.0.0 → 4.0.0** | Our questionnaires reference `sdc-questionnaire` unversioned — resolution follows the dependency. SDC 4.0.0 adds new **invariants**: `sdc-base-1`/`sdc-base-2` (every `answerOption.valueCoding` needs `code` or `display`, and `code` requires `system`), `sdc-behave-2` (`enableWhen` and `enableWhenExpression` are mutually exclusive), `sdc-rend-1` (`page` control at root level only). Our questionnaires already satisfy these — we bind answers via `answerValueSet`, not `answerOption` — but the migration PR validates everything through. |
| **`itemWeight` instead of `ordinalValue`** — in the ballot the answer weights hang on the `answerOption` codings as `http://hl7.org/fhir/StructureDefinition/itemWeight` (R5 backport); 17 upstream files already use it | **The largest migration task.** PCOR-MII today carries `ordinalValue` as a `^property` in the answer CodeSystems; on migration the weights move to `itemWeight`. Same direction as our ballot submission **HDB-972** — the switch deliberately waits for the final 2027 release rather than maintaining two conventions in parallel. Affects all questionnaires with weighted answer scales (incl. DEM, MHI, EDE-Q6, OPD-SFK, UKHD-PT). |
| **EORTC QLQ-C30 variants A/B dropped** (`eortc-qlq-c30-variant-a`/`-b`) | None — PCOR-MII does not use the variants. |
| **New LOINC supplement** `mii-cs-pro-loinc-supplement` | Check whether our LOINC references (ACE items, PHQ answer codes) should switch to it. |
| **QR profile extended**: `translation` extension now also on `item.text` and `item.answer.valueCoding.display` of the `QuestionnaireResponse`; an `ordinalValue` slice on `item.answer.extension` | Responses **may** carry multilingual item texts in future; for our examples this stays optional (they deliberately carry no item texts). The `ordinalValue` slice on the answer bears watching — it is in tension with the `itemWeight` switch and is a candidate for a ballot comment. |
| **New package dependencies**: `hl7.fhir.uv.crmi 2.0.0`, `hl7.fhir.uv.extensions.r4 5.2.0`, `de.basisprofil.r4 1.6.0`, `de.gematik.isik 6.0.0`, `hl7.terminology.r4 7.3.0`, `xver-r5.r4 0.1.0` | Build and container changes (`sushi-config.yaml`, `docker/`): more packages in the preload, longer cold builds. `$package` ([Deployment](Bereitstellung.html), path 4) benefits from CRMI 2.0.0. |

### What PCOR-MII itself changes at migration

1. **Dependency and pins:** `sushi-config.yaml` to the final 2027 release, all `|2026.7.0` pins in the example responses, the [validation container](Bereitstellung.html) (Dockerfile, compose, `application.yaml`) and the validator commands on [Validation](Validierung.html).
2. **`ordinalValue` → `itemWeight`** in our own answer CodeSystems — with unchanged weights; the decisions about *which* scales carry weights at all (only ordinal ones — see [UKHD supplementary items](UKHD-Zusatzitems.html)) remain.
3. **Full validation** of all 20 questionnaires, >30 responses and three bundles against SDC 4.0.0.
4. **Upstream alignment of the AN long forms:** with the 2027 cycle the planned PR of the AN long forms against the PRO module is to be re-evaluated (instrument and score catalogue entries, literature references).

### What is explicitly *not* coming

- **No switch to FHIR R5.** The module stays on R4; `itemWeight` and `artifact-version` are R5 backports as extensions.
- **No change to `linkId`s or wordings** of the PCOR-MII questionnaires through the migration — existing responses remain valid because the `questionnaire` references are versioned.
- **The PHQ-SADS recall question** (shared items, 4 vs. 2 weeks) is on the PRO module's 2027 roadmap and will be solved there, not here.

Changes to the ballot are tracked on this page; what has been implemented moves to the [release notes](Release-Notes.html).
