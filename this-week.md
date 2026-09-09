# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped 08-31 — still not started, over three weeks now.
- **[BDD-3117](sources/linear/my-issues.md)** — "FW: PME stockbase", In Progress. No change.
- **[BDD-2539](sources/linear/my-issues.md)** — Bilder-API render_requests_exceeded, In Progress. No change.
- **[BDD-3001](sources/linear/my-issues.md)** — Corrupted images, GUESS, In Progress. No change.
- **[BDD-2538](sources/linear/my-issues.md)** — PVH image-ID question, Ready to Start. No change.
- **[BDD-3163](sources/linear/my-issues.md)** — Brand Offboarding delete data, now In Progress (started this cycle). Cross-check the Notion "Brands that got offboarded" table before acting.
- **[BDD-3091](sources/linear/my-issues.md)** — Hugo Boss MM request, now In Review (started this cycle).

## The 09-04 bulk-assignment batch (down to 8, two more started this cycle)
BDD-3157 and BDD-3152 shipped previously; BDD-3163 and BDD-3091 (above) are now underway. Remaining, all Ready To Start and FD-referenced except BDD-2518 — full detail in [`sources/linear/my-issues.md`](sources/linear/my-issues.md):
- Medium: [BDD-3037](sources/linear/my-issues.md) (Florez packshots, oldest of the batch), [BDD-3129](sources/linear/my-issues.md), [BDD-3150](sources/linear/my-issues.md) (PIPE/Megatron size mismatch — its candidate fix just merged, see `today.md`), [BDD-3181](sources/linear/my-issues.md), [BDD-3189](sources/linear/my-issues.md), [BDD-2518](sources/linear/my-issues.md) (tech debt, already his, status touched in the same pass).
- Low: [BDD-3110](sources/linear/my-issues.md), [BDD-3153](sources/linear/my-issues.md), [BDD-3168](sources/linear/my-issues.md), [BDD-3180](sources/linear/my-issues.md).

## Resurfaced stale internal tickets (touched 09-06, not FD-referenced)
- [BDD-1417](sources/linear/my-issues.md) (Low, Backlog) — image API error-rate spike, "since Jan 9th."
- [BDD-2406](sources/linear/my-issues.md) (Medium, Ready to Start) — DES retry/backoff tech debt.
- [BDD-1495](sources/linear/my-issues.md) (Low, To Do) — PIPE CWF image reprocessing discrepancy.

## PR backlog
- **His own [PR #2639](prs/mine.md)** (product-service, out of draft) and **[PR #2650](prs/mine.md)** (product-service, new draft) — see `today.md`.
- **[PR #2651](prs/to-review.md)** (to review, product-service) — new, no reviews yet.
- **[PR #2514](prs/to-review.md)** (to review, draft) — Changes Requested from someone else, stale 12 days.
- Dropped this cycle: #1744, #2618, #2628 all merged without his review (see `today.md`).

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
Backlog ticked up to 10 after two new FD-referenced tickets landed 09-08; BDD-3227 left the list via a team transfer to Replenishment, not by being resolved:
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, oldest unassigned item.
- [BDD-2497](support/open.md) (Low) — open since 2026-07-08.
- [BDD-3109](support/open.md) (Low) — open since 2026-08-20.
- [BDD-3043](support/open.md) (Medium) — open since 2026-08-20, oldest Medium.
- [BDD-3235](support/open.md), [BDD-3230](support/open.md), [BDD-3229](support/open.md) — Low, 09-07.
- [BDD-3228](support/open.md) (Medium) — 09-07.
- [BDD-3237](support/open.md) (Low), [BDD-3236](support/open.md) (Medium) — new, 09-08.
- No High-priority tickets currently unassigned in Triage.

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — parked since 2026-08-10, technical options unsettled. No change this cycle.

## Dagster — recurring patterns to watch
- **PDS Kinesis throttling — fix merged, recurred twice more anyway.** See `today.md` for the full story.
- **bestseller/cecil publishing-step OOMs — real fix merged, quiet since.** See `today.md`; not yet confirmed but no recurrence in ~24h.
- **process_enrichment_flow — stuck run, still unexplained.** See `today.md`.
- **lugina — new failure signature.** `move_images_from_ftp_to_s3_job_sync` failed on both FEED and FEED2 09-09 08:18 UTC — distinct from lugina's already-established "asset materializations failed" recurring pattern (last seen 09-07).
- **riani — recurrence of its 08-24 `trigger_enrichment_from_map` failure**, 09-08.
- **noExcess — new brand, first "exceeded 3h limit" occurrence**, 09-08.
- **New monitor: pixyle "Failed to create collection"** — first real trigger 09-08 (self-resolved), after test notifications the same morning suggested Dushan just set it up.
- **analytics_trigger_sensor — two occurrences 09-07/09-08, no thread yet.**
- **sOliver/FEED, Megatron → Backend delays, galvatron ECS blips, enrichment-service 504s, "no valid SKUs"/corrupted-EAN, connector_type config errors — all quiet this window.**
- **onaDkCompany FEED run — still unconfirmed, aging further.** No Slack confirmation the run itself was ever fixed despite its linked ticket ([BDD-3167](support/recently-closed.md)) closing 09-01.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).

## Standing reminder
- [BDD-1721](sources/linear/my-issues.md) (Medium, Tech Debt) — "Fix images failing silently with no error message captured," Ready to Start, untouched since 2026-05-21 (now over 3.5 months).
