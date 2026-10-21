# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Reprocessing (project, all his):** BDD-3494 to BDD-3497 Done (#2996, #3002, #3008 and brand-data-pipeline#2074 merged; #2996 and #2074 in production since 10-20). [BDD-3498](sources/linear/my-issues.md) (endpoints) In Review on #3017, parent BDD-3455 In Progress. BDD-3499 (admin page, frontend) Backlog.
- **[BDD-3449](sources/linear/my-issues.md)** (video download parity with images): back to To Do 10-21. FTP credentials from 1Password, connection reuse, `https://` first, S3 links, URL redaction. BDD-3501 (Triage) reports the same unclosed-FTP-client problem in the image downloader.
- **Video Delivery wrap-up:** Slice 5 closed. #2981 in production. The #2951 `video_processing_enabled` backfill is still not visible as done.
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, still assigned to Kushel.

## PR backlog
- **His own:** #3017 (approved by three humans, `BLOCKED`, CodeRabbit changes requested). Merged this cycle: #3002, #3008. See [prs/mine.md](prs/mine.md).
- **Review queue (1):** brand-data-pipeline#2019 (dependabot, since 10-07). #2960 closed. See [prs/to-review.md](prs/to-review.md).
- **Churn:** product-service 5 to 5 (production release #3015, about 15 PRs merged, mostly dwiajik's deletion publishing and PDS work). brand-data-pipeline 15 to 18 (production release #2085; new #2081, #2087, staging release #2088). #1263, #1120 and #1058 (none his) still conflict.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **[BDD-3349](support/open.md)** (Low, alchemists export AccessDenied): sixteen days old, untouched.
- **[BDD-3357](support/open.md)** (Medium, ftcCashmere 403): fourteen days. The credential fix is in production since 10-20 and ftcCashmere has been quiet since; whether it covers the 403 isn't confirmed.
- **[BDD-3386](support/open.md)** (Medium, Hatico prices): thirteen days.
- **[BDD-3420](support/open.md)** (Medium, IOS by Maica prices): seven days.
- BDD-3501 (Low, FTP clients left open) is a day old. BDD-3305 is an internal feature request Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): intent vs delivery is moot now that 5.3 is canceled. Still open: moving the early audit entries, the N3 write-up, a multi-download SLO for PCS, and the #2951 backfill.

## Dagster (recurring patterns to watch)
- **adidas_FEED**: seven failures through 10-20 (no new one 10-21 yet, still unexplained).
- **ftcCashmere_FEED2**: quiet about 24h since the credential fix (earmark triggered). bugatti_FEED quiet since 10-16.
- **3h hangs**: carsJeans `sync_images` fifteen hits (09-30 to 10-20, 10:10 UTC, no owner). fynchHatton_FEED2 `sync_images` 10-19 and 10-20, from a schedule he disabled 09-30.
- **PDS**: relay Lambda alerts 10-20 (four, style relay, recovered); publish failures 10-19 (retry fix #2987 and credentials fix #3003 now merged).
- **New this cycle**: calida_FEED, luisacerano_FEED (post-migration), falke_FEED again (hand-started), galvatron ECS blip (self-resolved).
- **PCS p95 monitor**: muted. **Datadog log index quota**: not hit since 10-16.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
