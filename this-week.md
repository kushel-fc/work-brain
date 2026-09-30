# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 3.2**: [BDD-3223](sources/linear/my-issues.md) / [BDD-3206](sources/linear/my-issues.md) are In Review. The product-service stack is complete (#2753, #2754, #2767, #2806), and BDD-3205 and BDD-3191 went Done 09-28. The backend side ([backend#7043](prs/mine.md), [#7048](prs/mine.md)) is what's left, and it didn't move this cycle. See [shaping](shaping/video-download-delivery.md).
- **[BDD-2258](sources/linear/my-issues.md)**: Sample XML/CSV with video links + test manufacturer on SFTP. High priority, Ready to Start and unblocked since 08-31, still not started (last updated 08-18).
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, long parked, still assigned to Kushel.

## PR backlog
- **None of his own open in the two tracked repos.** He opened and merged brand-data-pipeline#1978 (fynchHatton/milestone config) 09-29. The backend PRs are in [prs/mine.md](prs/mine.md).
- **Review queue is 4:** [#2808](prs/to-review.md) (blocks blueSeven), [#2826](prs/to-review.md) (package publishing scripts, new), [#1969](prs/to-review.md) (credential-key cleanup, now conflicting) and [#2514](prs/to-review.md) (stale draft, 33 days).
- **Churn:** product-service went 8 to 6. New: #2827, #2826, #2824. Merged: #2813, #2809, plus 11 more that opened and merged inside the window (releases, product-data-schema #2814/#2822, PIPE enables #2815/#2816, #2817, #2821, #2812). Closed: #2694, #2693, #2686 (stale blueSeven/polaris mappings). brand-data-pipeline went 14 to 12. Merged: #1972, #1941, plus his #1978 and #1979, #1976, #1975, #1973 and four releases inside the window. #1969 newly conflicts. #1956, #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still conflict. Nothing on product-service conflicts.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **None.** Triage holds only BDD-3305, an internal feature request that Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): active. The product-service side of Slice 3.2 is done, and the backend review is the remaining step.

## Dagster (recurring patterns to watch)
- **fynchHatton_FEED2** exceeded 3h on go-live day (09-29), right after his config PR. New, `active`.
- **authenticstyle_FEED_sync_images** exceeded 3h (09-29). New, `active`.
- **PDS stream publishing** flared twice and self-resolved both times (a transient Kinesis DNS failure).
- **cinque FEED2 `download_images`** (`recurring`, 09-27/09-28) and **dorisStreich FEED** (09-28) were both quiet this cycle.
- **mosMosh_FEED** has been quiet since the 09-27 run-limit hit, which is still `recurring`. The `analytics` staleness threshold was raised to 12h (brand-data-pipeline#1976), which may quiet that alert.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
