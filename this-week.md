# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 5**: [BDD-3213](sources/linear/my-issues.md) In Progress. Part 1/3 (product-service#2870) merged and in production; BDD-3214 closed with it, though 2/3 and 3/3 aren't open. The content cluster looks like the N3 answer, but BDD-3193 still doesn't say so. Intent vs delivery still isn't written down. See [shaping](shaping/video-download-delivery.md).
- **Slice 3.2 in production**: #2866 shipped 10-08 and the flag was on, until he turned it off during the 10-08 PDS 5xx alert. Confirm it's back on.
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, still assigned to Kushel.

## PR backlog
- **His own:** none open. See [prs/mine.md](prs/mine.md).
- **Review queue:** brand-data-pipeline#2019 (dependabot). See [prs/to-review.md](prs/to-review.md).
- **Churn:** product-service 4 to 5: #2870, #2878 off; #2899, #2900, #2902 new; 21 more opened and merged inside the window, mostly dwiajik's PDS/PCS work. brand-data-pipeline 16 to 12: #2013, #2021, #2023 merged, #1993 closed unmerged. #1956, #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still conflict as of the last clean read.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **None aged past a week.** BDD-3349 (alchemists export AccessDenied, Low) is four days old, BDD-3357 two, BDD-3386 one. BDD-3305 is an internal feature request Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): Slice 5 parts 2/3 and 3/3, plus the N3 write-up and the intent-vs-delivery and `failed`-outcome decisions.

## Dagster (recurring patterns to watch)
- **carsJeans** `sync_images` 3h hang: seven hits (09-30 to 10-08), all from the 10:10 UTC schedule. No owner.
- **bestseller_FEED2** 3h hangs (10-07, 10-08): the 10-08 one is Irem's 300k-GTIN reprocess (BDD-3362). Should stop once that finishes.
- **PDS media 5xx** monitor (new, 10-08): self-resolved in about 20 minutes. Fix #2894 waits on production release #2899. dwiajik is adding ALB 5xx SLOs for PDS and PCS (#2900, #2902).
- **process_enrichment_flow** 3h hang, **Datadog log index quota**, **PDS stream relay undelivered**: no repeat this cycle.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
