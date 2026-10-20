# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Reprocessing (new project, all his):** BDD-3494 and BDD-3495 Done (#2996, brand-data-pipeline#2074, not released yet). [BDD-3496](sources/linear/my-issues.md) In Review (#3002). BDD-3497 (service) and BDD-3498 (endpoints) In Progress, no PRs yet. BDD-3499 (admin page, frontend) Backlog.
- **[BDD-3449](sources/linear/my-issues.md)** (video download parity with images): In Progress since 10-19. FTP credentials from 1Password, connection reuse, `https://` first, S3 links, URL redaction.
- **Video Delivery wrap-up:** Slice 5 closed (BDD-3213 Done, BDD-3216 Canceled). #2981 in production. The #2951 `video_processing_enabled` backfill is still not visible as done.
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, still assigned to Kushel.

## PR backlog
- **His own:** #3002 (approved, `BLOCKED` on julsjacinto). Merged this cycle: #2981, #2996, #3001, brand-data-pipeline#2074. See [prs/mine.md](prs/mine.md).
- **Review queue (2):** #2960 (dushansilva, Willen, five days) and brand-data-pipeline#2019 (dependabot, since 10-07). See [prs/to-review.md](prs/to-review.md).
- **Churn:** product-service 9 to 5 (two production releases, #2984 and #2999, and about 20 PRs merged inside the window, mostly dwiajik's deletion-publishing and PDS work). brand-data-pipeline 17 to 15 (production releases #2070 and #2076). #1263, #1120 and #1058 (none his) still conflict.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **[BDD-3349](support/open.md)** (Low, alchemists export AccessDenied): fifteen days old, untouched.
- **[BDD-3357](support/open.md)** (Medium, ftcCashmere 403): thirteen days. The credential fix is in production since 10-20; whether it covers the 403 isn't confirmed.
- **[BDD-3386](support/open.md)** (Medium, Hatico prices): twelve days.
- **[BDD-3420](support/open.md)** (Medium, IOS by Maica prices): six days.
- BDD-3501 (Low, FTP clients left open) is new today. BDD-3305 is an internal feature request Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): intent vs delivery is moot now that 5.3 is canceled. Still open: moving the early audit entries, the N3 write-up, a multi-download SLO for PCS, and the #2951 backfill.

## Dagster (recurring patterns to watch)
- **adidas_FEED**: 11 assets failed 10-09, 10-13, 10-14, 10-15, 10-16, 10-19, 10-20. lawOfTheSea (10-16, 10-19), unitedLegwear (10-14, 10-19), liebeskind (10-19) and a hand-started riani run (10-16) hit the same shape.
- **ftcCashmere_FEED2**: tenth failure 10-19 17:38 UTC. Credential fix #2069 in production since 10-20 07:59 UTC (earmarked). bugatti_FEED (same `Credential lookup failed`, 10-15, 10-16) quiet since.
- **PDS publish failures**: back 10-19, twice. 09:07 UTC Kinesis `InternalFailure` (retry fix #2987 merged, not released), 21:50 UTC a credentials-endpoint error (#3003 draft).
- **3h hangs**: carsJeans `sync_images` fourteen hits (09-30 to 10-19, 10:10 UTC schedule, no owner). fynchHatton_FEED2 `sync_images` 10-19, from a schedule he disabled 09-30. process_enrichment_flow quiet since 10-18.
- **OOM**: vanDeVelde 10-20 (size bump #2079 merged), skiny 10-18.
- **10-19 09:07 to 09:18 UTC cluster**: analytics twice (one SSM 500), lerros, liebeskind, unitedLegwear, mostly "no logs". Looks like one AWS-side blip, not confirmed.
- **falke**: failed again 10-19 (hand-started), first since 10-15.
- **PCS p95 monitor**: muted. **Datadog log index quota**: not hit since 10-16.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
