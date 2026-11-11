This page collects **for all instruments together** what is known about their rights situation, how they are modelled as a consequence, and which questions are still open — including the clinical points that cannot be solved in FHIR but in the Item Level Dictionary, with a site, or with the use-case lead. The use-case pages [PSS](PSS.html), [AN](AN.html) and [NTx](NTx.html) point here instead of repeating the situation per questionnaire; the [design decisions](Designentscheidungen.html) (German) contain only what has been decided.

Answered questions disappear from this page: they become an ADR, a paragraph on the instrument page, or an entry in the [release notes](Release-Notes.html).

### How the rights situation determines the modelling

The rights situation determines *how* an instrument is modelled — not how important it is:

- **free** — complete questionnaire with item texts, answer options and scoring.
- **Usage agreement** (PROMIS via CPCOR, WHODAS via WHO, EQ-5D-5L via EuroQol) — complete, but under the respective agreement; conditions in the `copyright` element.
- **metadata-only** — no verbatim items or answers in the published package. Structure, `linkId`s, value ranges, score definition and how to obtain the instrument only. Applies to [WAI](WAI.html), [UKHD-EDP](UKHD-EDP.html) and [BAASIS, ABQ and MTSOSD-R59](NTx-Instrumente.html). For the three licensed NTx questionnaires a **private collectable variant** is added per [ADR-014](Designentscheidungen.html), delivered to licensed centres only.
- **clearance open** — the wording is included, but **no documented permission is on record**. This is not a rights status of its own but a state of knowledge: the DIZ implementation list covers published instruments only and says nothing about the site-specific item groups. Applies to the [UKHD supplementary items](UKHD-Zusatzitems.html), the MHH questionnaires [MHI-NTx and NTx follow-up](NTx-Instrumente.html) and the 34 site items already published in the [MHI](MHI.html). If a restriction emerges, metadata-only per group is the intended remedy.

The source of the rights information is the **DIZ implementation list PCOR-MII** (as of 24 July 2026). Its licence column visibly records *availability for research*, not whether the wording may be passed on in a specification; for every instrument with a published German version the entry has therefore been checked independently. That is a working rule of this project, not legal advice.

<a name="publiziert-verlegt"></a>

### Published is not the same as commercially published

Several of the open rights points hinge on the same distinction, which does not occur in the DIZ implementation list:

**Published** means: the instrument has been reported on — typically in a journal article describing construction, psychometrics or validation. The article is citable and often freely accessible. Whether the *questionnaire itself* may be reused is a different question.

**Commercially published** ("verlegt") means: the instrument is a **publisher's product** — manual, questionnaire and scoring sheet are distributed as a work. Here the wording is not a by-product of a publication but the goods themselves, with rights reservations that explicitly cover reuse of the wording.

In practice: **freely accessible is not freely reusable.** A publisher offering a PDF for download is a service, not a licence. Conversely an instrument may formally be published "only" in a journal and still be freely usable when the authors provide the questionnaire themselves.

### Status per instrument

| Instrument | Rights situation | Modelling in PCOR-MII | Open |
|---|---|---|---|
| PHQ-9/-8, PHQ-15, GAD-7, EURONET-SOMA, SSD-12, WI-7, SCOFF, ISR-Z, PC-PTSD, WHODAS 2.0, PROMIS-16/-29/Cognitive Function, EQ-5D-5L | governed in the **MII PRO module** (free or usage agreement CPCOR, WHO, EuroQol) | referenced, not rebuilt ([ADR-002](Designentscheidungen.html)) | — |
| [PROMIS-GH](PROMIS.html) (Global01/02) | CPCOR agreement | 2-item subset, `derivedFrom` the module definition | `linkId`s and continued existence — [below](#promis-gh) |
| [DEM](Demographie.html) | OECD items: non-commercial use and translation permitted ✅ · four PaRIS third-party instruments (NHIS, Commonwealth Fund, MED-HIMS, WHO Model Disability Survey): check open · GI-PS (2 items): consent required | complete, `copyright` with provenance breakdown and OECD disclaimer | [DEM/MHI provenance](#dem-mhi) |
| [MHI](MHI.html) | GI-PS (9 items): consent required · 34 site items (UKHD-W, UKHD-AN, UKHD-MEDI, UKE-MEDI): no documented clearance, trivial factual questions | complete | [DEM/MHI provenance](#dem-mhi), [site groups](#standortgruppen) |
| [OPD-SFK](OPD-SFK.html) | published, rights with authors/publisher — free **after consultation** | complete with sum score | — |
| [WAI](WAI.html) | FIOH: use without permission, do not sell, cite; German version of the German WAI network open | **metadata-only** until clarified | [WAI](#wai) |
| [GSLTPAQ](GSLTPAQ.html), [EXPECT](EXPECT.html), [IPQ-S](IPQ-S.html), [PHQ-D panic block](PHQ-Panik.html) | free; EXPECT is not a standardised scale | complete | — |
| [ERQ-6](ERQ-6.html) | published **and** freely provided by the authors (Stanford Psychophysiology Laboratory) | complete, no score | [AN scoring](#an-scoring) |
| [ANSOCQ-2](ANSOCQ-2.html) | published; German version by the validation authors (Switzerland) | complete, `en` primary with `de-CH`, no score | [AN scoring](#an-scoring) |
| [SSUK-2](SSUK-2.html) | published (adaptation of the ISSS) | complete, no score | [AN scoring](#an-scoring) |
| [EDE-Q6](EDE-Q6.html) | **commercially published** (dgvt-Verlag, © Anja Hilbert, all rights reserved) — DIZ list says "free" | complete per [ADR-006](Designentscheidungen.html), `copyright` states the reservation | [EDE-Q6](#ede-q6) |
| [ACE](ACE.html) | English original published (Felitti 1998, public-health standard) · **German version ACE-D** © Schäfer, Wingenfeld & Spitzer 2009, full questionnaire only from the author | complete, composite with `UKHD-CTT` | [ACE-D](#ace-d), [site groups](#standortgruppen) |
| [UKHD supplementary items](UKHD-Zusatzitems.html) (6 questionnaires) and `UKHD-CTT` | **not listed** in the DIZ list; origin of the wording per group unresolved | complete, `status = draft`, `experimental = true`, `copyright` with reservation — deliberate project decision for piloting | [site groups](#standortgruppen) |
| `UKHD-BI` | as UKHD supplementary items | not modelled: visual picture scale without picture template | [site groups](#standortgruppen) |
| [UKHD-EDP](UKHD-EDP.html) | probably an EDI-2 subset (Hogrefe test); neither "EDI" nor "UKHD-EDP" in the DIZ list — **unassessed** | **metadata-only** | [UKHD-EDP](#ukhd-edp) |
| [BAASIS](NTx-Instrumente.html#baasis) | © University of Basel; research without pharmaceutical involvement free of charge, permission per project, **items and answer options not publishable**, data sharing with the validation project (Term IV) | **metadata-only** + private collectable variant ([ADR-014](Designentscheidungen.html)) | [NTx](#ntx) |
| [ABQ](NTx-Instrumente.html#abq) | Müller, Kohlmann & Wilke 2015; licence agreement per centre, items not publishable | **metadata-only** + private variant | [NTx](#ntx) |
| [MTSOSD-R59](NTx-Instrumente.html#mtsosd-r59) | © KU Leuven; German version (MAPI) from the first authors, items not publishable | **metadata-only** + private variant | [NTx](#ntx) |
| [MHI-NTx, NTx follow-up](NTx-Instrumente.html) (MHH) | site items, not listed in the DIZ list; trivial factual questions | complete, reservation in `copyright` | [site groups](#standortgruppen) |
| `UKE-HCU/HCU2/PSE/TR/DOT` (PSS) | site items, not listed in the DIZ list | not modelled | [site groups](#standortgruppen) |

**Sources of the licensed instruments** — also machine-readable in the `copyright` element of the resources; only the PCOR-MII FHIR content itself is under the repository licence (CC-BY-4.0):

| Instrument | Rights holder | How to obtain |
|---|---|---|
| BAASIS | University of Basel | permission: <https://baasis.nursing.unibas.ch/how-to-obtain> |
| ABQ | Müller S, Kohlmann T, Wilke T (2015) | licence agreement per centre; route to be clarified |
| MTSOSD-R59 | KU Leuven | contact: joke.willems@kuleuven.be |

### Open rights questions

<a name="wai"></a>

#### WAI — reassess publication rights
**Status:** open, added 2026-11-05 · **Answer from:** German WAI network (wai@uni-wuppertal.de)

The [WAI](WAI.html) is metadata-only (the pattern for ADR-012) because the DIZ implementation list notes "probably not suitable for publication". The note names no source. The terms of use of the originator, the Finnish Institute of Occupational Health ([ttl.fi](https://www.ttl.fi/en/themes/well-being-at-work-and-work-ability/tyokyky/using-the-work-ability-index-wai), accessed 2026-11-05), say the opposite: *"The method is publicly available. You do not need permission from the Finnish Institute of Occupational Health to use the Work Ability Index."* Use for research and one's own organisation is free, own questionnaires and translations are allowed. Conditions: cite the authors (Tuomi et al. 1998), do not sell the instrument as such, and give modified versions a name of their own; FIOH does not distribute the questionnaire itself.

One question remains: the German wording in the dictionary is the questionnaire of the **German WAI network** (INQA, University of Wuppertal, with the BAuA). According to the widely circulated questionnaire PDF, individual use is free and only use in companies requires consent; whether the translation may be passed on in a specification is not documented. The WAI is published and released by its originator, not [commercially published](#publiziert-verlegt).

**Next steps:** (1) ask the German WAI network whether the German wording of the three items may be published in the IG. (2) Independently, the verbatim questionnaire can be provided on the questionnaire server right away — that is use, not publication, and covered by the FIOH terms. (3) On a positive answer switch to the full version with citation and FIOH attribution in `copyright`; the short form stays named "Work Ability Score", as FIOH requires for modified versions. (4) Correct the DIZ list.

<a name="standortgruppen"></a>

#### Site-specific item groups (UKHD, UKE, MHH) — clearance missing
**Status:** open, added 2026-09-30, refined 2026-10-01 and 2026-11-05 · **Answer from:** the Heidelberg, Hamburg and Hannover sites

The DIZ implementation list covers **published instruments** only. The site-specific item groups — Heidelberg (`UKHD-*`), Hamburg (`UKE-*`), Hannover (`MHH-*`) — do **not occur** there at all. For them neither a permission nor a restriction is documented: it is not a legal question the list could answer but a **governance decision of the sites**.

The dictionary contains 97 such variables. **34 of them PCOR-MII already publishes with full wording**, all in the [MHI](MHI.html): `UKHD-W` (4), `UKHD-AN` (1), `UKHD-MEDI` (2), `UKE-MEDI` (27).

**Proposal: do not withhold wholesale, but distinguish two kinds.** *Trivial factual questions* — body weight, AN subtype, medication list. "How much do you currently weigh in kg?" is not a protectable creation, and without the wording the DIZ cannot implement the items uniformly. These 34 remain published; the same holds for the MHH items in [MHI-NTx and the NTx follow-up](NTx-Instrumente.html). *Designed item batteries* — `UKHD-CTT` (6, timing of childhood trauma), `UKHD-BI` (3, body image), `UKHD-LE` (4, life events), `UKHD-ANB` (2), `UKHD-PT` (2), `UKHD-CT` (1), `UKHD-ND` (3), `UKHD_D` (2). Here there is authorship from Heidelberg.

Seven of these groups are modelled — six as **one Questionnaire each** ([UKHD supplementary items](UKHD-Zusatzitems.html), one questionnaire per dictionary group per the site-group amendment in ADR-011) and `UKHD-CTT` inside the [ACE](ACE.html), which thereby becomes a PCOR-MII composite. That is a **deliberate project decision for piloting and not a clearance**. The rights question itself has been refined: the `UKHD` prefix is a **compilation label** of the dictionary, not a statement of authorship — the manual of the master spreadsheet defines the `INSTRUMENT` column as the sites' choice of collection tool. Before the clearance question therefore comes a **provenance question**: where does the wording of each group come from — own phrasing, in-house documentation forms or a published instrument? The variable names give hints: most are descriptive study-database names (`weight_discharge`, `life_event1_screening`), where the risk is small. Three groups carry foreign, opaque abbreviation schemes, the signature of an external source: `bdkm15`/`bdkm16` ([UKHD-PT](Questionnaire-UKHDPT.html)), `erwEV24`–`erwEV26` (`UKHD-BI`) and `edp1`–`edp11` ([UKHD-EDP](UKHD-EDP.html), see its own point). All resources carry `status = draft`, `experimental = true` and a `copyright` stating the reservation. If the feedback brings a restriction, the switch to metadata-only is made **per group** (pattern [WAI](WAI.html)); the example responses would be unaffected because they contain no item texts.

`UKHD-BI` is deliberately not modelled, and not for rights reasons: data collection does not yet use the visual picture scale, and the dictionary lists as answer option only a reference to a picture tab — without the picture template the item cannot be modelled, because the anchors of a visual scale are the object of measurement here, not labelling.

For **UKE** nothing is modelled (`UKE-HCU/HCU2/PSE/TR/DOT`, healthcare utilisation in PSS). For **MHH** the three screening items are modelled as [MHI-NTx](NTx-Instrumente.html#mhi-ntx-transplantationsanamnese) and the 18 monitoring items as the [NTx follow-up questionnaire](NTx-Instrumente.html#ntx-verlaufsbefragung-mhh) with full wording from the dictionary; **open for MHH** are the clearance of the wording, the group label for `MHH_PTH1`/`MHH_PTH2` in the dictionary, and whether the groups are collected quarterly as one questionnaire or separately.

**To clarify:** confirmation by UKHD, UKE and MHH for both kinds — retroactively for the published factual items and prospectively for the batteries. Until then the status quo is an assumption, not a clearance.

<a name="ukhd-edp"></a>

#### UKHD-EDP — probably an EDI-2 subset, rights unassessed
**Status:** open, added 2026-09-30; modelled as metadata-only 2026-10-01 · **Answer from:** UKHD (identification), then Hogrefe

The collection plan lists 17 items for the domain *Eating Disorder Psychopathology* under the entry "EDEQ/EDP (UKHD)". These are **two instruments, not one**: the 6 items of the [EDE-Q6](EDE-Q6.html) and 11 items with the variable IDs `edp1`–`edp11`. They cannot be merged — the EDE-Q asks "on how many of the last 28 days" on a frequency scale 0–6, the `edp` items ask timelessly for agreement ("1 = never true").

**The UKHD prefix is misleading.** The 11 items each represent one construct — drive for thinness, bulimia, body dissatisfaction, ineffectiveness, perfectionism, interpersonal distrust, interoceptive awareness, maturity fears, asceticism, impulse regulation, social insecurity — and those are **the eleven subscales of the EDI-2** (*Eating Disorder Inventory-2*, Garner 1991; German version Paul & Thiel, Hogrefe 2005), one item per scale, i.e. the same subset pattern as EDE-Q6, ANSOCQ-2 and SSUK-2. A further indication: the answer format is **six-point**, as in the EDI-2; the other instruments of the AN battery use four, five or seven points. It is therefore very probably **not** an in-house development of the site but a subset of a commercially published test — published goods like the BDI-II, which the MII PRO module keeps as "data + scoring only, not displayable" for exactly that reason. The DIZ list has neither a row "EDI" nor "UKHD-EDP"; the rights situation is thus not "free" but **not assessed at all**.

**Implemented as metadata-only**, because that is right under both readings: if it is the EDI-2, the publisher's reservation forbids the wording; if it is a site original, clearance is missing. The displays of the eleven variables in the CodeSystem [pcor-item-dictionary](CodeSystem-pcor-item-dictionary.html) are neutralised as well.

**To clarify, in this order:** (1) confirm the identification as an EDI-2 subset against the German original questionnaire — `edp8` and `edp5` are characteristic. (2) On confirmation, update the DIZ list and clarify the rights with Hogrefe. (3) Only then assign `Questionnaire.code` or EDI-2 `linkId`s ([ADR-008](Designentscheidungen.html)).

<a name="ace-d"></a>

#### ACE-D — the German version is not freely publishable
**Status:** open, added 2026-09-30 — **retroactively affects five published items** · **Answer from:** Prof. Dr. Ingo Schäfer (University of Hamburg)

The DIZ implementation list lists the ACE as "freely available". That is true of the **English original** (Felitti et al. 1998, Kaiser Permanente / CDC), but the **German version ACE-D** is something else. Evidenced by the authors' own usage practice: the *Deutsches Ärzteblatt* prints, in a population-representative ACE study (Witt et al., Dtsch Arztebl Int 2019;116:635–42, [doi:10.3238/arztebl.2019.0635](https://doi.org/10.3238/arztebl.2019.0635)), explicitly only **two sample questions** of ten in the supplement, with the note: "Copyright and citation: Ingo Schäfer, Katja Wingenfeld and Carsten Spitzer (2009) ACE-D … **The complete questionnaire can be obtained from Prof. Dr. Ingo Schäfer.**" That is the pattern "available on request", not "freely publishable" — the same pattern as with the [OPD-SFK](OPD-SFK.html), where the consultation has already been conducted successfully.

**Consequences:** (1) PCOR-MII already publishes the five German ACE items with full wording; the consultation is to be sought, following the OPD-SFK pattern. (2) An ACE-10 with German wording cannot be modelled from public sources; without consent only an English-primary version or metadata-only would be possible. (3) Positive side finding: the printed sample question on physical abuse is verbatim our `ace2` — thus confirmed against a peer-reviewed source.

<a name="ede-q6"></a>

#### EDE-Q6 — clarify the rights of the German translation
**Status:** open, added 2026-09-29 · **Answer from:** Prof. Anja Hilbert (Leipzig University Medical Center)

The DIZ implementation list lists the instrument as "freely available", whereas the source publication explicitly reserves all rights. The wording used in PCOR-MII comes — verbatim, all six items and the answer scale — from **Hilbert A, Tuschen-Caffier B,** *Eating Disorder Examination-Questionnaire. Deutschsprachige Übersetzung*, 2nd ed., Tübingen: dgvt-Verlag 2016: "All rights reserved. […] This applies in particular to reproductions, translations, microfilming and **storage and processing in electronic systems**." (© 2016 Anja Hilbert). The last clause describes exactly what a FHIR `Questionnaire` does; that dgvt-Verlag offers the PDF for free download changes nothing.

EDE-Q6 is thus the third case of this kind, next to GI-PS and the already settled OPD-SFK. Same route: obtain the rights holder's consent, otherwise metadata-only per the [WAI](WAI.html) pattern. `Questionnaire.copyright` states the reservation until then; the licence column of the [instrument overview](Instrumente.html) says "confirmation sought" ([ADR-006](Designentscheidungen.html)). Side finding: the DIZ list cites the *Diagnostica* publication of 2007 as the translation paper — that is the psychometric evaluation, not the translation; for wording questions the dgvt edition is authoritative.

<a name="dem-mhi"></a>

#### Provenance rights of the DEM/MHI items
**Status:** OECD share settled ✅ (2026-09-24) · four PaRIS third-party instruments and GI-PS open · **Answer from:** rights holders of the GI-PS; check of the third-party instruments by the project

**OECD (5 items in DEM) — settled.** The items come from the **OECD PaRIS Patient Questionnaire**; the `linkId`s in DEM are the PaRIS variable names (`Q_OECDLIT5a`, `Q_OECDLIT7a`, `Q_OECDLITii`, `OECDLIT2a`, `OECDLIT2b`), the prefix stands for *OECD Measuring Financial **Lit**eracy*. The OECD Terms and Conditions permit non-commercial use **and translation without explicit permission**, provided the OECD is named as originator, the original is linked and the prescribed translation disclaimer is included; unlike PISA, PaRIS has no special conditions. The restriction in the DIZ list ("not published, for internal use only") describes the status of the translation, not the rights situation of the instrument. `Questionnaire.copyright` of [DEM](Demographie.html) carries the provenance breakdown, the OECD attribution and the disclaimer. The German wording is the **Swiss PaRIS version** (Unisanté, Lausanne; recognisable by Helvetisms such as "einschliesslich" and "Ich weiss es nicht"), i.e. an official TRAPD translation, adopted unchanged per [ADR-005](Designentscheidungen.html).

**Four PaRIS third-party instruments — check open.** The PaRIS-PQ is itself a compilation, and the OECD explicitly excludes third-party content from its permission: *"The User is responsible for verifying whether this is the case and, if so, securing the appropriate permissions."*

| DEM `linkId`s | PaRIS source instrument | Rights situation |
|---|---|---|
| `Q_MONMED` | National Health Interview Survey (NHIS) | US government work — usually free, check open |
| `Q_MON`, `MONMEAL`, `MONRENT`, `MONBILLS` | Commonwealth Fund International Health Policy Surveys 2016/2017 | private foundation — the least clear case |
| `MEDHIMS6`, `MEDHIMS7` | MED-HIMS (European Union 2019) | EU publication — usually free, check open |
| `WHODIS`, `WHODIS1`, `WHODIS2` | WHO/World Bank Model Disability Survey (WHO 2017) — **not** the WHODAS 2.0 | WHO publication — usually free, check open |

It also remains sensible to compare the official German PaRIS translation (cApStAn, TRAPD, 16 languages) with the wording used — then the disclaimer reservation would fall away.

**GI-PS (2 items in DEM, 9 items in MHI) — a genuine distribution restriction.** Quote from the DIZ list: "The ownership, copyright, distribution and publication rights … remain with the respective test authors, i.e. the gi-ps or parts of it may not be modified, translated or passed on to third parties without the consent of the rights holders." (development paper: [10.13109/zptm.2023.69.1.56](https://doi.org/10.13109/zptm.2023.69.1.56)). Unlike the OECD there is no general permission: **consent of the rights holders** is required, otherwise the affected items are to be switched to metadata-only. `Questionnaire.copyright` of DEM and MHI states the reservation. The licence table on [Instruments](Instrumente.html) does not yet list OECD and GI-PS.

<a name="ntx"></a>

#### BAASIS, ABQ, MTSOSD-R59 — licensees, sources, versions
**Status:** open, added 2026-11-05 · **Answer from:** NTx use-case lead, MHH, University of Basel, KU Leuven

The three instruments are metadata-only with a private collectable variant ([ADR-014](Designentscheidungen.html)); the rights are in the table above. Open:

- **Licensee:** the University of Basel grants the BAASIS permission **per project** through its online form, the DIZ list speaks of a licence agreement **per centre**. This determines how the licence gate on the questionnaire server is cut (role per site or per project).
- **Data sharing:** using the BAASIS obliges to share the data with the ongoing validation project of the University of Basel (Term IV). The use-case lead should know that before the licence request. Publications must cite Denhaerynck et al. 2023, Haupenthal et al. 2025 and the website.
- **BAASIS 2_a:** the dictionary gives a rate scale for sub-question 2_a (from once to almost daily), the official explanation gives the same count categories for all three sub-questions. Whether the rate scale matches the licensed German questionnaire (version 2021) or is a local deviation is to be checked with MHH. Until then both scales are modelled separately.
- **ABQ:** route to the licence agreement to be clarified. The **polarity** of the weights 1–4 is not verified against the original instrument — the dictionary lists the agreement level with value 1 as first option; whether the level order reflects barrier strength in the expected direction is to be checked before productive use. For `ABQ_01` the dictionary names only BAASIS1A as trigger, for all other items BAASIS1A/2/3/4 — presumably an inconsistency.
- **MTSOSD-R59:** whether MHH uses the German version linguistically validated by the MAPI Research Institute is to be confirmed. And the **collection scope** is open: according to the dictionary the complete questionnaire was collected, the *Domain Overview* sheet lists only the domains tremor and diarrhoea for monitoring (priority A, quarterly, telemonitoring weekly), the *Comments and Questions* sheet asks "complete side effects? Or separate?". The questionnaire is the basis in both cases; a telemonitoring subset of symptoms 16 and 30 would be derived as its own resource via `derivedFrom` ([ADR-008](Designentscheidungen.html)).
- **PHQ-15 in NTx:** the Domain Overview lists PHQ-15 for PSS only, the NTx dictionary sheet includes it; the NTx manifests therefore do not pin it. Decision of the use-case lead.

### Further open points

<a name="promis-gh"></a>

#### PROMIS-GH — `linkId`s and continued existence of the 2-item questionnaire
**Status:** open, added 2026-11-11 · **Decision:** maintainer and use-case lead

Since 2027.0.0-ballot.2 the MII PRO module carries the complete PROMIS Scale v1.2 – Global Health (`mii-qst-pro-promis-global-health`, 10 items, status `draft`; German translation there so far only for Global01, Global02 and Global07). [`PROMISGH`](Questionnaire-PROMISGH.html) is declared via `derivedFrom` as its 2-item subset. Two questions: (1) the `linkId`s here are the dictionary variables `Global01`/`Global02`, upstream the same items are `promis-global01`/`promis-global02` — [ADR-008](Designentscheidungen.html) would argue for the upstream IDs, which would be a breaking change for existing responses. (2) If the local questionnaire is dropped in favour of the module definition, the sites collect ten items instead of two — that is decided by the collection plan, not by the technology.

<a name="an-scoring"></a>

#### AN instruments — scoring, visual scales, dictionary erratum
**Status:** open (as of 2026-09-29; source verification of all five instruments completed) · **Decision:** AN use-case lead

- **Scoring:** all five are subsets ("most discriminating item per scale" or "first 5 questions") for which no validated scoring rule exists. Deliberately no score item — until an evaluation rule is agreed; the answer codes carry `itemWeight` as a precaution. The former ERQ score has been withdrawn because the questionnaire is not the ERQ-S (see [ERQ-6](ERQ-6.html)).
- **Visual scales:** the answer scales of ERQ-6 (1–7) and EDE-Q item 27 (0–6) exist in the dictionary only as graphics (tabs "ERQ" / "EDE-Q27"); the anchors were taken from the graphics and are to be checked against the original questionnaires.
- **EDE-Q6 — erratum in the dictionary:** the condition for `edeq30` reads "If edeq31 = 1"; no variable `edeq31` exists in the AN sheet. Implemented as `enableWhen` on `edeq29` (the yes/no question directly before) — to be corrected in the dictionary.

<a name="ukhd-dictionary"></a>

#### UKHD supplementary items — open points on the dictionary
**Status:** open, added 2026-10-01 · **Decision:** UKHD and dictionary maintenance

While modelling the [UKHD supplementary items](UKHD-Zusatzitems.html), issues surfaced that cannot be solved in FHIR; they are also recorded as `designNote` on the respective item.

1. **Origin of the wording per group unresolved** — see [site groups](#standortgruppen); specifically to be asked for `bdkm`, `erwEV` and `edp`.
2. **`bdkm15` and `treatment_outpatient` overlap.** Both ask about current psychotherapeutic treatment — in two questionnaires, with two answer scales. They differ in time reference (`bdkm15` only at admission and with history, `treatment_outpatient` at every visit and with setting), but at admission partly deliver the same information.
3. **The variable name `treatment_outpatient` is misleading.** Level 4 of the answer scale explicitly captures inpatient or day-clinic treatment; the item asks about treatment status overall. The name stays as `linkId` and `item.code` but must not be read as a statement of meaning.
4. **`comorbid1` — formally unclean, deliberately left (decided 2026-10-01).** The question is literally a yes/no question, the dictionary provides a text field; the text field for further diagnoses is what is meant. `type = text` models the collection correctly, the wording stays unchanged per [ADR-010](Designentscheidungen.html).
5. **Inconsistent variable names in `UKHD-LE`.** `life_event1_screening`/`life_event1_monitoring` versus `lifev_discharge`/`lifev_text` — two prefixes for one group, and no `life_event2` exists; the example list of `life_event1_screening` apparently lacks the head of the phrase "break-up of a partnership".
6. **The group ID `UKHD_D` carries an underscore**, all others a hyphen. Resource id and catalogue code follow the house convention (`UKHD-D`/`ukhd-d`), the dictionary spelling is preserved in the property `instrument`.
7. **`bdkm16` asks about physician visits but sits under *Past Treatment*.** In content the item belongs rather to healthcare utilisation (cf. `UKE-HCU` in PSS).
8. **`UKHD-D` overlaps with the [MHI](MHI.html).** There `CPCOR-DIAG` and `GIPS13` collect as codes what is collected here as free text. Which representation is authoritative for the analysis is to be settled clinically.
9. **Highly sensitive content:** [UKHD-LE](Questionnaire-UKHDLE.html) (loss experiences, abuse) and the group `UKHD-CTT` inside the [ACE](ACE.html) (childhood adversity) need, like the PHQ-SI, a governance of the evaluation.

<a name="phq-sads"></a>

#### PHQ-SADS — different recall for shared items
**Status:** open, **MII PRO module roadmap 2027** (as of 2026-09-02) · **Decision:** MII PRO module

The PHQ-SADS is the joint evaluation of PHQ-15, GAD-7 and PHQ-9. In the shared PHQ-D namespace these are 31 items but only **29 distinct `linkId`s**: `phq-phq2c` (sleep problems) and `phq-phq2d` (tiredness) belong to PHQ-15 **and** PHQ-9. PHQ-15 has a 4-week recall, PHQ-9 and GAD-7 a 2-week recall; the shared item is answered once but enters two scores with different time references. This cannot be solved at item level and must be reflected in the score interpretation. Responsible is the MII PRO module, where the PHQ questionnaires, the namespace and the score `ObservationDefinition`s are maintained; PCOR-MII documents the conflict in the "PHQ-SADS" section of the [PHQ overview](PHQ.html) and adopts the solution once it is taken upstream.

#### Rows of the collection plan not yet modelled

PROMIS NRS Pain Intensity 1a as a stand-alone instrument (the item is inside PROMIS-29), the summary scores PHS/PCS/MHS/MCS (priority A, no artefact), the PROMIS-16 domain T-scores (upstream roadmap 2027), the UKE healthcare-utilisation items in PSS and `UKHD-BI` in AN. Details in the tables of the use-case pages.
