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
* #erq-s-reappraisal "ERQ-S Cognitive Reappraisal Subscale Score (3-21)"
* #erq-s-suppression "ERQ-S Expressive Suppression Subscale Score (3-21)"
