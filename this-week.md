# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 3.2**: [BDD-3223](sources/linear/my-issues.md) / [BDD-3205](sources/linear/my-issues.md) / [BDD-3206](sources/linear/my-issues.md) are In Review. [BDD-3191](sources/linear/my-issues.md) (N1 docs) is still In Progress. The PR stack is #2753 and #2754 merged, #2767 (3/4) waiting on human review, and 4/4 not open yet. See `shaping/video-download-delivery.md`.
- **[BDD-2258](sources/linear/my-issues.md)**: Sample XML/CSV with video links + test manufacturer on SFTP. High priority, Ready to Start and unblocked since 08-31, but still not started (last updated 08-18).
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board) is still On-Hold, long parked, still assigned to Kushel.

## PR backlog
- **One open PR of his own:** [product-service#2767](prs/mine.md) (3/4), waiting on first human review. See `today.md`.
- **Review queue is 4:** [#2683](prs/to-review.md) (swing, 10 days, its pipeline half already merged), [#1878](prs/to-review.md) (polaris, sole reviewer), [#1945](prs/to-review.md) (new, BDD-3273, waits on product-service#2764), [#2514](prs/to-review.md) (stale draft).
- **Churn:** product-service went 14 to 13 (2 new: #2767, #2764; 3 merged: #2754, #2762, #2746) and brand-data-pipeline went 19 to 17 (2 new: #1945, #1941; 4 merged: #1940, #1939, #1934, #1929). Four old pipeline PRs (#1263, #1120, #1058, #1055, none his) and product-service#1737 still conflict.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
9 support-shaped items (was 7):
- [BDD-3005](support/open.md) (Low): open since 2026-08-03, the oldest unassigned item, now seven-plus weeks.
- [BDD-3043](support/open.md) (Medium): open since 2026-08-20, the oldest Medium.
- [BDD-3241](support/open.md) (Low): already has an assignee (oleh.polishchuk) despite being in Triage.
- [BDD-3243](support/open.md) (Low) and [BDD-3260](support/open.md) (Low): no material change.
- [BDD-3296](support/open.md) (Medium): 09-22, not aged yet.
- [BDD-3306](support/open.md) and [BDD-3304](support/open.md) (both Medium): new 09-24. BDD-3306 (CWF GTIN `0` blocking the Showroom stock importer) matters more than its priority suggests.
- **[BDD-3248](support/open.md) is still the only High-priority item, now aging an eighth cycle.**

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): active. Slice 3.2 is in review with 2 of 4 PRs merged.

## Dagster (recurring patterns to watch)
- **Quiet cycle: only 2 alerts.** `viaVai_FEED_sync_images` exceeded the 3h run limit, and digel/FEED had 12 asset failures. Both are first occurrences, so watch whether they repeat.
- **riani `trigger_enrichment_from_map`** and **sOliver FEED2 `map`** didn't recur this window. Both are still `active` with no fix posted.
- **mosMosh/ara OOM sprees** have now been quiet for about 72h. The cause of the stop is still unknown, since BDD-3268 hasn't shipped.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
