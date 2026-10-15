# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 5**: [BDD-3213](sources/linear/my-issues.md) In Progress. Audit entries (BDD-3214) are in production; per-SKU counts (BDD-3215, Done in Linear) have 1/3 in production, 2/3 merged and 3/3 not open. Still open: observability, moving the early audit entries, the N3 write-up and the intent-vs-delivery decision. See [shaping](shaping/video-download-delivery.md).
- **Videos through the merge**: his [#2951](prs/mine.md), approved and clean, with a rollout step before deploy and a backfill after. No ticket linked.
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, still assigned to Kushel.

## PR backlog
- **His own:** #2951 open (approved). See [prs/mine.md](prs/mine.md).
- **Review queue (3):** product-service#2930 (irembbt, him only, ticket already Done), #2940 (Chamindu36, PDS replay worker, two approvals), brand-data-pipeline#2019 (dependabot, unchanged since 10-07). See [prs/to-review.md](prs/to-review.md).
- **Churn:** product-service 3 to 5 (#2941 merged; #2951, #2954, #2955 new; ten more opened and merged inside the window, including releases #2942 and #2952). brand-data-pipeline 14 to 15 (#2053 new; #2050, #2052 and releases #2051/#2054 opened and merged inside the window). #1956, #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still conflict as of the last clean read.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **[BDD-3349](support/open.md)** (Low, alchemists export AccessDenied): ten days old, untouched.
- **[BDD-3357](support/open.md)** (Medium, ftcCashmere 403): eight days, and ftcCashmere_FEED2 keeps failing.
- Next in line: BDD-3386 (a week, Hatico prices). BDD-3420 and BDD-3457 are new. BDD-3305 is an internal feature request Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): Slice 5 part 3/3, whether to move the early audit entries, the N3 write-up, intent vs delivery.

## Dagster (recurring patterns to watch)
- **PDS publish failures**: 10-13 and 10-14, likely the `partitionKey` over 256 characters Aji found. Not fixed, not his.
- **adidas_FEED**: 11 assets failed 10-09, 10-13, 10-14, 10-15. Never explained. unitedLegwear_FEED hit the same shape 10-14.
- **ftcCashmere_FEED2**: six failures since 10-08. Likely BDD-3357.
- **carsJeans** `sync_images` 3h hang: eleven hits (09-30 to 10-14), all from the 10:10 UTC schedule. No owner.
- **process_enrichment_flow** 3h hang: 10-06, 10-12, 10-13; quiet this cycle.
- **PCS 5xx**: quiet since 10-12 22:01 UTC.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
