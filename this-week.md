# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **[BDD-3223](sources/linear/my-issues.md) / [BDD-3205](sources/linear/my-issues.md) / [BDD-3191](sources/linear/my-issues.md)** — "Video Delivery" project, Slice 3.2 (PCS-generated CSV for video downloads). All three In Progress, unchanged this cycle. **[BDD-3206](sources/linear/my-issues.md)** (same project) Ready To Start, unchanged. See `shaping/video-download-delivery.md`.
- **[BDD-3251](sources/linear/my-issues.md)** — Bybar Delete gtins and refresh Data Manager, In Review. No change.
- **[BDD-3246](sources/linear/my-issues.md)** — Kultivate Becosoft image issue, In Review. No change.
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped 08-31 — still not started.
- **[BDD-3117](sources/linear/my-issues.md)** — "FW: PME stockbase", In Progress. No change.
- **[BDD-3252](sources/linear/my-issues.md)** — Off-Boarded Brands Deletion, To Do, not FD-referenced. No change.
- **[BDD-2406](sources/linear/my-issues.md)** — internal tech-debt item, Ready To Start, untouched.

## Shipped this cycle
- **[BDD-3237](support/recently-closed.md)** — Superdry deleting one image, In Review → Deployed. See `today.md`.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board) remains On-Hold, long-parked, still assigned to Kushel.

## PR backlog
- **Zero open PRs of his own.**
- **Review queue up to 6** — see `today.md` for detail; [PR #2514](prs/to-review.md) is the stale draft (21 days), [#2683](prs/to-review.md) untouched (4 days stale), [#1878](prs/to-review.md)/[#1871](prs/to-review.md) both Approved-and-waiting-on-him, [#2732](prs/to-review.md) is new and low-effort, [#2723](prs/to-review.md) flipped to Changes Requested (not blocking on him).
- Brand-migration PR wave continues, mostly not his: blueSeven/fynchHatton/milestone/dorisStreich/schumacher/polaris/swing pairs still working through review; vanDeVelde ([product-service#2697](archive/prs/product-service.md)) closed without merging this cycle — see `today.md`. Net PR count up on both repos this cycle (product-service 14→17, brand-data-pipeline 16→20) as several new brand/infra PRs landed.

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
9 support-shaped items (was 10) — BDD-3259/BDD-3238 picked up by abubakarwase this cycle. One new (BDD-3278):
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, oldest unassigned item, now seven-plus weeks.
- [BDD-3043](support/open.md) (Medium) — open since 2026-08-20, oldest Medium.
- [BDD-3241](support/open.md) (Low) — already carries an assignee (oleh.polishchuk) despite Triage status.
- [BDD-3243](support/open.md) (Low), [BDD-3260](support/open.md) (Low) — 09-14/09-16, no material change.
- [BDD-3266](support/open.md) (Medium) — 09-16.
- [BDD-3268](support/open.md) (Low) — 09-16, possibly the fix for the mosMosh/vanDeVelde run-time-limit pattern this cycle, see `today.md`.
- [BDD-3278](support/open.md) (Low) — new this cycle.
- **[BDD-3248](support/open.md) — sole remaining High-priority item, aging a fifth cycle now.**

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — active, unchanged this cycle. See Active work above.

## Dagster — recurring patterns to watch
- **New, no owner yet: mosMosh__FEED image-processing OOM + run-time-limit spree** — 10 OOM kills plus 2 run-time-limit breaches overnight. See `today.md` and `dagster-alerts/log.md`.
- **New, no owner yet: ara__PRICAT__process_images OOM** — 7 occurrences in 16 minutes.
- **New, single occurrence, no owner: fuchsSchmitt__FEED__process_images_sync, ammann__FEED__process_images, collect_reprocessing_candidates.**
- **New, has an owner: garcia/riani trigger_enrichment_from_map failures** — Dushan Silva said he'd check.
- **New, single occurrence: ona__vanDeVelde_FEED run-time-limit** — same day the vanDeVelde migration PR closed and a "reversed season labels" fix PR landed; possibly related, not confirmed.
- **Resolved: brand-data-pipeline#1825 (pmeLegend SAX-parsing flag) finally merged** — see `today.md`.
- **PDS Kinesis/stream-publish throttling — two more self-resolving flares**, one hitting a new high (metric 257, above the prior max of 150). Root cause (shard capacity) still not fully holding.
- **`analytics_trigger_sensor` — still recurring**, no owner or root cause in-channel.
- **Datadog log-index quota — recurring a fifth time**, self-resolves on quota reset each time, no permanent fix.
- **superdry_FEED OOM (publish_from_map), gardeur/FEED2, zizzi_FEED (trigger_enrichment_from_map), ECS `galvatron` health-check flapping — all quiet this window**, no new occurrences.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
