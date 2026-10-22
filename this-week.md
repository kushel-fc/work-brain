# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Reprocessing (project, all his):** BDD-3494 to BDD-3498 Done (#2996, #3002, #3008, #3017 and brand-data-pipeline#2074 merged; the first and last in production). [BDD-3499](sources/linear/my-issues.md) (admin page, frontend) In Review on frontend#7203. BDD-3455 (old parent) Canceled 10-21.
- **[BDD-3449](sources/linear/my-issues.md)** (video download parity with images): To Do. FTP credentials from 1Password, connection reuse, `https://` first, S3 links, URL redaction. BDD-3501 (Triage) reports the same unclosed-FTP-client problem in the image downloader.
- **Video Delivery wrap-up:** Slice 5 closed. The #2951 `video_processing_enabled` backfill is still not visible as done.
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, still assigned to Kushel.

## PR backlog
- **His own:** frontend#7203 (open, `BLOCKED`, no review yet). Merged this cycle: #3017, #3028. See [prs/mine.md](prs/mine.md).
- **Review queue (2):** product-service#3035 (new) and brand-data-pipeline#2019 (dependabot, since 10-07). See [prs/to-review.md](prs/to-review.md).
- **Churn:** product-service 5 to 6 (productions #3025 and #3039; dwiajik's export-PDS-payloads stack #3034/#3035/#3036, Chamindu36's #3040, dwiajik's #3041). brand-data-pipeline 18 to 14 (productions #2089 and #2095, #2087, #2077 merged; #2044 closed). #1263, #1120, #1058, #1956, #1880 and #1879 (none his) still conflict.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **[BDD-3349](support/open.md)** (Low, alchemists export AccessDenied): seventeen days old, untouched.
- **[BDD-3357](support/open.md)** (Medium, ftcCashmere 403): fifteen days. The credential fix has been in production since 10-20 and ftcCashmere has been quiet since; whether it covers the 403 isn't confirmed.
- **[BDD-3386](support/open.md)** (Medium, Hatico prices): fourteen days.
- **[BDD-3420](support/open.md)** (Medium, IOS by Maica prices): eight days.
- BDD-3501 (Low, FTP clients left open) is two days old. BDD-3305 is an internal feature request Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): intent vs delivery is moot now that 5.3 is canceled. Still open: moving the early audit entries, the N3 write-up, a multi-download SLO for PCS, and the #2951 backfill.

## Dagster (recurring patterns to watch)
- **adidas_FEED**: seven failures through 10-20 (none 10-21, still unexplained).
- **ftcCashmere_FEED2**: quiet about 48h since the credential fix. bugatti_FEED quiet since 10-16.
- **3h hangs**: carsJeans `sync_images` sixteen hits (09-30 to 10-21, 10:10 UTC, no owner). fynchHatton_FEED2 `sync_images` 10-19, 10-20 and twice 10-21, from a schedule he disabled 09-30. process_enrichment_flow twice 10-21.
- **PCS 5xx**: ALB ratio and content API rate, overnight 10-22 (recovered). **PDS**: relay Lambda 10-20 (recovered), publish failures 10-19.
- **New this cycle**: ultimoFashion_FEED (three failures), calida_FEED second day.
- **PCS p95 monitor**: muted. **Datadog log index quota**: not hit since 10-16.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
