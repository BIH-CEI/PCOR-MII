Der PCOR-MII Implementation Guide definiert standardisierte **FHIR R4 Questionnaires** für die Erfassung patientenzentrierter Daten (Patient-Centered Outcomes Research, PCOR) im Kontext der [Medizininformatik-Initiative (MII)](https://www.medizininformatik-initiative.de/) und erklärt ihre Anwendung.

### Ziel des Implementation Guide

Dieser IG stellt einheitliche, interoperable Fragebögen bereit, mit denen patientenberichtete Angaben strukturiert, standortübergreifend vergleichbar und maschinenlesbar erhoben werden können. Definiert werden:

- **Questionnaires** – FHIR-Fragebogen-Definitionen mit eindeutigen `linkId`s, Item-Typen und Antwortoptionen
- **Anwendungshinweise** – wie die Fragebögen ausgefüllt (`QuestionnaireResponse`), vorbefüllt (Population) und ausgewertet werden
- **Terminologie-Bindungen** – soweit erforderlich, Anbindung an LOINC, SNOMED CT und projektspezifische CodeSysteme/ValueSets

### Zielgruppen

**Primäre Zielgruppen:**
- Software-Entwickler:innen und Systemintegrator:innen, die Fragebögen in Studien- und Versorgungssysteme einbinden
- Datenintegrationszentren der MII-Standorte

**Sekundäre Zielgruppen:**
- Forschende, die patientenberichtete Outcomes auswerten
- Hersteller von ePRO-/Studien-Software

### Struktur des Implementation Guide

Über die Menüleiste erreichbar:

1. **Fragebögen** – Überblick über die definierten Questionnaires und ihren Aufbau
2. **Anwendung** – detaillierte Beschreibung, wie die Fragebögen ausgefüllt und ausgewertet werden
3. **Release Notes** – Versionierung und Änderungshistorie
4. **Artefakte** – maschinenlesbare FHIR-Ressourcen (Questionnaires, ValueSets, CodeSysteme)

### Kontakt

- Technische Fragen oder Anmerkungen: thimo-andre.hoelter[at]charite.de oder [GitHub Issues](https://github.com/BIH-CEI/PCOR-MII/issues)

Dieser Implementation Guide wird vom [Berlin Institute of Health (BIH) – Core Unit eHealth & Interoperability (CEI)](https://www.bihealth.org/) an der [Charité – Universitätsmedizin Berlin](https://www.charite.de/) gepflegt.
