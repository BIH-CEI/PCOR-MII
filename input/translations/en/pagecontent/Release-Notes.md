### Versioning

This IG follows [Semantic Versioning 2.0.0](https://semver.org/):

- **MAJOR** — incompatible changes to normative content (item structure, `linkId`s, terminology bindings)
- **MINOR** — new questionnaires, items, examples, or backward-compatible improvements
- **PATCH** — fixes to errors in normative content (wrong codes, incorrect constraints)

Versions `0.x.y` indicate early development — the specification is not yet stable. Version `1.0.0` will mark the first stable release after expert review and formal publication.

Every change is tagged with one of the following categories:

- **`feature`** — new content (questionnaires, items, ValueSets, examples)
- **`improve`** — refinement or extension of existing normative content
- **`fix`** — correction of errors in normative content
- **`documentation`** — documentation changes with no effect on normative aspects

Versions are maintained in one place, `input/fsh/rulesets/version.fsh`, and apply to every resource: questionnaires, CodeSystems, ValueSets, ObservationDefinitions and the ConceptMap all carry the IG version. Responses reference their questionnaire as a versioned canonical. Data instances — `Observation`, `Patient`, `QuestionnaireResponse` — deliberately carry no version, since they are not definitional artefacts.

---

### Releases

| Version | Date | Theme |
|---|---|---|
| **0.3.0** | 2026-09-30 | AN battery, design decisions, item mapping |
| **0.2.0** | 2026-08-05 | PHQ family |
| **0.1.0** | 2026-06-04 | Initial draft |

**The detailed change log is maintained in German only.** Switch the page language to German to read it: each release lists its individual changes with the category tags above, including the reasoning behind design decisions and the source verification behind each instrument. Translating that log has been deliberately skipped — it grows with every release, and a lagging translation of a change log is more misleading than none.

What an English-speaking reader most likely wants instead is on these pages:

- [Design Decisions](Designentscheidungen.html) — ADR-001 to ADR-011, the architectural decisions and the open rights questions
- [Instrument overview](Instrumente.html) — which instruments are covered, where each resource is maintained, and the licence tier for each
- [Implementation](Implementation.html) and [Validation](Validierung.html) — how to use and check the definitions
