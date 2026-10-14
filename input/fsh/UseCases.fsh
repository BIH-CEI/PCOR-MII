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
//
// DRITTES MANIFEST: PILOT "50 FIRST PATIENTS" (2026-10-13). Der Pilot ist kein
//   klinischer Use Case, sondern ein Programm quer ueber alle Use Cases. Sein
//   Manifest ist deshalb die SCHNITTMENGE: nur Boegen, die laut Blatt Domain
//   Overview in PSS, AN UND NTx erhoben werden (Spalten der Seite Fragebogen-
//   Bibliothek), und von denen es ein Artefakt gibt. Ableitungsregel, nicht
//   Zusammenstellung — wer die Schnittmenge aendert, aendert zuerst die
//   Tabelle. Dadurch ausgeschlossen: OPD-SFK (nicht NTx), PHQ-15 (nur PSS).
//   PROMIS Global Health ist seit #26 als PROMISGH (2-Item-Zuschnitt) ein
//   eigenes Artefakt und damit in allen drei Manifesten enthalten. Das
//   CodeSystem bekommt dafuer den Code pilot-50fp, damit die Suche
//   Library?context= fuer alle drei Manifeste gleich funktioniert.
//
// LESART "PROMIS SF 4a (8 Domaenen)" (Use-Case-Leitung, 2026-10-13): Die Zeile
//   des Erhebungsplans meint PROMIS-29 (sieben Domaenen, je die SF 4a, plus
//   Schmerzintensitaet) PLUS Cognitive Function SF 4a — zusammen die
//   PROMIS-33-Abdeckung. Gepinnt werden deshalb mii-qst-pro-promis-29 und
//   -promis-cognitive-function-sf4a; die fruehere Lesart mit der
//   alleinstehenden Depression SF 4a war falsch.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: PcorUseCaseCS
Id: pcor-use-case
Title: "PCOR-MII Use Cases"
Description: "Die vier klinischen Use Cases des PCOR-MII-Erhebungsplans (Blatt Domain Overview des Item Level Dictionary) sowie das Programm Pilot „50 First Patients“. NTx ist dort ausdrücklich in Empfänger (NTXr) und Spender (NTXd) mit eigenen Prioritätsprofilen getrennt. Je aktivem Use Case existiert ein Manifest (`Library`, type `asset-collection`), das die benötigten Questionnaire-Definitionen versioniert pinnt — für NTXr/NTXd bewusst noch nicht (zurückgestellt, Instrumente nicht publizierbar bzw. nicht modelliert). Der Pilot ist kein klinischer Use Case; sein Manifest ist die Schnittmenge der Bögen, die in allen Use Cases erhoben werden."
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
* #pilot-50fp "Pilot „50 First Patients“ — gemeinsamer Kern aller Use Cases" "Kein klinischer Use Case, sondern das Pilotprogramm des Datenaustauschs. Das Manifest enthält genau die Bögen, die in PSS, AN und NTx erhoben werden (Schnittmenge des Erhebungsplans)."

RuleSet: UseCaseLibrary(code, display)
// CRMI-Manifestprofil, versionsgepinnt auf die Dependency hl7.fhir.uv.crmi 2.0.0
// (sushi-config.yaml). Das Profil verlangt type = asset-collection und sliced
// relatedArtifact in component (composed-of) und dependency (depends-on);
// wir befuellen nur component. Bei einem Dependency-Bump den Pin mitziehen.
* meta.profile = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-manifestlibrary|2.0.0"
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

// ─────────────────────────────────────────────────────────────────────────────
// STANDORTVARIANTEN (2026-10-13): Die Standorte erheben ENTWEDER den PROMIS-16
//   ODER PROMIS-29 + Cognitive Function SF 4a (die beiden kleineren der drei
//   Instrumentengroessen je Domaene aus dem Domain Overview). Ein Manifest
//   kann kein Entweder-oder ausdruecken (relatedArtifact ist eine Liste;
//   selectionBehavior gibt es nur in PlanDefinition). Beide Varianten bleiben
//   deshalb in jedem Manifest — ein Empfaenger muss Antworten beider
//   Standorttypen aufloesen koennen — und werden ueber die CRMI-Extension
//   crmi-intendedUsageContext am Eintrag markiert (UsageContext workflow,
//   nur als Text — fuer zwei Marker bewusst KEIN eigenes CodeSystem; Codes
//   kommen erst, wenn ein Konsument danach filtert). Eine PlanDefinition mit exactly-one waere der
//   naechste Schritt, falls ein System den Erhebungsplan ausfuehren soll.
// ─────────────────────────────────────────────────────────────────────────────
RuleSet: KomponiertVariante(canonical, anzeige, varianteText)
* relatedArtifact[+].type = #composed-of
* relatedArtifact[=].resource = "{canonical}"
* relatedArtifact[=].display = "{anzeige}"
* relatedArtifact[=].extension[+].url = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-intendedUsageContext"
* relatedArtifact[=].extension[=].valueUsageContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#workflow
* relatedArtifact[=].extension[=].valueUsageContext.valueCodeableConcept.text = "{varianteText}"

Instance: use-case-pss
InstanceOf: Library
Usage: #definition
Title: "Use-Case-Manifest PSS — Persistierende somatische Symptome"
Description: "Maschinenlesbare Instrumentenliste des Use Case PSS: alle Questionnaire-Definitionen mit versionierter Canonical — PCOR-MII-eigene Bögen mit |0.3.0, MII-PRO-Bögen mit |2026.7.0. Quelle: Erhebungsplan (Domain Overview) wie auf Seite Fragebogen-Bibliothek ausgewertet. Nicht enthalten: der PHQ-D-Panik-Block (kein Upstream-Artefakt). PROMIS Global Health ist als lokaler 2-Item-Zuschnitt `PROMISGH` enthalten (Übergangslösung bis zur Aufnahme der 10-Item-Skala ins PRO-Modul). PROMIS-16 und PROMIS-29 + Cognitive Function SF 4a sind **Standortvarianten** (entweder/oder) — beide sind enthalten, damit Empfänger Antworten beider Standorttypen auflösen können; die Variante steht je Eintrag als Text in der CRMI-Extension `crmi-intendedUsageContext`."
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
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/PROMISGH|0.3.0, PROMIS-GH — Global Health Global01/Global02 [2-Item-Zuschnitt; Übergangslösung bis zur Aufnahme der 10-Item-Skala ins PRO-Modul])
// ── MII-PRO-Bögen (Paketabhängigkeit 2026.7.0) ──────────────────────────────
* insert KomponiertVariante(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16|2026.7.0, PROMIS-16 — Standortvariante kurz, Standortvariante kurz: PROMIS-16)
* insert KomponiertVariante(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29|2026.7.0, PROMIS-29 — sieben Domänen als SF 4a plus Schmerzintensität; Standortvariante mittel, Standortvariante mittel: PROMIS-29 + Cognitive Function SF 4a)
* insert KomponiertVariante(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a|2026.7.0, PROMIS Cognitive Function SF 4a — achte Domäne; mit PROMIS-29 die PROMIS-33-Abdeckung; Standortvariante mittel, Standortvariante mittel: PROMIS-29 + Cognitive Function SF 4a)
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
Description: "Maschinenlesbare Instrumentenliste des Use Case AN: alle Questionnaire-Definitionen mit versionierter Canonical — PCOR-MII-eigene Bögen mit |0.3.0, MII-PRO-Bögen mit |2026.7.0. Quelle: Erhebungsplan (Domain Overview) wie auf Seite Fragebogen-Bibliothek und Seite AN — Instrumentenliste ausgewertet. Nicht enthalten: `UKHD-BI` (nicht modelliert — Bildvorlage fehlt). PROMIS Global Health ist als lokaler 2-Item-Zuschnitt `PROMISGH` enthalten. PROMIS-16 und PROMIS-29 + Cognitive Function SF 4a sind **Standortvarianten** (entweder/oder) — beide sind enthalten, damit Empfänger Antworten beider Standorttypen auflösen können; die Variante steht je Eintrag als Text in der CRMI-Extension `crmi-intendedUsageContext`."
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
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/PROMISGH|0.3.0, PROMIS-GH — Global Health Global01/Global02 [2-Item-Zuschnitt; Übergangslösung bis zur Aufnahme der 10-Item-Skala ins PRO-Modul])
// ── MII-PRO-Bögen (Paketabhängigkeit 2026.7.0) ──────────────────────────────
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9|2026.7.0, PHQ-9 — inkl. PHQ-SI)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7|2026.7.0, GAD-7)
* insert KomponiertVariante(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16|2026.7.0, PROMIS-16 — Standortvariante kurz, Standortvariante kurz: PROMIS-16)
* insert KomponiertVariante(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29|2026.7.0, PROMIS-29 — sieben Domänen als SF 4a plus Schmerzintensität; Standortvariante mittel, Standortvariante mittel: PROMIS-29 + Cognitive Function SF 4a)
* insert KomponiertVariante(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a|2026.7.0, PROMIS Cognitive Function SF 4a — achte Domäne; mit PROMIS-29 die PROMIS-33-Abdeckung; Standortvariante mittel, Standortvariante mittel: PROMIS-29 + Cognitive Function SF 4a)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12|2026.7.0, WHODAS 2.0 12-Item)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euronet-soma|2026.7.0, EURONET-SOMA)

Instance: pilot-50fp
InstanceOf: Library
Usage: #definition
Title: "Manifest Pilot „50 First Patients“ — gemeinsamer Kern aller Use Cases"
Description: "Maschinenlesbare Instrumentenliste des Pilotprogramms „50 First Patients“: die Schnittmenge der Bögen, die laut Erhebungsplan (Domain Overview) in allen Use Cases — PSS, AN und NTx — erhoben werden, mit versionierter Canonical (PCOR-MII-eigene Bögen |0.3.0, MII-PRO-Bögen |2026.7.0). Ableitung aus den Use-Case-Spalten der Seite Fragebogen-Bibliothek; nicht enthalten: OPD-SFK (nicht in NTx) und PHQ-15 (nur PSS). PROMIS Global Health ist als lokaler 2-Item-Zuschnitt `PROMISGH` enthalten. Der Pilot ist kein klinischer Use Case; wer eine vollständige Batterie braucht, nutzt das Manifest des jeweiligen Use Case. PROMIS-16 und PROMIS-29 + Cognitive Function SF 4a sind **Standortvarianten** (entweder/oder) — beide sind enthalten, damit Empfänger Antworten beider Standorttypen auflösen können; die Variante steht je Eintrag als Text in der CRMI-Extension `crmi-intendedUsageContext`."
* insert InstanceVersion
* url = "https://bih-cei.github.io/PCOR-MII/Library/pilot-50fp"
* name = "Pilot50FirstPatients"
* insert UseCaseLibrary(pilot-50fp, Pilot „50 First Patients“ — gemeinsamer Kern aller Use Cases)
// ── PCOR-MII-eigene Bögen (in PSS, AN und NTx) ───────────────────────────────
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/DEM|0.3.0, DEM — Demographie-Sammelbogen)
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/MHI|0.3.0, MHI — Medical History)
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/WAI|0.3.0, WAI — Work Ability Score [metadata-only])
* insert Komponiert(https://bih-cei.github.io/PCOR-MII/Questionnaire/PROMISGH|0.3.0, PROMIS-GH — Global Health Global01/Global02 [2-Item-Zuschnitt; Übergangslösung bis zur Aufnahme der 10-Item-Skala ins PRO-Modul])
// ── MII-PRO-Bögen (Paketabhängigkeit 2026.7.0; in PSS, AN und NTx) ───────────
* insert KomponiertVariante(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-16|2026.7.0, PROMIS-16 — Standortvariante kurz, Standortvariante kurz: PROMIS-16)
* insert KomponiertVariante(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-29|2026.7.0, PROMIS-29 — sieben Domänen als SF 4a plus Schmerzintensität; Standortvariante mittel, Standortvariante mittel: PROMIS-29 + Cognitive Function SF 4a)
* insert KomponiertVariante(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-promis-cognitive-function-sf4a|2026.7.0, PROMIS Cognitive Function SF 4a — achte Domäne; mit PROMIS-29 die PROMIS-33-Abdeckung; Standortvariante mittel, Standortvariante mittel: PROMIS-29 + Cognitive Function SF 4a)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-whodas-whodas12|2026.7.0, WHODAS 2.0 12-Item)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-phq-9|2026.7.0, PHQ-9 — in PSS als PHQ-8 + PHQ-SI erhoben)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-gad-7|2026.7.0, GAD-7)
* insert Komponiert(https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/Questionnaire/mii-qst-pro-euronet-soma|2026.7.0, EURONET-SOMA)
