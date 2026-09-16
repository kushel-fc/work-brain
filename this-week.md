# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **[BDD-3223](sources/linear/my-issues.md) / [BDD-3205](sources/linear/my-issues.md) / [BDD-3206](sources/linear/my-issues.md) / [BDD-3191](sources/linear/my-issues.md)** — "Video Delivery" project, Slice 3.2 (PCS-generated CSV for video downloads). BDD-3223 and BDD-3191 (new this cycle) both advanced to Ready To Start; BDD-3205/3206 still Backlog. See `shaping/video-download-delivery.md`.
- **[BDD-3251](sources/linear/my-issues.md)** — Bybar Delete gtins and refresh Data Manager, now In Progress (was Ready To Start).
- **[BDD-3246](sources/linear/my-issues.md)** — new this cycle, picked up from Triage, already In Progress (Kultivate Becosoft image issue).
- **[BDD-3237](sources/linear/my-issues.md)** — Superdry deleting one image, now In Review.
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped 08-31 — still not started, over four weeks now.
- **[BDD-3117](sources/linear/my-issues.md)** — "FW: PME stockbase", In Progress. No change.
- **[BDD-2539](sources/linear/my-issues.md)** — Bilder-API render_requests_exceeded, In Progress. No change.
- **[BDD-3189](sources/linear/my-issues.md)** — sketch tag info needed, In Progress. No change.
- **[BDD-3252](sources/linear/my-issues.md)** — Off-Boarded Brands Deletion, To Do, not FD-referenced. No change.
- **[BDD-2406](sources/linear/my-issues.md) / [BDD-2518](sources/linear/my-issues.md)** — internal tech-debt items, Ready To Start, untouched.

## The 09-04 bulk-assignment batch — closed out
All items either shipped or reassigned away. The last 5 unstarted ones (BDD-3037, BDD-3129, BDD-3181, BDD-3110, BDD-3153) moved to abubakarwase this cycle. Nothing left to track from this batch — see `today.md`.

## PR backlog
- **One open PR of his own** — [brand-data-pipeline#1890](prs/mine.md), a same-day fix for the active baldessarini Dagster incident. See `today.md`.
- **Review queue up to 6** — see `today.md` for detail; [PR #2514](prs/to-review.md) is the stale one.
- Brand-migration PR wave continues: 5 more new PR pairs this cycle (vanDeVelde, authenticStyle, plus the lookback-override feature pair #2705/#1888), all mergeable. #2655/#1839 (image-reprocessing-collector-job pair) merged.

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
13 support-shaped items (was 15) — BDD-3249 and BDD-3246 left (both picked up), zero new landed:
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, oldest unassigned item, now six weeks.
- [BDD-3109](support/open.md) (Low) — open since 2026-08-20.
- [BDD-3043](support/open.md) (Medium) — open since 2026-08-20, oldest Medium.
- [BDD-3228](support/open.md), [BDD-3238](support/open.md) — Medium, 09-07/09-09.
- [BDD-3241](support/open.md) (Low) — already carries an assignee (oleh.polishchuk) despite Triage status.
- [BDD-3245](support/open.md), [BDD-3244](support/open.md) — Medium, 09-10.
- [BDD-3243](support/open.md) (Low) — 09-10.
- [BDD-3260](support/open.md), [BDD-3258](support/open.md) (Low), [BDD-3259](support/open.md) (Medium) — landed 09-14.
- **[BDD-3248](support/open.md) — sole remaining High-priority item, aging a third cycle now.**

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — active; Slice 3.2 gained a fourth ticket (BDD-3191) this cycle. See Active work above.

## Dagster — recurring patterns to watch
- **New: baldessarini_FEED failing on almost every run — his own fix (#1890) not yet merged. See `today.md`.**
- **holyfashion/beheim move_images failures — his own "next release" fix not yet shipped. See `today.md`.** profuomo/royRobson quiet this cycle.
- **New: kultivate_FEED joined the "exceeded 3h limit" brands** (alongside blackstone/ona__blackstone, ona__falke — all quiet this window).
- **New: hom_FEED asset-materialization failure**, single occurrence, no follow-up yet.
- **PDS Kinesis/stream-publish throttling — one more brief self-resolving flare.** Root cause (shard capacity) still not fully holding despite the shard-increase fix.
- **Datadog log-index quota — recurred a fourth time**, same trigger/recover pattern. Still no permanent fix (quota increase or volume reduction).
- **New Datadog signature: extract-job flat legacy-archive copy hit Node's max string length** — self-resolved in ~5 min, possibly related to the archived-files string-limit work in product-service#2676/#2708. Worth watching.
- **`analytics_trigger_sensor` — still recurring**, no owner or root cause in-channel.
- **ECS `galvatron` health-check flapping — still noisy, still self-resolving.** No action needed.
- **gaborBags — one-off, fixed same day** (expired credential, rotated in 1PW).
- **sOliver/FEED2, summum PRICAT, blackstone/falke 3h-limit, falke merge-rule bug** — all quiet this window, no new occurrences.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
