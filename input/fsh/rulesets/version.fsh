// ─────────────────────────────────────────────────────────────────────────────
// Versionsverwaltung — zentrale RuleSets
//
// EINE STELLE FUER ALLE VERSIONEN. Beim Release nur die Zeichenketten in dieser
// Datei anheben, sonst nichts. Muster: input/fsh/rulesets/version.fsh im
// MII-PRO-Modul.
//
// WARUM ES DIESE DATEI BRAUCHT: Vorher stand die Version in jeder Instanz hart
// drin, und das ist auseinandergelaufen — der IG ging 0.1.0 -> 0.2.0, waehrend
// alle 13 Questionnaires auf 0.1.0 stehen blieben. Ressourcen, deren Inhalt
// sich substanziell geaendert hatte (DEM: 19 Items auf Englisch primaer
// umgestellt; MHI: copyright und 46 item.codes ergaenzt), trugen weiterhin
// dieselbe Versionsangabe. Wer canonical|0.1.0 gepinnt hatte, bekam fuer
// dieselbe Version anderen Inhalt.
//
// VERWENDUNG NACH RESSOURCENTYP:
//   Questionnaire-Instanzen ........ * insert Version
//   CodeSystem / ValueSet .......... * insert PR_CS_VS_Version   (Caret-Notation)
//   ObservationDefinition .......... * insert ObsDefVersion
//   Instanzen definitorischer Typen  * insert InstanceVersion    (z. B. ConceptMap)
//   QuestionnaireResponse .......... * insert QuestionnaireRef(canonical)
// ─────────────────────────────────────────────────────────────────────────────

// Fuer Questionnaire-Instanzen (natives R4-Element).
//
// versionAlgorithm = semver, weil dieser IG ausdruecklich Semantic Versioning
// folgt (siehe Seite Release Notes, Abschnitt Versionierung). Das MII-PRO-Modul
// deklariert an derselben Stelle "natural", weil es MII-CalVer (YYYY.n.n)
// nutzt — die Angabe ist also kein Formalismus, sondern sagt, wie zwei
// Versionsangaben zu ordnen sind.
RuleSet: Version
* version = "0.3.0"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver "Semantic Versioning"

// Fuer CodeSystem- und ValueSet-Definitionen (Caret-Notation).
// Diese trugen bisher GAR KEINE Version — 26 CodeSystems und 27 ValueSets.
// Gleichzeitig referenzierten die eingebackenen ValueSet-Expansions ein
// "|0.1.0" am CodeSystem, das dort nie deklariert war. Beides ist damit
// geschlossen.
RuleSet: PR_CS_VS_Version
* ^version = "0.3.0"

// Fuer ObservationDefinition. R4 hat dort KEIN version-Element — es kam erst in
// R5 dazu. Deshalb der R4-Backport ueber die artifact-version-Extension.
// Siehe https://hl7.org/fhir/extensions/StructureDefinition-artifact-version.html
RuleSet: ObsDefVersion
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-version"
* extension[=].valueString = "0.3.0"

// Fuer Instanzen definitorischer Typen, bei denen Caret-Regeln nicht greifen
// (SUSHI: "CaretValueRule cannot be applied to entity of type Instance") —
// etwa die ConceptMap pcor-cm-erq-s-linkids.
RuleSet: InstanceVersion
* version = "0.3.0"

// Fuer QuestionnaireResponse: die Antwort haelt fest, WELCHE Version des
// Questionnaire beantwortet wurde. Ohne Pin ist aus der Antwort nicht
// ablesbar, welcher Wortlaut vorlag — und genau das ist bei mehreren
// Sprachebenen und bei Zuschnitten die entscheidende Information.
RuleSet: QuestionnaireRef(canonical)
* questionnaire = "{canonical}|0.3.0"
