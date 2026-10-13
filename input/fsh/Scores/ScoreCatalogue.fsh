// ─────────────────────────────────────────────────────────────────────────────
// PCOR-MII Score-Katalog
//
// Lokaler Katalog für Score-Codes. Er enthält NUR Scores, für die weder LOINC
// noch SNOMED CT noch der MII-Score-Katalog (mii-cs-pro-score-catalogue) einen
// Code führt — geprüft je Eintrag, dokumentiert in der zugehörigen
// ObservationDefinition.
//
// NAMENSKONVENTION wie upstream: <Instrument>-<Score>, vgl. dort
// phq-phq9-total, promis-29-anxiety-tscore, whodas12-simple-sum, scoff-total.
// Die Codes sind bewusst so benannt, dass sie bei einer Aufnahme in den
// MII-Katalog unverändert übernommen werden können.
//
// MIGRATION: Sobald ein Score upstream einen Code erhält, wird dieser in der
// jeweiligen ObservationDefinition als ZUSÄTZLICHES code.coding ergänzt — der
// lokale Code bleibt als stabile Referenz bestehen. Das Blueprint-Profil
// erlaubt das: code.coding hat slicing.rules = open. Siehe ADR-004.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: PcorScoreCatalogueCS
Id: pcor-score-catalogue
Title: "PCOR-MII Score-Katalog (Codes)"
Description: "Lokaler Score-Katalog für PCOR-MII. Enthält ausschließlich Scores, für die weder LOINC noch SNOMED CT noch der MII-Score-Katalog (mii-cs-pro-score-catalogue) einen Code führen. Sobald ein Score upstream einen Code erhält, wird dieser in der jeweiligen ObservationDefinition als zusätzliches code.coding ergänzt; der lokale Code bleibt als stabile Referenz bestehen."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-score-catalogue"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete

// PROMIS
* #promis-propr-utility "PROMIS-Preference (PROPr) Utility Score"

// ERQ-S

// ZURUECKGEZOGEN 2026-10-01 — erq-s-reappraisal und erq-s-suppression:
//   Die beiden ERQ-Subskalen-Codes sind entfernt. Grund: Der PCOR-MII-Bogen
//   ERQ6 ist NICHT der ERQ-S, sondern ein anderer Zuschnitt desselben
//   Instruments.
//
//   Preece et al. 2023 geben die Zuordnung in ihrer Tabelle 1 an. Der ERQ-S
//   besteht aus den ERQ-Items 2, 6, 7, 8, 9 und 10 — ein reiner Teilsatz ohne
//   Umformulierung:
//     Cognitive Reappraisal (CR):  ERQ-Items 7, 8, 10
//     Expressive Suppression (ES): ERQ-Items 2, 6, 9
//   PCOR-MII fuehrt dagegen die ERQ-Items 1, 2, 3, 6, 8 und 9:
//     Neubewertungs-Items:  1, 3, 8
//     Unterdrueckungs-Items: 2, 6, 9
//
//   Vier der sechs Items ueberschneiden sich, und die Unterdrueckungs-Items
//   sind sogar identisch — die NEUBEWERTUNGS-Items aber nicht: PCOR-MII hat 1
//   und 3, der ERQ-S hat 7 und 10. Damit gelten die publizierten
//   ERQ-S-Kennwerte nicht fuer diesen Satz. Bezogen auf das Vollinstrument
//   ist er ohnehin ein Zuschnitt (drei der sechs Neubewertungs- und drei der
//   vier Unterdrueckungs-Items des ERQ-10), fuer den keine Scoring-Vorschrift
//   publiziert ist. Ohne validierte Grundlage kein Score — ADR-003 Punkt 3.
