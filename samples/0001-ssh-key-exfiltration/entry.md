# Entry 0001 — SSH key exfiltration via abused user account

## Metadata
- Author: karyorrhex1s
- Date: 2025-10-29
- ATT&CK IDs: T1041 (Exfiltration Over C2 Channel), T1110 (Brute Force) [contextual], T1574 (Hijack Execution Flow) [persistence]
- Platforms: Linux (cloud instances), macOS
- Confidence: high (lab-reproducible)

## TL;DR
An adversary with a foothold copies user SSH private keys (`~/.ssh/id_rsa`) and uploads them to an external host via `curl`/`scp`. Telemetry includes anomalous `ssh`/`scp` child processes of unusual parents, base64-encoded blobs in process args, or outbound connections to rarely-seen IPs. Detection is straightforward with combined osquery + Sigma rules and by monitoring file access of `~/.ssh`.

## Adversary Emulation (How I reproduced it)
Lab: single Ubuntu cloud instance (t3.small equiv), EDR agent installed, internet blocked except for a throwaway exfil host on ephemeral port.

Steps:
1. Create attacker-server: `python3 -m http.server 8000` (throwaway lab).
2. On victim:
