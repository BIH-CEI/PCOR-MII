// ─────────────────────────────────────────────────────────────────────────────
// Use-Case-Manifeste — je Use Case EINE Library (type = asset-collection)
//
// WOZU: Die Zuordnung "welcher Bogen gehoert zu welchem Use Case" existierte
//   bisher nur als Markdown-Matrix (Fragebogen-Bibliothek, Instrumente,
//   AN-Instrumentenliste) — fuer Server unsichtbar. Diese Manifeste machen
//   sie maschinenlesbar: relatedArtifact[composed-of] listet jede benoetigte
//   Questionnaire-Definition mit VERSIONIERTER Canonical — eigene mit |0.3.0,
//   MII-PRO-Upstream mit |2026.7.0. Ein CRMI-faehiger Server liefert damit
//   die komplette Batterie eines Use Case in einem Zug
//   ($package?manifest=...), und die Rueckwaertsfrage "in welchen Use Cases
//   steckt Bogen X?" beantwortet der Standard-Suchparameter composed-of
//   (GET Library?composed-of=<canonical>) — OHNE die Boegen zu taggen.
//
// BEWUSST KEIN useContext AUF DEN BOEGEN: Das wuerde bei jedem neuen Use Case
//   n Artefakte anfassen (mit Versionsbumps) und koennte Upstream-Boegen nie
//   erfassen. Die Zugehoerigkeit lebt an EINER Stelle: hier. useContext
//   traegt nur die Library selbst (ein Artefakt je Use Case).
//
// QUELLE DER ZUSAMMENSTELLUNG: Blatt Domain Overview des Item Level
//   Dictionary samt DIZ-Implementierungsliste, wie auf der Seite
//   Fragebogen-Bibliothek ausgewertet. Prioritaeten/Frequenzen des
//   Erhebungsplans stehen als Text im display der Eintraege, nicht als
//   eigene Struktur — modelliert wird das erst, wenn es ein Konsument
//   maschinell auswertet.
//
// NUR PSS UND AN: Die Use Cases NTXr/NTXd (das Domain Overview trennt
//   Empfaenger und Spender) sind entschieden ZURUECKGESTELLT (2026-10-04) —
//   ihre spezifischen Instrumente (BAASIS, MTSOSD-R59, ABQ) sind rechtlich
//   nicht publizierbar und noch nicht modelliert. Das CodeSystem fuehrt alle
//   vier Codes, damit die Use-Case-Definition vollstaendig ist; Manifeste
//   existieren nur fuer die zwei aktiven.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: PcorUseCaseCS
Id: pcor-use-case
Title: "PCOR-MII Use Cases"
Description: "Die vier klinischen Use Cases des PCOR-MII-Erhebungsplans (Blatt Domain Overview des Item Level Dictionary). NTx ist dort ausdrücklich in Empfänger (NTXr) und Spender (NTXd) mit eigenen Prioritätsprofilen getrennt. Je aktivem Use Case existiert ein Manifest (`Library`, type `asset-collection`), das die benötigten Questionnaire-Definitionen versioniert pinnt — für NTXr/NTXd bewusst noch nicht (zurückgestellt, Instrumente nicht publizierbar bzw. nicht modelliert)."
* insert PR_CS_VS_Version
* ^url = "https://bih-cei.github.io/PCOR-MII/CodeSystem/pcor-use-case"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* #pss "PSS — Persistierende somatische Symptome"
* #an "AN — Anorexia nervosa"
* #ntxr "NTXr — Nierentransplantation, Empfänger" "Zurückgestellt: kein Manifest; spezifische Instrumente (BAASIS, MTSOSD-R59, ABQ) nicht publizierbar bzw. nicht modelliert."
* #ntxd "NTXd — Nierentransplantation, Spender" "Zurückgestellt: kein Manifest."

RuleSet: UseCaseLibrary(code, display)
* type = http://terminology.hl7.org/CodeSystem/library-type#asset-collection
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#program
* useContext.valueCodeableConcept = PcorUseCaseCS#{code} "{display}"
* status = #draft
* experimental = true
* date = "2026-10-04"
* publisher = "BIH-CEI"

RuleSet: Komponiert(canonical, anzeige)
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "{canonical}"
* relatedArtifact[=].display = "{anzeige}"

Instance: use-case-pss
InstanceOf: Library
Usage: #definition
Title: "Use-Case-Manifest PSS — Persistierende somatische Symptome"
Description: "Maschinenlesbare Instrumentenliste des Use Case PSS: alle Questionnaire-Definitionen mit versionierter Canonical — PCOR-MII-eigene Bögen mit |0.3.0, MII-PRO-Bögen mit |2026.7.0. Quelle: Erhebungsplan (Domain Overview) wie auf [Fragebogen-Bibliothek](https://bih-cei.github.io/PCOR-MII/Fragebogen-Bibliothek.html) ausgewertet. Nicht enthalten: PROMIS Global Health (Subset upstream noch offen) und der PHQ-D-Panik-Block (kein Upstream-Artefakt)."
* insert InstanceVersion
* url = "https://bih-cei.github.io/PCOR-MII/Library/use-case-pss"
* name = "UseCasePSS"
* insert UseCaseLibrary(pss, PSS — Persistierende somatische Symptome)
// ── PCOR-MII-eigene Bögen ────────────────────────────────────────────────────
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/DEM|0.3.0, DEM — Demographie-Sammelbogen)
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/MHI|0.3.0, MHI — Medical History)
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/OPDSFK|0.3.0, OPD-SFK — Strukturfragebogen Kurzform)
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/WAI|0.3.0, WAI — Work Ability Score [metadata-only])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/GSLTPAQ|0.3.0, GSLTPAQ — Freizeitaktivität)
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/EXPECT|0.3.0, EXPECT — Verlaufserwartung)
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/IPQS|0.3.0, IPQ-S — offene Ursachenfrage)
// ── MII-PRO-Bögen (Paketabhängigkeit 2026.7.0) ──────────────────────────────
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16|2026.7.0, PROMIS-16)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a|2026.7.0, PROMIS Cognitive Function SF 4a)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-depression-sf4a|2026.7.0, PROMIS Depression SF 4a)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12|2026.7.0, WHODAS 2.0 12-Item)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9|2026.7.0, PHQ-9 — in PSS als PHQ-8 + PHQ-SI erhoben)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-15|2026.7.0, PHQ-15)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7|2026.7.0, GAD-7)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euronet-soma|2026.7.0, EURONET-SOMA)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-ssd-12|2026.7.0, SSD-12)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-wi-7|2026.7.0, Whiteley-7)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-scoff|2026.7.0, SCOFF)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-isr-z|2026.7.0, ISR-Z)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-pc-ptsd|2026.7.0, PC-PTSD)

Instance: use-case-an
InstanceOf: Library
Usage: #definition
Title: "Use-Case-Manifest AN — Anorexia nervosa"
Description: "Maschinenlesbare Instrumentenliste des Use Case AN: alle Questionnaire-Definitionen mit versionierter Canonical — PCOR-MII-eigene Bögen mit |0.3.0, MII-PRO-Bögen mit |2026.7.0. Quelle: Erhebungsplan (Domain Overview) wie auf [Fragebogen-Bibliothek](https://bih-cei.github.io/PCOR-MII/Fragebogen-Bibliothek.html) und [AN — Instrumentenliste](https://bih-cei.github.io/PCOR-MII/AN-Instrumentenliste.html) ausgewertet. Nicht enthalten: `UKHD-BI` (nicht modelliert — Bildvorlage fehlt) und PROMIS Global Health (Subset upstream offen)."
* insert InstanceVersion
* url = "https://bih-cei.github.io/PCOR-MII/Library/use-case-an"
* name = "UseCaseAN"
* insert UseCaseLibrary(an, AN — Anorexia nervosa)
// ── PCOR-MII-eigene Bögen ────────────────────────────────────────────────────
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/DEM|0.3.0, DEM — Demographie-Sammelbogen)
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/MHI|0.3.0, MHI — Medical History [inkl. AN-Gruppe gewicht-an])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/ERQ6|0.3.0, ERQ-6 — Emotionsregulation [Prio A])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/EDEQ6|0.3.0, EDE-Q6 — Essstörungspathologie [Prio A])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/ANSOCQ2|0.3.0, ANSOCQ-2 — Veränderungsmotivation [Prio A; Monitoring-Kurzform])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/SSUK2|0.3.0, SSUK-2 — Soziale Unterstützung [Prio A])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/ACE|0.3.0, ACE + Zeitangaben — PCOR-MII-Komposit [Prio A; nur Initial])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDPT|0.3.0, UKHD-PT — Vorbehandlung [Freigabe offen])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDANB|0.3.0, UKHD-ANB — Essstörungsanamnese [Freigabe offen; nur Initial])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDCT|0.3.0, UKHD-CT — Aktuelle Behandlung [Freigabe offen])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDLE|0.3.0, UKHD-LE — Lebensereignisse [Freigabe offen])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDND|0.3.0, UKHD-ND — Neue Diagnosen [Freigabe offen; nicht beim Initial-Termin])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDD|0.3.0, UKHD-D — Diagnosen bei Aufnahme [Freigabe offen; nur Initial])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/UKHDEDP|0.3.0, UKHD-EDP — Essstörungspathologie [metadata-only])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/OPDSFK|0.3.0, OPD-SFK — Strukturfragebogen Kurzform)
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/WAI|0.3.0, WAI — Work Ability Score [metadata-only])
// ── MII-PRO-Bögen (Paketabhängigkeit 2026.7.0) ──────────────────────────────
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9|2026.7.0, PHQ-9 — inkl. PHQ-SI)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7|2026.7.0, GAD-7)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16|2026.7.0, PROMIS-16)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a|2026.7.0, PROMIS Cognitive Function SF 4a)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-depression-sf4a|2026.7.0, PROMIS Depression SF 4a)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12|2026.7.0, WHODAS 2.0 12-Item)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euronet-soma|2026.7.0, EURONET-SOMA)
