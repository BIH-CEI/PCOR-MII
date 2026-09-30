The PCOR-MII Implementation Guide defines standardised **FHIR R4 Questionnaires** for capturing patient-centered data (Patient-Centered Outcomes Research, PCOR) in the context of the German [Medical Informatics Initiative (MII)](https://www.medizininformatik-initiative.de/), and explains how to use them.

### Purpose of this Implementation Guide

This IG provides uniform, interoperable questionnaires with which patient-reported information can be captured in a structured, cross-site comparable and machine-readable way. It defines:

- **Questionnaires** — FHIR questionnaire definitions with stable `linkId`s, item types and answer options
- **Implementation guidance** — how the questionnaires are completed (`QuestionnaireResponse`), pre-populated and evaluated
- **Terminology bindings** — where required, bindings to LOINC, SNOMED CT and project-specific CodeSystems and ValueSets

### Audience

**Primary:**
- Software developers and system integrators embedding questionnaires into study and care systems
- Data Integration Centres (DIZ) at the MII sites

**Secondary:**
- Researchers analysing patient-reported outcomes
- Vendors of ePRO and study software

### How this guide is organised

Reachable from the menu bar:

1. **Questionnaires** — the defined questionnaires and how they are built
2. **Implementation** — how the questionnaires are completed and evaluated
3. **Release Notes** — versioning and change history
4. **Artifacts** — the machine-readable FHIR resources (Questionnaires, ValueSets, CodeSystems)

### A note on language

German is the **default language** of this guide, because its primary audience are the German MII sites. English pages are maintained as a translation; where a translation does not yet exist, the German page is shown instead.

That split also runs through the questionnaires themselves, and there it is a deliberate modelling decision rather than a matter of convenience: where an instrument's original is English, the English wording is the primary `item.text` and the German wording hangs off it as a `translation` extension. Where an instrument was developed in German, German is primary. The reasoning is recorded in [Design Decisions](Designentscheidungen.html), ADR-005 and ADR-010.

### Contact

- Technical questions or comments: thimo-andre.hoelter[at]charite.de or [GitHub Issues](https://github.com/BIH-CEI/PCOR-MII/issues)

This Implementation Guide is maintained by the [Berlin Institute of Health (BIH) – Core Unit eHealth & Interoperability (CEI)](https://www.bihealth.org/) at [Charité – Universitätsmedizin Berlin](https://www.charite.de/).
