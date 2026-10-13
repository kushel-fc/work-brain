# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 5**: [BDD-3213](sources/linear/my-issues.md) In Progress. All three code PRs (#2870, #2912, #2917) are in production, and #2929 (database rename) is approved. Still open: per-SKU counts, observability, the N3 write-up and the intent-vs-delivery decision. See [shaping](shaping/video-download-delivery.md).
- **Slice 3.2 parity follow-up**: product-service#2916 and backend#7085 both in production 10-12. The frontend PR isn't tracked here. Linked to BDD-3223, which stays Done.
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, still assigned to Kushel.

## PR backlog
- **His own:** one open, #2929 (approved, one check pending). See [prs/mine.md](prs/mine.md).
- **Review queue:** product-service#2928 (new, Chamindu36's PDS replay writer) and brand-data-pipeline#2019 (dependabot, unchanged since 10-07). See [prs/to-review.md](prs/to-review.md).
- **Churn:** product-service 5 to 3 (#2912, #2914, #2915, #2916 merged; #2928, #2929 new; production release #2922 merged 10-12 12:10 UTC). brand-data-pipeline 15 to 14 (#2029, #2030, #2032 merged; #2039, #2044 new; production #2036). #1956, #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still conflict as of the last clean read.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **[BDD-3349](support/open.md)** (Low, alchemists export AccessDenied): eight days old, untouched.
- Next in line: BDD-3357 (six days), BDD-3386 (five), BDD-3388 (four, touched 10-12 but still unassigned), BDD-3410 (new). BDD-3305 is an internal feature request Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): the rest of Slice 5, the N3 write-up, intent vs delivery.

## Dagster (recurring patterns to watch)
- **PCS 5xx**: four episodes since the monitors landed 10-09, the latest 10-12 21:45 UTC (after his PCS changes reached production). All self-resolved. Someone raised a hand on the latest, no thread.
- **ftcCashmere_FEED2**: failing 10-08, 10-09, 10-11, 10-12. Likely BDD-3357.
- **carsJeans** `sync_images` 3h hang: nine hits (09-30 to 10-12), all from the 10:10 UTC schedule. No owner.
- **adidas_FEED**: 11 assets failed 10-09 and 10-13. Irem was tagged on the first, no explanation.
- **process_enrichment_flow** 3h hang: 10-06 and 10-12, still unexplained.
- **Image-processing OOM** (exit 137): skiny and fuchsSchmitt 10-11, nothing since.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
