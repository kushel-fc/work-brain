# PRs — mine

PRs Kushel opened, across both repos (plus backend, checked for his own PRs only). Populated on sync.

**One open: #3002.** Since the last sync he merged four: #2981 (BDD-3223 CSV and PDS-call speed-ups, 10-19 10:27 UTC, **in production** via release #2999 at 10-20 07:58 UTC), #3001 (JMeter load test for PCS multi-download resolve, 10-20 07:58 UTC), and the first two pieces of video reprocessing, product-service#2996 (1/4, prerequisites) and brand-data-pipeline#2074 (publish after `download_videos`), both 10-19 15:28 UTC. **Neither video reprocessing PR is in a release yet**, and #2996 has to deploy first (earmarked). The #2951 `video_processing_enabled` backfill still isn't visible as done. No open PRs of his on backend or brand-data-pipeline.

```yaml
number: 3002
repo: product-service
title: "BDD-3496: video reprocessing API query layer and shared media strategies (2/4)"
author: kushel-fc
state: open
mergeable_state: blocked
review_state: approved
requested_reviewers: [julsjacinto]
updated: 2026-10-20
url: https://github.com/fashioncloud/product-service/pull/3002
```
Opened 10-19 16:33 UTC, +1206/-356. Moves the strategy code image and video reprocessing share into `reprocessing/media/` (`BaseMediaReprocessingStrategy`, `FilterOptions` `IMAGE` renamed `MEDIA`, shared schemas and errors) and adds the query layer that turns a video request into video IDs. Nothing reachable over HTTP yet; PRs 3 and 4 add the service and endpoints. He left nine self-review comments 10-19 17:40 UTC. dwiajik approved 10-20 07:32 UTC, Chamindu36 08:35 UTC, CodeRabbit too. All checks green. Still `BLOCKED` with julsjacinto requested, probably as a code owner after physicalattraction's CODEOWNERS change (#3000, merged 10-19 17:09 UTC). Not confirmed.

His earlier self-closed PR (#2545, GTIN cleanup batch) is still parked in the archive, unrevisited.
