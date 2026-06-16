Diese Seite beschreibt, wie ein FHIR-Server für PCOR-MII bestückt wird und wie der Datenfluss im Pilot aussieht.

## Container-Stack

Im Verzeichnis `docker/` liegt eine Dockerfile, die HAPI FHIR mit MII PRO + PCOR-MII vorinstalliert baut. Bake-Time, kein Cold-Start.

```mermaid
flowchart LR
    SIMPLIFIER[("Simplifier")] -->|"mii-pro@2026.4.1"| HAPI
    REPO[("PCOR-MII Repo")] -->|"als Package"| HAPI
    HAPI_BASE["hapiproject/hapi:v8.4.0"] --> HAPI["PCOR-MII Container<br/>localhost:8097"]
    HAPI -->|"$validate, $expand, $package"| CLIENT["Konsument"]

    style HAPI fill:#ffe1e1
    style SIMPLIFIER fill:#e1f5ff
    style REPO fill:#e1f5ff
```

`docker compose up --build` reicht. Vorhandene Endpoints: Standard-HAPI plus `$validate` für eingehende QRs.

## Bestückung eines anderen Empfänger-Servers

Eine `QuestionnaireResponse` ist ohne den referenzierten Questionnaire, dessen ValueSets/CodeSystems und das PRO-QR-Profil **nicht** interpretierbar. Zwei pragmatische Wege:

**Transaction-Bundle**: alle nötigen Resources (Questionnaire + ValueSets + Profil) als `PUT`-Einträge in einem Bundle an `POST [base]/`. Funktioniert mit jedem FHIR-Server.

**`$package`-Operation** (FHIR Crmi): wenn der Producer-Server sie unterstützt, lässt sich das Bundle automatisch erzeugen lassen —

```http
GET [producer]/Questionnaire/mii-qst-pro-promis-16/$package
```

liefert ein transaction-fertiges Bundle mit allen transitiv referenzierten Resources, versioniert. Konsument PUTet das. ValueSets kommen im `compose`-Format; für die PROMIS-VS reicht das, weil die Konzepte inline definiert sind. HAPI braucht für `$package` das Clinical-Reasoning-Modul (im PCOR-MII Container nicht out-of-the-box).

## Versions-Koexistenz auf Standard-Servern

Auf Standard-HAPI gilt: `PUT Questionnaire/promis-29` mit neuer `Questionnaire.version` **überschreibt** den existierenden Eintrag — pro `id` koexistiert nur eine Version. Folge: ältere QR mit `…|2026.3.0`-Referenz ist danach nicht mehr sauber resolvbar.

Für den **PCOR-MII Pilot** ist das egal: eine einzige PRO-Version (2026.4.1) durchgehend. Bei späterer Versions-Migration: Versions-Suffix in der `id` (z.B. `promis-29-v2026-4-1`) oder HAPI mit Multi-Version-Mode einsetzen. In QR-Referenzen die Version immer mitführen (`…|2026.4.1`).

## Pilot-Datenfluss "50 First Patients"

Das Erfassungs-System kann außerhalb FHIR liegen (REDCap, LimeSurvey, eigene App) **oder** direkt in FHIR erfolgen (LHC-Forms o.ä.). FHIR ist primär die **Ablage- und Austausch-Form**:

```mermaid
flowchart LR
    subgraph Sites ["Partner-Sites"]
        direction TB
        SiteA["Site A<br/>REDCap"]
        SiteB["Site B<br/>LimeSurvey"]
        SiteC["Site C<br/>eigene App"]
    end

    Mapper["Mapper / ETL<br/>Quelle → MII PRO Bundle"]
    Validator["PCOR-MII Container<br/>$validate"]
    FDPG["Empfänger<br/>(FDPG / KDS-Knoten)"]

    SiteA --> Mapper
    SiteB --> Mapper
    SiteC --> Mapper
    Mapper -->|"FHIR-Bundle"| Validator
    Validator -->|"0 errors → weiter"| Mapper
    Mapper -->|"POST validiertes Bundle"| FDPG

    style SiteA fill:#e1f5ff
    style SiteB fill:#e1f5ff
    style SiteC fill:#e1f5ff
    style Mapper fill:#fff4e1
    style Validator fill:#ffe1e1
    style FDPG fill:#e1ffe1
```

Sitespezifisch: Daten aus dem Quell-System exportieren, Mapper baut FHIR-Bundle, gegen den Container validieren, dann an den Empfänger senden. Bei Direkt-in-FHIR-Erfassung entfällt der Mapper-Schritt; beide Pfade treffen sich bei `$validate`.
