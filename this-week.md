# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 5**: [BDD-3213](sources/linear/my-issues.md) In Progress. Audit entries (BDD-3214) are in production. Per-SKU counts (BDD-3215, Done) have all three PRs merged: 1/3 in production, 2/3 and 3/3 in staging. New: [BDD-3216](sources/linear/my-issues.md) (backend delivery measurement), Backlog, gated on the intent-vs-delivery decision. Also open: moving the early audit entries and the N3 write-up. See [shaping](shaping/video-download-delivery.md).
- **Videos through the merge**: his #2951 is merged and in staging. Production rollout step and backfill still to do (earmarked).
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, still assigned to Kushel.

## PR backlog
- **His own:** none open. See [prs/mine.md](prs/mine.md).
- **Review queue (3):** product-service#2960 (dushansilva, Willen mapping rules, new), #2930 (irembbt, him only, ticket already Done), brand-data-pipeline#2019 (dependabot, unchanged since 10-07). #2940 merged without his review. See [prs/to-review.md](prs/to-review.md).
- **Churn:** product-service 5 to 5 (#2940, #2951, #2954, #2955 merged; #2960, #2961, #2966, #2969 new; ten more opened and merged inside the window, plus staging release #2967). brand-data-pipeline 15 to 15 (#2053 merged; #2062 new; seven more opened and merged inside the window). #2969 (dwiajik, SDK delete events) conflicts. #1956, #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still conflict as of the last clean read.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **[BDD-3349](support/open.md)** (Low, alchemists export AccessDenied): eleven days old, untouched.
- **[BDD-3357](support/open.md)** (Medium, ftcCashmere 403): nine days. The feed's latest failures quote a credential lookup error instead.
- **[BDD-3386](support/open.md)** (Medium, Hatico prices): eight days.
- BDD-3420 (IOS by Maica prices) is two days old. BDD-3305 is an internal feature request Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): intent vs delivery (now blocks BDD-3216), whether to move the early audit entries, the N3 write-up.

## Dagster (recurring patterns to watch)
- **adidas_FEED**: 11 assets failed 10-09, 10-13, 10-14, 10-15, 10-16. Irem tagged 10-16. unitedLegwear (10-14) and lawOfTheSea (10-16) hit the same shape.
- **Credential lookup failures**: ftcCashmere_FEED2 (seventh since 10-08) and bugatti_FEED (first), per Aji.
- **falke** after its 10-14 migration: four failures 10-15.
- **carsJeans** `sync_images` 3h hang: twelve hits (09-30 to 10-15), all from the 10:10 UTC schedule. No owner.
- **process_enrichment_flow** 3h hang: 10-06, 10-12, 10-13, 10-16.
- **Datadog log index quota**: reached overnight 10-16, hiding logs for failures in that window.
- **PDS publish failures**: quiet since 10-14 21:49 UTC; the `partitionKey` length issue is still not known to be fixed.
- **PCS 5xx**: one-minute warn 10-16 08:36 UTC, first since 10-12.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
