This page accompanies **PCOR-MII's move to the MII PRO module 2027**. With release 0.9.0 the switch is done: PCOR-MII inherits from `de.medizininformatikinitiative.kerndatensatz.pros` **2027.0.0-ballot.2** (SDC 4.0.0, ISiK 6.0.0) instead of 2026.7.0. The page records what that settled and what remains open until the **final 2027 release** — a ballot may still change until then, that is what it is for.

> **As of 0.9.0:** dependency, every pin, the [validation container](Bereitstellung.html) and the validator commands on [Validation](Validierung.html) are on 2027.0.0-ballot.2; answer weights are called `itemWeight`. The step to the final 2027 release is a pure version change, provided the ballot holds.

### What the switch changed

| Upstream change (2027) | Implementation in PCOR-MII (0.9.0) |
|---|---|
| **SDC 3.0.0 → 4.0.0** — new invariants `sdc-base-1`/`sdc-base-2` (every `answerOption.valueCoding` needs `code` or `display`, and `code` requires `system`), `sdc-behave-2` (`enableWhen` and `enableWhenExpression` are mutually exclusive), `sdc-rend-1` (`page` control at root level only) | Satisfied. The inline `answerOption`s (SNOMED yes/no per [ADR-013](Designentscheidungen.html)) carry `system` and `code`; all other answers bind via `answerValueSet`. Full validation with the IG Publisher against SDC 4.0.0 without new errors. |
| **`itemWeight` instead of `ordinalValue`** — weights as an extension on `answerOption` (foreign terminology) or as the concept property `http://hl7.org/fhir/concept-properties#itemWeight` on our own CodeSystems; the module writes them only through the RuleSets `WeightedOption`, `WeightedConcept`, `ItemWeightProperty` | Done: 15 answer CodeSystems, 72 concepts, weights and codes unchanged; the score expressions of OPD-SFK and ABQ use `.weight().sum()`. Same direction as our ballot submission **HDB-972**. Which scales carry weights at all (only ordinal ones — see [UKHD supplementary items](UKHD-Zusatzitems.html)) is unchanged. |
| **PROMIS Scale v1.2 – Global Health** new in the module (`mii-qst-pro-promis-global-health`, 10 items, status `draft`) | [`PROMISGH`](Questionnaire-PROMISGH.html) is declared via `derivedFrom` as a 2-item subset of it; `linkId` alignment and whether the local questionnaire survives are open (see [PROMIS](PROMIS.html)). |
| **PROMIS-29 cleaned up** (HDB-1007/-1008/-1009): weights, T-score tables and LOINC codes of the scores corrected, the `-de` and `-minimal` variants retired (still resolvable as empty shells) | No change to PCOR-MII artefacts; the manifests pin `mii-qst-pro-promis-29|2027.0.0-ballot.2`. The [PROMIS-29](PROMIS-29.html) page is updated. |
| **QR profile**: `translation` extension also on `item.text` and `item.answer.valueCoding.display`; the `ordinalValue` slice on the answer that the first ballot still carried is gone in ballot.2 | Responses **may** carry multilingual item texts; our examples deliberately do not. The ballot comment on the `ordinalValue` slice is no longer needed. |
| **EORTC QLQ-C30 variants A/B dropped** (`eortc-qlq-c30-variant-a`/`-b`) | None — PCOR-MII does not use the variants. |
| **Package dependencies**: `hl7.fhir.uv.extensions.r4 5.2.0`, `de.basisprofil.r4 1.6.0`, `de.gematik.isik 6.0.0`, `hl7.terminology.r4 7.3.0`, `xver-r5.r4 0.1.0`, `crmi 2.0.0` | `sushi-config.yaml` pins SDC 4.0.0 and ISiK 6.0.0 to match the module, the rest arrives transitively; the container preloads correspondingly more packages. |

### What remains open until the final 2027 release

1. **Version change** `2027.0.0-ballot.2` → final: `sushi-config.yaml`, every `|2027.0.0-ballot.2` pin (manifests, example responses, bundles), container (`docker/`) and validator commands — the same pass as for the switch, without structural change.
2. **LOINC supplement** `mii-cs-pro-loinc-supplement`: check whether our LOINC references (ACE items, PHQ answer codes) should switch to it.
3. **PROMIS-GH**: align the `linkId`s with the upstream IDs per [ADR-008](Designentscheidungen.html), or drop the local questionnaire in favour of the module definition — depends on the data collection plan (2 or 10 items).
4. **Upstream alignment of the AN long forms:** with the 2027 cycle the planned PR of the AN long forms against the PRO module is to be re-evaluated (instrument and score catalogue entries, literature references).

### What is explicitly *not* coming

- **No switch to FHIR R5.** The module stays on R4; `itemWeight` and `artifact-version` are R5 backports as extensions.
- **No change to `linkId`s or wordings** of the PCOR-MII questionnaires through the switch — existing responses remain valid because the `questionnaire` references are versioned. (The one exception is listed above as an open point: PROMIS-GH.)
- **The PHQ-SADS recall question** (shared items, 4 vs. 2 weeks) is on the PRO module's 2027 roadmap and will be solved there, not here.

Changes to the ballot are tracked on this page; what has been implemented is in the [release notes](Release-Notes.html).
