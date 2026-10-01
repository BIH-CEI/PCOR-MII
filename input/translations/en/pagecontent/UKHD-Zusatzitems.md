**UKHD supplementary items (AN)** are the item groups from the Item Level Dictionary that do not correspond to any published instrument and were compiled for data collection in the AN entity by the Heidelberg site — modelled as **six free-standing Questionnaires, one per dictionary group** (decided 2026-10-01; previously a single collective questionnaire `UKHD-AN`).

> **The `UKHD` prefix is a compilation label, not a statement of authorship.** The instruction sheet of the master Excel defines the `INSTRUMENT` column as the sites' choice of data-collection tool ("Here the sites can select … which instrument is to be used to capture the respective domain"), and the site columns as a timing matrix — on the AN sheet only the UKHD column is filled in, including for published instruments such as [ERQ-6](ERQ-6.html) and [ACE](ACE.html). The prefix therefore only distinguishes *published instrument chosen* from *item set contributed by the site* — it does **not** say that the site authored the items. Where the wording of each group comes from is not documented; see [Rights situation](#rechtelage).

### The six Questionnaires

| Questionnaire | Dictionary group | Items | Content | Example response |
|---|---|---|---|---|
| [UKHD-PT](Questionnaire-UKHDPT.html) | `UKHD-PT` | 2 | Past treatment: psychotherapy history (`bdkm15`), physician visits in the last 4 weeks (`bdkm16`) | [UKHDPTResponse](QuestionnaireResponse-UKHDPTResponse.html) |
| [UKHD-ANB](Questionnaire-UKHDANB.html) | `UKHD-ANB` | 2 (+2) | Eating-disorder history: duration of illness, lowest BMI — each a choice plus a PCOR-MII-own value item | [UKHDANBResponse](QuestionnaireResponse-UKHDANBResponse.html) |
| [UKHD-CT](Questionnaire-UKHDCT.html) | `UKHD-CT` | 1 | Current treatment status (`treatment_outpatient`) | [UKHDCTResponse](QuestionnaireResponse-UKHDCTResponse.html) |
| [UKHD-LE](Questionnaire-UKHDLE.html) | `UKHD-LE` | 4 | Stressful life events: the same question for three collection time points + free text (`enableWhen`, `any`) | [UKHDLEResponse](QuestionnaireResponse-UKHDLEResponse.html) |
| [UKHD-ND](Questionnaire-UKHDND.html) | `UKHD-ND` | 3 | New diagnoses since the last survey: two time windows + free text | — see [TIMING](#timing) |
| [UKHD-D](Questionnaire-UKHDD.html) | `UKHD_D` | 2 | Diagnoses on admission, free text | [UKHDDResponse](QuestionnaireResponse-UKHDDResponse.html) |

Two further UKHD groups are modelled **elsewhere**, one is **excluded**:

- **`UKHD-CTT`** (6 timing items on childhood trauma) lives in the [ACE](ACE.html): the dictionary explicitly states its `enableWhen` dependency on `ace1`–`ace3`, and per R4 `enableWhen.question` takes a `linkId` only within the same Questionnaire. The ACE thereby becomes a PCOR-MII composite.
- **`UKHD-EDP`** (11 items, presumably an EDI-2 subset) is its own [metadata-only questionnaire](UKHD-EDP.html).
- **`UKHD-BI`** (body image, 3 items) is **not modelled**: a visual figure scale that data collection does not yet use, and whose image panel is missing from the dictionary — the anchors of a visual scale are the measuring instrument itself, not labelling.
- The factual-question groups **`UKHD-AN`** (`AN_subtyp`), **`UKHD-W`** (weight history) and **`UKHD-MEDI`/`-MEDI2`** (medication) live in the [MHI](MHI.html) — they belong to the medical history, not to the AN supplementary collection.

### Why one Questionnaire per group

The first draft was a collective questionnaire (`UKHD-AN`, six `group` items). It was abandoned for three reasons:

1. **The groups are not a joint instrument.** The `UKHD` prefix labels the compilation, not an instrument identity — a collective questionnaire would have asserted a unity that does not exist. This became visible through a name collision: the dictionary group `UKHD-AN` genuinely exists, consists of exactly one item (`AN_subtyp`) and lives in the [MHI](MHI.html) — the collective questionnaire of the same name did not contain it.
2. **The rights and provenance question is answered per group.** `bdkm15`/`bdkm16` carry a foreign variable scheme, `UKHD-LE` looks like a designed battery, `UKHD_D` is an administrative question. If the site's reply comes back differentiated, each group is switched individually (metadata-only, following the [WAI](WAI.html) pattern) — without cutting published canonicals apart.
3. **`TIMING` becomes visible in the resource layout.** The groups have different collection time points; per questionnaire one response per visit arises — or none at all (see [TIMING](#timing)). A collective questionnaire had to explain the same fact as deliberately empty groups.

The cost is known and stated: six resources for 14 items, three of them with one or two items. [ADR-011](Designentscheidungen.html) has been extended by the site-group rule for this — the anti-fragmentation boundary remains unchanged for *published* instruments; for site item groups the **dictionary group** is the unit, because it is the unit of provenance and rights clarification.

Group membership remains machine-readable regardless: every item carries its dictionary variable as `item.code`, and the `instrument` property in [pcor-item-dictionary](CodeSystem-pcor-item-dictionary.html) names the group — no matter which resource the item lives in (`UKHD-CTT` in the ACE proves the point).

### Decisions shared by all six questionnaires

**`linkId` = dictionary variable ID** ([ADR-008](Designentscheidungen.html) rule 1, second part): there is no official item numbering; the variable ID is the items' only identity.

**Language `de` without a translation layer** ([ADR-005](Designentscheidungen.html)): no English original is documented; an English `item.text` layer would be an unvalidated PCOR-MII translation in the place where the collected wording belongs.

**Wording taken over verbatim** ([ADR-010](Designentscheidungen.html)), normalising only line breaks and duplicate spaces from the Excel cells. **Linguistic errors of the source remain in place** and are individually flagged: `lowBMI` "Ihr niedrigter BMI", `comorbid1` "den zurvor genannten", in `UKHD-LE` "Auflösung einer Partnerschaften" and "Verlust ihres Zuhauses". A cleaned layer would only be admissible in addition and is deliberately not provided — the dictionary *is* the source here; there is no second source against which typos could be distinguished from transcription errors. The correction belongs in the dictionary.

**No score, no instrument codes:** there is no instrument that could be scored. LOINC 2.83 and SNOMED CT 2026-05-01 return zero hits for the underlying concepts (searched via the fhir-terminology MCP, 2026-10-01); `Questionnaire.code` carries each questionnaire's local catalogue code from [pcor-questionnaire-catalogue](CodeSystem-pcor-questionnaire-catalogue.html).

**Yes/no** uses the project-wide [DemJaNeinVS](ValueSet-dem-ja-nein.html) (dictionary coding 1 = yes / 0 = no, documentary). The remaining scales are dedicated CodeSystems whose `ukhd-an-*` prefix in id and canonical names the site and the entity, not a resource.

### Answer scales — `ordinalValue` only where the scale is ordinal

| Scale (questionnaire) | `ordinalValue` | Rationale |
|---|---|---|
| [ukhd-an-arztbesuche](CodeSystem-ukhd-an-arztbesuche.html) — `bdkm16` (UKHD-PT) | **yes**, 1–4 | monotonically increasing frequency, last step open-ended |
| [ukhd-an-psychotherapie](CodeSystem-ukhd-an-psychotherapie.html) — `bdkm15` (UKHD-PT) | **no** | three temporal references, not a quantity; someone in treatment both earlier *and* now has no step |
| [ukhd-an-behandlungsstatus](CodeSystem-ukhd-an-behandlungsstatus.html) — `treatment_outpatient` (UKHD-CT) | **no** | mixes two axes: 2→3 is a status change, 3→4 a setting change |
| [ukhd-an-dauer-angabe](CodeSystem-ukhd-an-dauer-angabe.html), [ukhd-an-bmi-angabe](CodeSystem-ukhd-an-bmi-angabe.html) (UKHD-ANB) | **no** | units and a reporting status, not steps; the measured value lives in the helper item |

**The trap in `bdkm16`:** the `ordinalValue` carries the dictionary codes 1–4 and thus rank positions, **not** visit counts — "not at all" is 1, not 0. A count-based analysis needs the mapping 1→0, 2→1, 3→2, 4→3+.

<a name="timing"></a>

### `TIMING` is not modelled — and visible nonetheless

The dictionary's `TIMING` column states at which collection time point an item is administered (i = initial, a/at = all, e = discharge). That is a property of the **collection plan**, not of the questionnaire — a `Questionnaire` describes *what* is asked, not *when*. R4 has no suitable element for it either.

The plan becomes visible in the **responses** instead, and the resource layout makes this sharper than before: at the initial/screening visit there are **five responses, not six** — for [UKHD-ND](Questionnaire-UKHDND.html) simply none exists, because none of its items is collected at the initial visit. In [UKHD-LE](Questionnaire-UKHDLE.html), `life_event1_monitoring` and `lifev_discharge` are absent for the same reason.

**The monitoring visit (2026-07-30) shows the other direction:** there the [first UKHD-ND response](QuestionnaireResponse-UKHDNDMonitoringResponse.html) exists (affirmed, with free text), [UKHD-LE](QuestionnaireResponse-UKHDLEMonitoringResponse.html) answers only the monitoring item (negated — `lifev_text` stays disabled via `enableWhen`), and [UKHD-PT](QuestionnaireResponse-UKHDPTMonitoringResponse.html) is a deliberate **partial response** with only `bdkm16`. UKHD-ANB and UKHD-D are not repeated — initial items. Both visits bundled: [initial](Bundle-pcor-mii-exa-bundle-an-initial.html) · [monitoring](Bundle-pcor-mii-exa-bundle-an-monitoring.html).

<a name="rechtelage"></a>

### Rights situation — a provenance question, not merely a clearance question

The DIZ implementation list covers **published** instruments only and does not know the site-related item groups of UKHD, UKE and MHH at all — for them neither a documented permission nor a documented restriction exists. And because the `UKHD` prefix only labels the compilation, a **provenance question** precedes the clearance question: where does the wording of each group come from — the site's own phrasing, in-house clinical documentation forms, or a published instrument?

The variable names give hints: most are descriptive study-database names (`weight_discharge`, `life_event1_screening`) — for these the risk is small. Three groups, however, carry **foreign, opaque abbreviation schemes**, the signature of an external source: `bdkm15`/`bdkm16` ([UKHD-PT](Questionnaire-UKHDPT.html)), `erwEV24`–`erwEV26` (`UKHD-BI`, not modelled) and `edp1`–`edp11` ([UKHD-EDP](UKHD-EDP.html), suspected EDI-2 subset). A publisher may be affected there.

That the wording is included nonetheless is a **deliberate project decision for piloting, not a settled rights situation.** Each of the six resources carries `status = draft`, `experimental = true` and a `copyright` saying exactly that. Should the site's reply impose a restriction, the switch to metadata-only happens **per group** (following the [WAI](WAI.html) pattern); the example responses would be unaffected — they contain no item texts.

### Open points regarding the dictionary

Issues surfaced during modelling that are **not solvable in FHIR** but belong in the Item Level Dictionary or with the site. Each is also recorded as a `designNote` on the affected item.

**1. Provenance of the wording unclarified per group** — see [Rights situation](#rechtelage); to be asked specifically for `bdkm`, `erwEV` and `edp`.

**2. `bdkm15` and `treatment_outpatient` overlap.** Both ask about current psychotherapeutic treatment — in two questionnaires, with two different answer scales. They differ in temporal scope (`bdkm15` on admission only and with history, `treatment_outpatient` at every visit and with setting), but partly deliver the same information on admission. To be checked in the dictionary.

**3. The variable name `treatment_outpatient` is misleading.** Level 4 of the answer scale explicitly captures **inpatient or day-clinic** treatment; the item asks about treatment status overall. The name remains as `linkId` and `item.code` because it is the dictionary variable — but it must not be read as a statement of meaning.

**4. `comorbid1` — formally unclean, deliberately left as is (decided 2026-10-01).** The question is literally a yes/no question, but the dictionary provides a **text field**. The text field is what is meant: the additional **diagnoses** go there, not a "yes". `type = text` models the actual collection correctly; the wording remains unchanged per [ADR-010](Designentscheidungen.html). Practical consequence: **the field contains diagnosis text, not a yes/no value.**

**5. Inconsistent variable names in `UKHD-LE`.** `life_event1_screening`/`life_event1_monitoring` versus `lifev_discharge`/`lifev_text` — two prefixes for one group, and no `life_event2` exists. In addition, the example list of `life_event1_screening` says merely "Partnerschaften" where the other two say "Auflösung einer Partnerschaften"; the head of the phrase is evidently missing there.

**6. The group ID `UKHD_D` carries an underscore** while all other groups use a hyphen. To be harmonised in the dictionary; resource id and catalogue code follow the house convention (`UKHD-D`/`ukhd-d`), the dictionary spelling is preserved in the `instrument` property.

**7. `bdkm16` asks about physician visits but sits in *Past Treatment*.** In content it belongs to healthcare utilisation (cf. `UKE-HCU` in PSS).

**8. `UKHD-D` overlaps with the [MHI](MHI.html).** There, `CPCOR-DIAG` (self-assigned diagnosis group) and `GIPS13` (list of chronic conditions) collect in **coded** form what is collected here as **free text**. Which representation is authoritative for analysis is a clinical question.

### Note on data collection

[UKHD-LE](Questionnaire-UKHDLE.html) touches **highly sensitive content** (loss experiences, abuse), as does the `UKHD-CTT` group located in the [ACE](ACE.html) (childhood adversity). Governance of the evaluation — analogous to the PHQ-SI — remains to be clarified clinically.

Notes on the lifecycle from `Questionnaire` to `QuestionnaireResponse` are under [Implementation](Implementation.html); all artefacts are listed under [Artifacts](artifacts.html).
