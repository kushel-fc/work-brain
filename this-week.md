# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Reprocessing (project, all his):** done. BDD-3494 to BDD-3499 are Done and every PR merged (#2996, #3002, #3008, #3017, brand-data-pipeline#2074, frontend#7203). BDD-3455 (old parent) Canceled 10-21.
- **Daily video sweep (new, five Backlog tickets, all his):** [BDD-3543 to BDD-3547](sources/linear/my-issues.md): config contract block, dim-admin-api SDK video client, download-job hash-match fix, sweep Lambda, Terraform and deploy. Created 10-22 16:02 UTC, nothing started.
- **[BDD-3449](sources/linear/my-issues.md)** (video download parity with images): To Do. FTP credentials from 1Password, connection reuse, `https://` first, S3 links, URL redaction. BDD-3501 (the same FTP-client problem in the image downloader) was fixed by julsjacinto's product-service#3054 and Deployed 10-23, so part of this may now be covered.
- **Video Delivery wrap-up:** Slice 5 closed. BDD-3424 (N1, PDS image coverage) Done 10-22. The #2951 `video_processing_enabled` backfill is still not visible as done.
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, still assigned to Kushel.

## PR backlog
- **His own:** none open. See [prs/mine.md](prs/mine.md).
- **Review queue (3):** product-service#3045 (CodeQL fix, changes-requested), staging release #3058, and brand-data-pipeline#2019 (dependabot, since 10-07). See [prs/to-review.md](prs/to-review.md).
- **Churn:** product-service 6 to 7 (productions #3039 and #3051, dwiajik's export-PDS-payloads stack merged, MMS work from Chamindu36). brand-data-pipeline 14 to 16 (production #2099, six merges, two new opens). #1263, #1120, #1058, #1956, #1880 and #1879 (none his) still conflict or are stale.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **[BDD-3357](support/open.md)** (Medium, ftcCashmere 403): sixteen days. ftcCashmere_FEED2 failed again 10-22, so the credential fix didn't settle it.
- **[BDD-3386](support/open.md)** (Medium, Hatico prices): fifteen days.
- **[BDD-3420](support/open.md)** (Medium, IOS by Maica prices): nine days.
- BDD-3305 is an internal feature request Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): intent vs delivery is moot now that 5.3 is canceled. Still open: moving the early audit entries, the N3 write-up, a multi-download SLO for PCS, and the #2951 backfill.

## Dagster (recurring patterns to watch)
- **ftcCashmere_FEED2**: failed again 10-22 17:42 UTC after about two quiet days, eleventh time. The earmark that treated quiet as fixed was premature.
- **adidas_FEED**: eighth failure, 10-23 (none 10-21 or 10-22, still unexplained).
- **3h hangs**: carsJeans `sync_images` seventeen hits (09-30 to 10-22, no owner). fynchHatton_FEED2 `sync_images` fourth day, schedule he disabled 09-30 still on. luisacerano `sync_images` (hand-started by Dushan).
- **New this cycle**: lolaLiza_FEED global_transform OOM (exit 137, three retries), fabienne_PRICAT, stateOfArt_PRICAT.
- **PDS**: size relay Lambda alert 10-22 (recovered). **PCS 5xx**: overnight 10-22 (recovered).
- **PCS p95 monitor**: muted. **Datadog log index quota**: not hit since 10-16.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
