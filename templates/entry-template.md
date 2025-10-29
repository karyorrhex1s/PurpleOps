# Entry {NNNN} — <short title>

## Metadata
- Author: <your handle>
- Date: YYYY-MM-DD
- ATT&CK IDs: [Txxxx, Tyyyy]
- Platforms: [Linux, macOS, Windows, Cloud]
- Confidence: (low/med/high)

## TL;DR
2–3 sentence summary of the TTP and why it matters.

## Adversary Emulation (How I reproduced it)
Step-by-step commands, environment notes, safe lab controls (snapshots, no internet, throwaway keys).

## Observed Telemetry
- File paths, timestamps, process trees (ps/ps -ef / proc), network indicators (domains, IPs), kernel logs, dmesg entries.
- Example: `launchd` plist created at `/Library/LaunchAgents/com.example.plist` with payload `/usr/local/bin/evil`.

## Detection Engineering
### Sigma rule (or link)
- File: `/sigma/<name>.yml`
### osquery / EDR queries
- Example query to list suspicious plists / cron / services
### YARA (if binary present)
- Quick signature idea

## Automated Mitigation (short)
- Kill chain short-term steps + long-term hardening suggestions (policy, hardening playbook).

## Playbook (readable checklist)
- Step 1: Isolate host
- Step 2: Collect memory + /var/log + EDR artifacts
- Step 3: Run detection rules
- Step 4: Remove persistence
- Step 5: Rotate keys / secrets

## Postmortem & notes
- What telemetry was missing, false positives, tuning suggestions.
