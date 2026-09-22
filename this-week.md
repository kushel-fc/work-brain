# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **[BDD-3206](sources/linear/my-issues.md) / [BDD-3223](sources/linear/my-issues.md) / [BDD-3205](sources/linear/my-issues.md) / [BDD-3191](sources/linear/my-issues.md)** — Video Delivery Slice 3.2, all unchanged this cycle (no Linear movement since 09-21). See `shaping/video-download-delivery.md`.
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped 08-31 — still not started, over five weeks stale.
- **[BDD-3117](sources/linear/my-issues.md)** — "FW: PME stockbase", In Progress. No change.
- **[BDD-3252](sources/linear/my-issues.md)** — Off-Boarded Brands Deletion, To Do, not FD-referenced. No change.
- **[BDD-2406](sources/linear/my-issues.md)** — internal tech-debt item, Ready To Start, untouched.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board) remains On-Hold, long-parked, still assigned to Kushel.

## PR backlog
- **Zero open PRs of his own.**
- **Review queue down to 4** (was 5) — see `today.md` for detail. He personally cleared [#2748](sources/github/product-service/open-prs.md) this morning; [#2683](prs/to-review.md) untouched (over a week stale), [#2514](prs/to-review.md) stale draft (25 days), [#1878](prs/to-review.md)/[#1871](prs/to-review.md) both Approved-and-waiting-on-him.
- Brand-migration PR wave continues, mostly not his: blueSeven/fynchHatton/milestone/schumacher/polaris/swing pairs still working through review. product-service down 18→16 (one new, three merged), brand-data-pipeline up 17→18 (one new, "sizes" #1929).
- **product-service#1737** (not his) flipped from months of `unknown` mergeable state to a real conflict — worth a glance if it ever becomes his.

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
Unchanged this cycle — still 6 support-shaped items, identical to last sync:
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, oldest unassigned item, now seven-plus weeks.
- [BDD-3043](support/open.md) (Medium) — open since 2026-08-20, oldest Medium, sole Medium item.
- [BDD-3241](support/open.md) (Low) — already carries an assignee (oleh.polishchuk) despite Triage status.
- [BDD-3243](support/open.md) (Low), [BDD-3260](support/open.md) (Low) — no material change.
- **[BDD-3248](support/open.md) — sole remaining High-priority item, aging a sixth cycle now.**

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — active, no movement this cycle.

## Dagster — recurring patterns to watch
- **mosMosh/ara OOM sprees — quiet for the first time in 4 days**, but unconfirmed as resolved (see `today.md` and the new active earmark in `_meta/earmarks.md`). [BDD-3268](support/open.md) still In Progress.
- **riani — `trigger_enrichment_from_map` recurred again** (4x on 09-21), despite Dushan's 09-17 "will check." Still unfixed.
- **Datadog log-index quota — sixth occurrence**, self-resolves on quota reset each time, no permanent fix.
- **process_enrichment_flow, PDS Kinesis, meyer__FEED__map, ECS galvatron — all quiet or routine this window**, no new escalations.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
