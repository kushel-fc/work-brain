# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **[BDD-3252](sources/linear/my-issues.md)** — Off-Boarded Brands Deletion, To Do. New this cycle, not FD-referenced, not started.
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped 08-31 — still not started, over three weeks now.
- **[BDD-3117](sources/linear/my-issues.md)** — "FW: PME stockbase", In Progress. No change.
- **[BDD-2539](sources/linear/my-issues.md)** — Bilder-API render_requests_exceeded, In Progress. No change.
- **[BDD-3189](sources/linear/my-issues.md)** — sketch tag info needed, In Progress. No change.
- **[BDD-3237](sources/linear/my-issues.md)** — Superdry deleting one image, In Progress. No change.
- **[BDD-3236](sources/linear/my-issues.md)** — Cancels catwalk, Ready To Start. No change.
- **[BDD-3229](sources/linear/my-issues.md)** — Cancellations SS27, Ready To Start. No change.

## The 09-04 bulk-assignment batch (down to 8, one more shipped this cycle)
BDD-3152, BDD-3157, BDD-3163, BDD-3168, and now BDD-3091 have all shipped. Remaining, all Ready To Start and FD-referenced except BDD-2518 — full detail in [`sources/linear/my-issues.md`](sources/linear/my-issues.md):
- Medium: [BDD-3037](sources/linear/my-issues.md) (Florez, oldest of the batch), [BDD-3129](sources/linear/my-issues.md), [BDD-3150](sources/linear/my-issues.md) (PIPE/Megatron size mismatch — see `today.md`), [BDD-3181](sources/linear/my-issues.md), [BDD-2518](sources/linear/my-issues.md) (tech debt, already his, status touched in the same pass).
- Low: [BDD-3110](sources/linear/my-issues.md), [BDD-3153](sources/linear/my-issues.md), [BDD-3180](sources/linear/my-issues.md).

## PR backlog
- **Zero open PRs of his own** — unchanged this cycle.
- **[PR #2514](prs/to-review.md)** (to review, product-service) — the only PR in his queue, draft, Changes Requested from someone else, stale 17 days.
- GitHub churn this cycle touched none of his: product-service #2668/#2666 merged, three new PRs landed (#2677, #2676, #2675 — the last likely the falke merge-rule fix); brand-data-pipeline #1810 merged, two new PRs landed (#1864, #1862). None named him.

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
Backlog grew to 14 (from 11) — nothing left this cycle, three new landed:
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, oldest unassigned item.
- [BDD-3109](support/open.md) (Low) — open since 2026-08-20.
- [BDD-3043](support/open.md) (Medium) — open since 2026-08-20, oldest Medium.
- [BDD-3228](support/open.md), [BDD-3238](support/open.md) — Medium, 09-07/09-09.
- [BDD-3241](support/open.md) (Low) — already carries an assignee (oleh.polishchuk) despite Triage status.
- [BDD-3247](support/open.md), [BDD-3246](support/open.md), [BDD-3245](support/open.md), [BDD-3244](support/open.md) — Medium, 09-10/09-11.
- [BDD-3243](support/open.md) (Low) — new 09-10.
- [BDD-3251](support/open.md) (Medium) — new 09-11.
- **[BDD-3248](support/open.md), [BDD-3249](support/open.md) — new High-priority items, see `today.md`.**

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — parked since 2026-08-10, technical options unsettled. No change this cycle.

## Dagster — recurring patterns to watch
- **profuomo — recurred after being called resolved. See `today.md`.**
- **PDS Kinesis/stream-publish throttling — recurred several more times this cycle**, still self-resolving each time. Root cause (shard capacity) still not fully holding despite the shard-increase fix.
- **ECS `galvatron` health-check flapping — six more short-lived trigger/recover cycles**, all self-resolving within minutes. Long-running background noise, no action taken.
- **Datadog log-index quota — recurred a second time** (warn → daily cap → auto-recover on reset), same pattern as last cycle. Upgraded to `recurring` status in the log; worth a permanent fix if it keeps happening.
- **`analytics_trigger_sensor` — fired twice more**, still no owner or root cause in-channel.
- **falke — hit the same merge-rule bug as iosByMaica, fixed same day.** See `today.md`.
- **New first-occurrence brands this cycle**: sOliver/FEED2 (12 materializations), snocks/FEED (map/merge/publish_from_map), ona__falke_FEED (3h timeout, distinct from the earlier falke_PRICAT timeout), rinoAndPelle_FEED (3h timeout, first since 08-24).
- **kultivate_FEED — recurred a third time** (twice 09-10, once more 09-11).
- **enrichment_file_sensor — 5 materializations failed**, same family as the 08-23 occurrence.
- **fashionCloud FEED/FEED2 dev-triggered test runs** — attributed to "Dagster Dev User" with an acknowledging reaction, not treated as a production incident.
- **ammann/garcia OOM cluster and process_enrichment_flow 3h-timeout — both quiet this cycle.** See `today.md`.
- **onaDkCompany FEED run — still unconfirmed, aging further.** No Slack confirmation the run itself was ever fixed despite its linked ticket ([BDD-3167](support/recently-closed.md)) closing weeks ago.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
