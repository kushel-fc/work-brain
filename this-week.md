# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **[BDD-3206](sources/linear/my-issues.md)** — Video Delivery Slice 3.2 backend routing, advanced Ready To Start → In Progress today (09-21) — first real code movement on this slice. **[BDD-3223](sources/linear/my-issues.md) / [BDD-3205](sources/linear/my-issues.md) / [BDD-3191](sources/linear/my-issues.md)** remain In Progress, unchanged. See `shaping/video-download-delivery.md`.
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped 08-31 — still not started, over five weeks stale.
- **[BDD-3117](sources/linear/my-issues.md)** — "FW: PME stockbase", In Progress. No change.
- **[BDD-3252](sources/linear/my-issues.md)** — Off-Boarded Brands Deletion, To Do, not FD-referenced. No change.
- **[BDD-2406](sources/linear/my-issues.md)** — internal tech-debt item, Ready To Start, untouched.

## Shipped this cycle
- **[BDD-3246](support/recently-closed.md)** — Kultivate Becosoft image issue, In Review → Done.

## Left the team this cycle
- **[BDD-3251](archive/linear/team-transfers.md)** — Bybar GTIN deletion, was his own In Review work, transferred to Replenishment (RPL-2346) and reset to Todo there. See `today.md`.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board) remains On-Hold, long-parked, still assigned to Kushel.

## PR backlog
- **Zero open PRs of his own.**
- **Review queue down to 5** (was 6) — see `today.md` for detail; [PR #2514](prs/to-review.md) is the stale draft (24 days), [#2683](prs/to-review.md) untouched (a week stale), [#1878](prs/to-review.md)/[#1871](prs/to-review.md) both Approved-and-waiting-on-him, [#2748](prs/to-review.md) is new.
- Brand-migration PR wave continues, mostly not his: blueSeven/fynchHatton/milestone/schumacher/polaris/swing pairs still working through review, dorisStreich now fully Approved. product-service up 17→18, brand-data-pipeline down 20→17 (net cleanup this cycle — two merged, one closed unmerged, no new).

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
6 support-shaped items (was 9) — zero new landed, quiet cycle. BDD-3278 shipped same day it landed; BDD-3268/BDD-3266 picked up by abubakarwase:
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, oldest unassigned item, now seven-plus weeks.
- [BDD-3043](support/open.md) (Medium) — open since 2026-08-20, oldest Medium, sole Medium item now.
- [BDD-3241](support/open.md) (Low) — already carries an assignee (oleh.polishchuk) despite Triage status.
- [BDD-3243](support/open.md) (Low), [BDD-3260](support/open.md) (Low) — 09-14/09-16, no material change.
- **[BDD-3248](support/open.md) — sole remaining High-priority item, aging a sixth cycle now.**

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — active, first real movement this cycle (BDD-3206). See Active work above.

## Dagster — recurring patterns to watch
- **Most consequential: mosMosh/ara OOM sprees, 4 days running, still no owner** — 21+ mosMosh occurrences, 26+ ara occurrences since 09-17. [BDD-3268](support/open.md) (possible fix) is In Progress with abubakarwase but hasn't landed yet. See `today.md` and `dagster-alerts/log.md`.
- **New: meyer__FEED__map failure** — single occurrence, distinct step from the already-shipped BDD-3155 ticket.
- **process_enrichment_flow — recurring, still unexplained** since 09-08, no owner or root cause in-channel.
- **PDS Kinesis/stream-publish throttling — hit a new all-time high** (metric 609, above the prior max of 257), self-resolved within ~15 min as usual. Root cause (shard capacity) still not holding under peak load.
- **Resolved: brand-data-pipeline#1912** (vanDeVelde reversed season labels) closed unmerged — see `today.md`.
- **`analytics_trigger_sensor`, Datadog log-index quota, superdry_FEED, gardeur/FEED2, zizzi_FEED, ECS `galvatron` — all quiet this window**, no new occurrences.
- Log pruned to the last 30 days this cycle (7 entries >30 days old moved out).
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
