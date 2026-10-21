# PRs — mine

PRs Kushel opened, across both repos (plus backend, checked for his own PRs only). Populated on sync.

**One open: #3017 (4/4).** Since the last sync he merged #3002 (2/4, 10-20 08:50 UTC) and #3008 (3/4, 11:05 UTC). Video reprocessing 1/4 (product-service#2996) and brand-data-pipeline#2074 both reached **production 10-20 ~12:58 UTC** (release #3015 and #2085; earmark triggered). The #2951 `video_processing_enabled` backfill still isn't visible as done. No open PRs of his on backend or brand-data-pipeline.

```yaml
number: 3017
repo: product-service
title: "BDD-3498: video reprocessing API endpoints (4/4)"
author: kushel-fc
state: open
mergeable_state: blocked
review_state: changes-requested   # CodeRabbit only; three humans approved
requested_reviewers: [abubakarwase]
updated: 2026-10-21
url: https://github.com/fashioncloud/product-service/pull/3017
```
Opened 10-20 12:20 UTC, +1290/-52: `POST /reprocessing/video/validate`, `/trigger` and `/trigger/uploaded-videoids`, OpenAPI. Chamindu36 (13:19), irembbt (13:29) and dwiajik (13:46 UTC) approved 10-20. CodeRabbit has requested changes three times (10-20 12:29, 10-21 08:03 and 08:33 UTC, down from 3 to 2 to 1 comment), and he replied 10-21 08:08 and 08:28 UTC. All checks green. Still `BLOCKED`: abubakarwase is the one requested reviewer, probably the code owner after #3000. Rollout: ships after the publish step, which is now in production.

His earlier self-closed PR (#2545, GTIN cleanup batch) is still parked in the archive, unrevisited.
