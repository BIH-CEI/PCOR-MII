### Versioning

This IG follows [Semantic Versioning 2.0.0](https://semver.org/):

- **MAJOR** — incompatible changes to normative content (item structure, `linkId`s, terminology bindings)
- **MINOR** — new questionnaires, items, examples, or backward-compatible improvements
- **PATCH** — fixes to errors in normative content (wrong codes, incorrect constraints)

Versions `0.x.y` indicate initial development — the specification is not yet stable. Version `1.0.0` will mark the first stable release after expert review and formal publication.

Each change is tagged with one of the following categories:

- **`feature`** — new content (questionnaires, items, ValueSets, examples)
- **`improve`** — refinement or extension of existing normative content
- **`fix`** — correction of errors in normative content
- **`documentation`** — documentation changes with no impact on normative aspects

---

### v0.1.0 (2026-06-04) — Initial Draft

**`feature`** Initial setup of the PCOR-MII Implementation Guide with BIH corporate design template, multi-language support (German default, English translation), and CI/CD pipeline (GitHub Actions → GitHub Pages)

**`feature`** Example questionnaire `PcorExampleQuestionnaire` as a template (item types `group`, `choice`, `date`, `string`)

**`documentation`** Page structure: Home, Questionnaires, Implementation (QuestionnaireResponse, population, extraction), Release Notes

**`documentation`** CC-BY-4.0 license
