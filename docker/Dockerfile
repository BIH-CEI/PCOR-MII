# ─────────────────────────────────────────────────────────────────────────────
# PCOR-MII FHIR Server
#
# Multi-stage build:
#   1) sushi-build  → SUSHI compiles input/fsh → fsh-generated/resources/*.json
#   2) package-build → minimaler "Builder" baut PCOR-MII als NPM-Package tarball
#   3) hapi         → finale Runtime mit gemounteten MII PRO + PCOR-MII Packages
#
# Pre-loaded packages (im Build):
#   - de.medizininformatikinitiative.kerndatensatz.pros  (MII PRO-Modul, von Simplifier)
#   - hl7.fhir.uv.sdc                                    (Structured Data Capture)
#   - pcor-mii                                           (lokal aus diesem Repo)
#
# Kein Cold-Start IG-Download, kein Terminology-Bootstrap zur Laufzeit.
# ─────────────────────────────────────────────────────────────────────────────

# ─── Stage 1: SUSHI Build ────────────────────────────────────────────────────
FROM node:20-slim AS sushi-build

WORKDIR /work

RUN npm install -g fsh-sushi

COPY sushi-config.yaml ./
COPY input/fsh ./input/fsh

RUN sushi . --snapshot

# ─── Stage 2: Package-Builder ────────────────────────────────────────────────
# Baut aus fsh-generated/resources/ ein NPM-konformes FHIR-Package-Tarball.
# Damit ist die PCOR-MII-Spec nicht von einer externen Registry abhängig.

FROM debian:bookworm-slim AS package-build

RUN apt-get update && apt-get install -y --no-install-recommends curl ca-certificates jq && rm -rf /var/lib/apt/lists/*

WORKDIR /build

# Manifest für das lokale Package (HAPI braucht package.json mit name, version, canonical, fhirVersions)
COPY docker/pcor-mii-package.json /build/package/package.json

# Generierte FHIR-Ressourcen reinkopieren
COPY --from=sushi-build /work/fsh-generated/resources/ /build/package/

# .index.json wird von HAPI on-load erzeugt, aber wir können es vorberechnen
RUN cd /build/package && \
    jq -n --arg ts "$(date -u +%FT%TZ)" \
       '{"index-version":1, "date":$ts, "files": [inputs | {filename: input_filename, resourceType: .resourceType, id: .id, url: .url?, version: .version?}]}' \
       *.json > .index.json 2>/dev/null || true

# Tarball bauen (übliches NPM-Package-Format: alles unter package/ in tarball)
RUN cd /build && tar -czf /pcor-mii.tgz package/

# MII PRO aus Simplifier ziehen
ARG MII_PRO_VERSION=2026.4.1
RUN curl -L --fail "https://packages.simplifier.net/de.medizininformatikinitiative.kerndatensatz.pros/${MII_PRO_VERSION}" \
       -o /mii-pro.tgz

# ─── Stage 3: HAPI Runtime ───────────────────────────────────────────────────
FROM hapiproject/hapi:v8.4.0

# Pre-load: Packages in HAPI's package cache mount
COPY --from=package-build /pcor-mii.tgz   /opt/hapi/packages/pcor-mii.tgz
COPY --from=package-build /mii-pro.tgz    /opt/hapi/packages/mii-pro.tgz

# HAPI-Konfig
COPY docker/application.yaml /opt/hapi/application.yaml

ENV SPRING_CONFIG_LOCATION=/opt/hapi/application.yaml

LABEL org.opencontainers.image.title="FHIR PCOR-MII Server"
LABEL org.opencontainers.image.description="HAPI FHIR Server with MII PRO + PCOR-MII pre-loaded"
LABEL org.opencontainers.image.source="https://github.com/BIH-CEI/PCOR-MII"
LABEL org.opencontainers.image.licenses="CC-BY-4.0"

EXPOSE 8080
