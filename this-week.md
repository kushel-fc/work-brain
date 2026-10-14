# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 5**: [BDD-3213](sources/linear/my-issues.md) In Progress. All Slice 5 code PRs so far (#2870, #2912, #2917, #2929) are in production. Still open: per-SKU counts, observability, the N3 write-up and the intent-vs-delivery decision. See [shaping](shaping/video-download-delivery.md).
- **Slice 3.2 parity follow-up**: product-service#2916 and backend#7085 in production 10-12, frontend#7177 merged 10-13. Linked to BDD-3223, which stays Done.
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, still assigned to Kushel.

## PR backlog
- **His own:** none open. See [prs/mine.md](prs/mine.md).
- **Review queue (4):** product-service#2930 (irembbt, certificate merge, him only), #2940 and #2941 (Chamindu36, PDS replay and package scope), brand-data-pipeline#2019 (dependabot, unchanged since 10-07). See [prs/to-review.md](prs/to-review.md).
- **Churn:** product-service 3 to 3 (#2928, #2929 merged, #2845 closed; #2930, #2940, #2941 new; production release #2938 merged 10-13 14:21 UTC). brand-data-pipeline 14 to 14, same PRs (production #2049). #1956, #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still conflict as of the last clean read.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **[BDD-3349](support/open.md)** (Low, alchemists export AccessDenied): nine days old, untouched.
- Next in line: BDD-3357 (a week, ftcCashmere 403) and BDD-3386 (six days, Hatico prices). BDD-3305 is an internal feature request Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): the rest of Slice 5, whether to move the early audit entries, the N3 write-up, intent vs delivery.

## Dagster (recurring patterns to watch)
- **PDS publish `partitionKey` over 256 characters** (10-13): new, cause known, not fixed. Not his.
- **PCS 5xx**: four episodes 10-09 to 10-12, quiet since 10-12 22:01 UTC.
- **ftcCashmere_FEED2**: failing 10-08, 10-09, 10-11, 10-12, 10-13. Likely BDD-3357.
- **carsJeans** `sync_images` 3h hang: ten hits (09-30 to 10-13), all from the 10:10 UTC schedule. No owner.
- **adidas_FEED**: 11 assets failed 10-09, 10-13 and 10-14. Never explained.
- **process_enrichment_flow** 3h hang: 10-06, 10-12, 10-13, still unexplained.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
