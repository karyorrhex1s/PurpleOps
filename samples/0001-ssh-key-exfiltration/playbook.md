# Quick playbook — SSH key exfiltration (placeholder)

- Isolate host (network ACL / switchport)
- Collect memory & disk snapshot
- Run detection queries (see osquery/query.sql)
- Check /home/*/.ssh access logs and shell history
- Rotate keys and secrets
- Re-image host if lateral movement suspected
