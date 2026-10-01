#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Baut die drei Beispiel-Bundles aus den kompilierten Beispielressourcen.

Aufruf NACH `sushi .` aus dem Repo-Root:
    python3 scripts/build-example-bundles.py

Die Bundles sind COLLECTION-Bundles: je Erhebungstermin ein Bundle mit dem
Patient und allen QuestionnaireResponses dieses Termins. Sie werden als
statische JSON-Dateien nach input/examples/ geschrieben und mit eingecheckt —
der IG-Build fuehrt dieses Skript NICHT aus. Aendert sich eine Beispielantwort,
muss das Skript erneut laufen (Drift faellt im Review auf: die Bundle-Dateien
aendern sich dann mit).

fullUrl je Entry ist die kanonische Adresse, unter der der IG die Ressource
veroeffentlicht. Die Termin-Zuordnung ist hier EXPLIZIT gepflegt, nicht aus
authored abgeleitet — sie ist die Aussage, nicht ein Abfallprodukt.
"""
import json, os, sys

SRC_FSH = "fsh-generated/resources"
SRC_EX  = "input/examples"
OUT     = "input/examples"
BASE    = "https://bih-cei.github.io/PCOR-MII"

BUNDLES = {
    "pcor-mii-exa-bundle-an-initial": {
        "title": "AN — Initial-/Screening-Termin 18.06.2026",
        "timestamp": "2026-06-18T12:00:00+02:00",
        "patient": "pcor-mii-exa-patient-an",
        "fsh": ["DEMResponse", "MHIResponse", "ERQ6Response", "EDEQ6Response",
                "ANSOCQ2Response", "SSUK2Response", "ACEResponse",
                "UKHDPTResponse", "UKHDANBResponse", "UKHDCTResponse",
                "UKHDLEResponse", "UKHDDResponse"],
        "json": [],
    },
    "pcor-mii-exa-bundle-an-monitoring": {
        "title": "AN — Monitoring-Termin 30.07.2026",
        "timestamp": "2026-07-30T11:00:00+02:00",
        "patient": "pcor-mii-exa-patient-an",
        "fsh": ["ERQ6MonitoringResponse", "EDEQ6MonitoringResponse",
                "ANSOCQ2MonitoringResponse", "SSUK2MonitoringResponse",
                "UKHDPTMonitoringResponse", "UKHDCTMonitoringResponse",
                "UKHDLEMonitoringResponse", "UKHDNDMonitoringResponse",
                "UKHDEDPMonitoringResponse"],
        "json": [],
    },
    "pcor-mii-exa-bundle-pss-screening": {
        "title": "PSS — Screening-Termin 25.06.2026",
        "timestamp": "2026-06-25T12:30:00+02:00",
        "patient": "pcor-mii-exa-patient-pss",
        "fsh": ["DEMPSSResponse", "MHIPSSResponse", "OPDSFKResponse",
                "GSLTPAQResponse", "EXPECTResponse", "IPQSResponse",
                "WAIResponse"],
        "json": ["pcor-mii-exa-pss-phq-9-response", "pcor-mii-exa-pss-gad-7-response",
                 "pcor-mii-exa-pss-phq-15-response", "pcor-mii-exa-pss-ssd-12-response",
                 "pcor-mii-exa-pss-whodas-12-response", "pcor-mii-exa-pss-euronet-soma-response",
                 "pcor-mii-exa-pss-wi-7-response", "pcor-mii-exa-pss-scoff-response",
                 "pcor-mii-exa-pss-isr-z-response", "pcor-mii-exa-pss-pc-ptsd-response",
                 "pcor-mii-exa-promis-16-response", "pcor-mii-exa-promis-cognitive-function-response"],
    },
}

def load(path):
    with open(path, encoding="utf-8") as f:
        return json.load(f)

def entry(res):
    return {"fullUrl": f"{BASE}/{res['resourceType']}/{res['id']}", "resource": res}

def main():
    if not os.path.isdir(SRC_FSH):
        sys.exit("fsh-generated/resources fehlt — erst `sushi .` laufen lassen.")
    for bid, spec in BUNDLES.items():
        entries = [entry(load(f"{SRC_FSH}/Patient-{spec['patient']}.json"))]
        for rid in spec["fsh"]:
            entries.append(entry(load(f"{SRC_FSH}/QuestionnaireResponse-{rid}.json")))
        for rid in spec["json"]:
            entries.append(entry(load(f"{SRC_EX}/QuestionnaireResponse-{rid}.json")))
        bundle = {
            "resourceType": "Bundle", "id": bid, "type": "collection",
            "timestamp": spec["timestamp"], "entry": entries,
        }
        with open(f"{OUT}/Bundle-{bid}.json", "w", encoding="utf-8") as f:
            json.dump(bundle, f, ensure_ascii=False, indent=2)
        print(f"{bid}: {len(entries)} Entries ({spec['title']})")

if __name__ == "__main__":
    main()
