# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 5**: [BDD-3213](sources/linear/my-issues.md) In Progress. Audit entries (BDD-3214) and per-SKU counts (BDD-3215, all three PRs) are in production as of release #2973 (10-16). [BDD-3216](sources/linear/my-issues.md) (backend delivery measurement) is Backlog, gated on the intent-vs-delivery decision. See [shaping](shaping/video-download-delivery.md).
- **BDD-3223 follow-up**: his [#2981](prs/mine.md) (CSV and PDS-call speed-ups), approved by dwiajik, `BLOCKED`. Then a staging run, a production parity run and a JMeter re-run.
- **Videos through the merge**: #2951 is in production and the merge rule was fixed after the 10-16 failures. The `video_processing_enabled` backfill is still to do.
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, still assigned to Kushel.

## PR backlog
- **His own:** #2981. See [prs/mine.md](prs/mine.md).
- **Review queue (6):** product-service#2977 and brand-data-pipeline#2067 (dwiajik, deletion publishing, new), #2983 (Chamindu36, AI origin, new), #2960 (dushansilva, Willen, four days), #2930 (irembbt, him only, ticket already Done), brand-data-pipeline#2019 (dependabot, since 10-07). See [prs/to-review.md](prs/to-review.md).
- **Churn:** product-service 5 to 9 (#2969 merged; #2977, #2980, #2981, #2982, #2983 new; production release #2973 and six more opened and merged inside the window). brand-data-pipeline 15 to 17 (#2062 closed unmerged; #2067, #2068, #2069 new; production release #2064 and three more merged inside the window). Staging releases #2982 / #2068 are open. #1263, #1120 and #1058 (none his) still conflict.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **[BDD-3349](support/open.md)** (Low, alchemists export AccessDenied): fourteen days old, untouched.
- **[BDD-3357](support/open.md)** (Medium, ftcCashmere 403): twelve days. The feed's failures are a credential config problem with a fix PR open (#2069).
- **[BDD-3386](support/open.md)** (Medium, Hatico prices): eleven days.
- **[BDD-3420](support/open.md)** (Medium, IOS by Maica prices): five days.
- BDD-3305 is an internal feature request Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): intent vs delivery (blocks BDD-3216), whether to move the early audit entries, the N3 write-up, and a multi-download SLO for PCS.

## Dagster (recurring patterns to watch)
- **adidas_FEED**: 11 assets failed 10-09, 10-13, 10-14, 10-15, 10-16, 10-19. lawOfTheSea (10-16, 10-19), unitedLegwear (10-14) and a hand-started riani run (10-16) hit the same shape.
- **Credential lookup failures**: ftcCashmere_FEED2 (ninth since 10-08, fix PR #2069 open) and bugatti_FEED (10-15, 10-16).
- **process_enrichment_flow** 3h hang: 10-06, 10-12, 10-13, 10-16, 10-17, 10-18.
- **carsJeans** `sync_images` 3h hang: thirteen hits (09-30 to 10-16), all from the 10:10 UTC schedule, quiet 10-17 and 10-18. No owner.
- **skiny** process_images OOM, 10-18, first in the window.
- **falke** after its 10-14 migration: four failures 10-15, quiet since (honeypsabu's #2975 merged 10-16).
- **PCS p95 monitor**: muted. **PDS publish failures**: quiet since 10-14 21:49 UTC. **Datadog log index quota**: not hit since 10-16.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
