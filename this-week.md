# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 5**: [BDD-3213](sources/linear/my-issues.md) In Progress. Part 1/3 in production, part 2/3 (#2912) approved and clean, part 3/3 not open. #2912 sets `delivery.status: not_tracked`, so the audit records the request for now, but intent vs delivery and the N3 outcome still aren't written down. See [shaping](shaping/video-download-delivery.md).
- **Slice 3.2 parity follow-up**: product-service#2916, then backend#7085, then a frontend PR. Linked to BDD-3223, which stays Done.
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, still assigned to Kushel.

## PR backlog
- **His own:** three open: #2912 (approved, clean), #2916 (awaiting review), backend#7085 (conflicting). See [prs/mine.md](prs/mine.md).
- **Review queue:** brand-data-pipeline#2019 (dependabot), unchanged since 10-07. See [prs/to-review.md](prs/to-review.md).
- **Churn:** product-service 5 to 5 (#2899, #2900, #2902 merged, #2744 closed; #2912, #2914, #2915, #2916 new; production release #2913 merged 10-12). brand-data-pipeline 12 to 15 (#2029, #2030, #2032 new). #1956, #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still conflict as of the last clean read.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **[BDD-3349](support/open.md)** (Low, alchemists export AccessDenied): seven days old as of 10-12, untouched.
- Next in line: BDD-3357 (five days), BDD-3386 (four), BDD-3388 (three), BDD-3405 (new). BDD-3305 is an internal feature request Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): Slice 5 part 3/3, the N3 write-up, intent vs delivery, and the 3-PR parity follow-up.

## Dagster (recurring patterns to watch)
- **PCS 5xx** (new monitors, 10-09): three episodes in three days, all self-resolved, no owner. Marked `recurring`.
- **ftcCashmere_FEED2**: failing 10-08, 10-09, 10-11. Likely BDD-3357.
- **carsJeans** `sync_images` 3h hang: eight hits (09-30 to 10-09), all from the 10:10 UTC schedule. None 10-10 or 10-11. No owner.
- **process_enrichment_flow** 3h hang: 10-06 and 10-12, still unexplained.
- **Image-processing OOM** (exit 137): skiny and fuchsSchmitt 10-11.
- **bestseller_FEED2** hangs should be over: BDD-3362 (the reprocess behind them) went Done 10-12.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
