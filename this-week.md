# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 3.2**: [BDD-3223](sources/linear/my-issues.md) / [BDD-3205](sources/linear/my-issues.md) / [BDD-3206](sources/linear/my-issues.md) are In Review. [BDD-3191](sources/linear/my-issues.md) (N1 docs) is still In Progress. The PR stack is #2753 merged, #2754 approved but blocked, parts 3/4 not open yet. See `shaping/video-download-delivery.md`.
- **[BDD-2258](sources/linear/my-issues.md)**: Sample XML/CSV with video links + test manufacturer on SFTP. Ready to Start and unblocked since 08-31, but still not started (over five weeks stale).
- **[BDD-3252](sources/linear/my-issues.md)**: Off-Boarded Brands Deletion, To Do, not FD-referenced. No change.
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board) is still On-Hold, long parked, still assigned to Kushel.

## PR backlog
- **One open PR of his own:** [product-service#2754](prs/mine.md), approved but still blocked on merge. See `today.md`.
- **Review queue is 3:** [#2683](prs/to-review.md) (swing, 9 days, its pipeline half already merged), [#1878](prs/to-review.md) (polaris, sole reviewer), [#2514](prs/to-review.md) (stale draft).
- **Churn:** product-service went 16 to 14 (2 new, 4 dropped: #2748/#2737/#2750 merged, #2681 closed) and brand-data-pipeline went 18 to 19 (3 new, #1871/#1919 merged). GitHub resolved every mergeable state this cycle. Four old pipeline PRs (#1263, #1120, #1058, #1055, none his) now show real conflicts, and product-service#1737 is still conflicting.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
7 support-shaped items (was 6):
- [BDD-3005](support/open.md) (Low): open since 2026-08-03, the oldest unassigned item, now seven-plus weeks.
- [BDD-3043](support/open.md) (Medium): open since 2026-08-20, the oldest Medium.
- [BDD-3241](support/open.md) (Low): already has an assignee (oleh.polishchuk) despite being in Triage.
- [BDD-3243](support/open.md) (Low) and [BDD-3260](support/open.md) (Low): no material change.
- [BDD-3296](support/open.md) (Medium): new 09-22, not aged yet.
- **[BDD-3248](support/open.md) is still the only High-priority item, now aging a seventh cycle.**

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): active, and Slice 3.2 is now in review.

## Dagster (recurring patterns to watch)
- **The mosMosh/ara OOM sprees are over**: quiet for about 48h and the earmark is closed. The cause of the stop is still unknown, since BDD-3268 hasn't shipped.
- **riani `trigger_enrichment_from_map`**: 1 more failure (was 4 last cycle), still no fix since Dushan's 09-17 "will check."
- **sOliver FEED2 `map`**: 1 new failure, watch whether it repeats.
- **Datadog log-index quota, process_enrichment_flow, PDS Kinesis, galvatron ECS**: all quiet or routine this window.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
