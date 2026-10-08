# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 5**: [BDD-3213](sources/linear/my-issues.md) In Progress. Its child [BDD-3214](sources/linear/my-issues.md) (5.1 PCS aggregated audit entry) is In Review with [product-service#2870](prs/mine.md) (1/3) approved. The content cluster looks like the N3 answer, but BDD-3193 still doesn't say so. Open questions from BDD-3214: is the `failed` outcome reachable, and does `FILE_DOWNLOADED` get registered. Intent vs delivery for the audit still isn't written down. See [shaping](shaping/video-download-delivery.md).
- **Slice 3.2 follow-up in production**: product-service#2866 is in production release #2878, not merged yet. Earmarked.
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, still assigned to Kushel.
- **BDD-2258** Canceled 10-08.

## PR backlog
- **His own:** product-service#2870 (approved, blocked) and brand-data-pipeline#2013 (approved, clean). See [prs/mine.md](prs/mine.md).
- **Review queue:** brand-data-pipeline#2019 (dependabot). See [prs/to-review.md](prs/to-review.md).
- **Churn:** product-service 3 to 4. #2862 merged, his #2870 and release #2878 are new, seven more opened and merged inside the window. brand-data-pipeline 12 to 16: his #2013, #2019, #2021 (bestseller brand IDs) and release #2023 are new, six opened and merged inside the window, #2014 closed unmerged. #1956, #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still conflict as of the last clean read.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **None aged past a week.** BDD-3349 (alchemists export AccessDenied, Low) is three days old. The four new ones are a day old or less. BDD-3305 is an internal feature request Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): Slice 5 started shipping with #2870. Still needs the N3 outcome written down and the intent-vs-delivery and `failed`-outcome decisions.

## Dagster (recurring patterns to watch)
- **carsJeans** `sync_images` 3h hang: six hits (09-30 to 10-07), all from the 10:10 UTC schedule. No owner.
- **bestseller_FEED2** 3h hang (new, 10-07): watch for a repeat after the brand-ID change lands.
- **process_enrichment_flow** 3h hang and the **Datadog log index quota**: no repeat this cycle.
- **PDS stream relay undelivered** alarms: no repeat this cycle. dwiajik's BDD-3283 relay alarms (#2871) merged 10-07.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
