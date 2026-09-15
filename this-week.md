# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **[BDD-3223](sources/linear/my-issues.md) / [BDD-3205](sources/linear/my-issues.md) / [BDD-3206](sources/linear/my-issues.md)** — new "Video Delivery" project, Slice 3.2 (PCS-generated CSV for video downloads). All Backlog, not started. See `shaping/video-download-delivery.md`.
- **[BDD-3251](sources/linear/my-issues.md)** — Bybar Delete gtins and refresh Data Manager, Ready To Start. New this cycle, picked up from Triage.
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped 08-31 — still not started, over three weeks now.
- **[BDD-3117](sources/linear/my-issues.md)** — "FW: PME stockbase", In Progress. No change.
- **[BDD-2539](sources/linear/my-issues.md)** — Bilder-API render_requests_exceeded, In Progress. No change.
- **[BDD-3189](sources/linear/my-issues.md)** — sketch tag info needed, In Progress. No change.
- **[BDD-3237](sources/linear/my-issues.md)** — Superdry deleting one image, In Progress. No change.
- **[BDD-3252](sources/linear/my-issues.md)** — Off-Boarded Brands Deletion, To Do, not FD-referenced. No change.

## The 09-04 bulk-assignment batch (down to 5, three more shipped this cycle)
BDD-3152, BDD-3157, BDD-3163, BDD-3168, BDD-3091, BDD-3236, BDD-3229, BDD-3180, and now BDD-3150 have all shipped. Remaining, all Ready To Start and FD-referenced except BDD-2518 — full detail in [`sources/linear/my-issues.md`](sources/linear/my-issues.md):
- Medium: [BDD-3037](sources/linear/my-issues.md) (Florez, oldest of the batch), [BDD-3129](sources/linear/my-issues.md), [BDD-3181](sources/linear/my-issues.md), [BDD-2518](sources/linear/my-issues.md) (tech debt, already his, status touched in the same pass).
- Low: [BDD-3110](sources/linear/my-issues.md), [BDD-3153](sources/linear/my-issues.md).

## PR backlog
- **Zero open PRs of his own** — unchanged this cycle.
- **Review queue up to 5** — see `today.md` for detail on the four new brand-migration PRs; [PR #2514](prs/to-review.md) is the stale one.
- Big brand-migration PR wave this cycle: 9 new PR pairs across both repos (blueSeven, fynchHatton, milestone, cinque, polaris, swing, schumacher, dorisStreich), all mergeable. 5 merged (product-service #2677/#2676/#2675, brand-data-pipeline #1864/#1862), none his.

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
15 support-shaped items (was 14) — BDD-3251 and BDD-3247 left (picked up/shipped), three new landed (BDD-3260, BDD-3259, BDD-3258):
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, oldest unassigned item.
- [BDD-3109](support/open.md) (Low) — open since 2026-08-20.
- [BDD-3043](support/open.md) (Medium) — open since 2026-08-20, oldest Medium.
- [BDD-3228](support/open.md), [BDD-3238](support/open.md) — Medium, 09-07/09-09.
- [BDD-3241](support/open.md) (Low) — already carries an assignee (oleh.polishchuk) despite Triage status.
- [BDD-3246](support/open.md), [BDD-3245](support/open.md), [BDD-3244](support/open.md) — Medium, 09-10.
- [BDD-3243](support/open.md) (Low) — new 09-10.
- [BDD-3260](support/open.md), [BDD-3258](support/open.md) (Low), [BDD-3259](support/open.md) (Medium) — new this cycle.
- **[BDD-3248](support/open.md), [BDD-3249](support/open.md) — High-priority items, aging a second cycle now.**
- **[BDD-3263](sources/linear/triage.md) — new Urgent security ticket, see `today.md`.** (Not in this list — no FD reference, internal.)

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — moved from parked to active this cycle; see `today.md` and Active work above.

## Dagster — recurring patterns to watch
- **The FTP-move failure (`move_images_from_ftp_to_s3_job_sync`) spread from profuomo/lugina to beheim, holyfashion, and royRobson. See `today.md`.**
- **PDS Kinesis/stream-publish throttling — one more brief flare (11 min), self-resolved.** Root cause (shard capacity) still not fully holding despite the shard-increase fix.
- **Datadog log-index quota — recurred a third time**, same trigger/recover pattern. Worth a permanent fix (quota increase or volume reduction) if this keeps happening weekly.
- **New brands hitting the 3h timeout**: blackstone_FEED / ona__blackstone_FEED (first occurrence), ona__falke_FEED (recurrence, distinct run from 09-13's).
- **New alert type**: summum__PRICAT__trigger_enrichment_from_map failed — first occurrence for this brand/step.
- **`analytics_trigger_sensor` — still recurring**, no owner or root cause in-channel. Quiet this specific window.
- **ECS `galvatron` health-check flapping, kultivate_FEED, enrichment_file_sensor, snocks/FEED, sOliver/FEED2, ammann/garcia OOM cluster, process_enrichment_flow timeout, onaDkCompany FEED** — all quiet this window, no new occurrences to report.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
