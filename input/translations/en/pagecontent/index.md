The PCOR-MII Implementation Guide defines standardized **FHIR R4 Questionnaires** for capturing patient-centered data (Patient-Centered Outcomes Research, PCOR) in the context of the [German Medical Informatics Initiative (MII)](https://www.medizininformatik-initiative.de/) and explains their application.

### Objective of the Implementation Guide

This IG provides uniform, interoperable questionnaires that allow patient-reported information to be collected in a structured, cross-site comparable, and machine-readable way. It defines:

- **Questionnaires** – FHIR questionnaire definitions with unique `linkId`s, item types, and answer options
- **Application guidance** – how the questionnaires are filled in (`QuestionnaireResponse`), pre-populated, and evaluated
- **Terminology bindings** – where required, links to LOINC, SNOMED CT, and project-specific CodeSystems/ValueSets

### Target Groups

**Primary target groups:**
- Software developers and system integrators embedding questionnaires into research and care systems
- Data Integration Centers of the MII sites

**Secondary target groups:**
- Researchers evaluating patient-reported outcomes
- Vendors of ePRO / study software

### Structure of the Implementation Guide

Accessible via the menu bar:

1. **Questionnaires** – overview of the defined questionnaires and their structure
2. **Implementation** – detailed description of how the questionnaires are filled in and evaluated
3. **Release Notes** – versioning and change history
4. **Artifacts** – machine-readable FHIR resources (Questionnaires, ValueSets, CodeSystems)

### Contact

- Technical questions or comments: thimo-andre.hoelter[at]charite.de or [GitHub Issues](https://github.com/BIH-CEI/PCOR-MII/issues)

This Implementation Guide is maintained by the [Berlin Institute of Health (BIH) – Core Unit eHealth & Interoperability (CEI)](https://www.bihealth.org/) at [Charité – Universitätsmedizin Berlin](https://www.charite.de/).
