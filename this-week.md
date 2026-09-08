# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped 08-31 — still not started, over three weeks now.
- **[BDD-3117](sources/linear/my-issues.md)** — "FW: PME stockbase", In Progress. No change.
- **[BDD-2539](sources/linear/my-issues.md)** — Bilder-API render_requests_exceeded, In Progress. No change.
- **[BDD-3001](sources/linear/my-issues.md)** — Corrupted images, GUESS, In Progress. No change.
- **[BDD-2538](sources/linear/my-issues.md)** — PVH image-ID question, touched again 09-07, still Ready to Start (no status change since reopening).

## The 09-04 bulk-assignment batch (down to 10, two shipped this cycle)
BDD-3157 and BDD-3152 shipped (see `today.md`). Remaining, all FD-referenced except BDD-2518 — full detail in [`sources/linear/my-issues.md`](sources/linear/my-issues.md):
- Medium: [BDD-3037](sources/linear/my-issues.md) (Florez packshots, oldest of the batch), [BDD-3129](sources/linear/my-issues.md), [BDD-3150](sources/linear/my-issues.md) (PIPE/Megatron size mismatch — ties to PR #1744 in `today.md`), [BDD-3163](sources/linear/my-issues.md) (brand offboarding delete — cross-check the Notion "Brands that got offboarded" table before acting), [BDD-3181](sources/linear/my-issues.md), [BDD-3189](sources/linear/my-issues.md), [BDD-2518](sources/linear/my-issues.md) (tech debt, already his, status touched in the same pass).
- Low: [BDD-3091](sources/linear/my-issues.md), [BDD-3110](sources/linear/my-issues.md), [BDD-3153](sources/linear/my-issues.md), [BDD-3168](sources/linear/my-issues.md), [BDD-3180](sources/linear/my-issues.md).

## Resurfaced stale internal tickets (touched 09-06, not FD-referenced)
- [BDD-1417](sources/linear/my-issues.md) (Low, Backlog) — image API error-rate spike, "since Jan 9th."
- [BDD-2406](sources/linear/my-issues.md) (Medium, Ready to Start) — DES retry/backoff tech debt.
- [BDD-1495](sources/linear/my-issues.md) (Low, To Do) — PIPE CWF image reprocessing discrepancy.

## PR backlog
- **His own [PR #2639](prs/mine.md)** (product-service, draft) — see `today.md`.
- **[PR #2618](prs/to-review.md)** (to review, product-service) — Changes Requested from Chamindu36 (not him), unchanged since 09-04.
- **[PR #2628](prs/to-review.md)** (to review, product-service) — Changes Requested landed this cycle, from Chamindu36 (process objection, not code review), not him.
- **[PR #2514](prs/to-review.md)** (to review, draft) — Changes Requested from someone else.
- **[PR #1874](prs/to-review.md)** (to review, draft).
- **[PR #1756](prs/to-review.md)** (to review, draft) — stale, over 2 months with no activity.
- Dropped: #2607 and #2631 both closed unmerged this cycle (see `today.md`).

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
Backlog ticked back up to 9 after three new FD-referenced Low tickets landed 09-07:
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, oldest unassigned item.
- [BDD-2497](support/open.md) (Low) — open since 2026-07-08.
- [BDD-3109](support/open.md) (Low) — open since 2026-08-20.
- [BDD-3043](support/open.md) (Medium) — open since 2026-08-20, oldest Medium; still hasn't been swept up despite being older than several tickets that were.
- [BDD-3227](support/open.md), [BDD-3235](support/open.md), [BDD-3230](support/open.md), [BDD-3229](support/open.md) — newer Low items, 09-04/09-07.
- [BDD-3228](support/open.md) (Medium) — 09-07, newest Medium.
- No High-priority tickets currently unassigned in Triage.

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — parked since 2026-08-10, technical options unsettled. No change this cycle.

## Dagster — recurring patterns to watch
- **bestseller/cecil publishing-step OOMs — active again, fix didn't hold.** See `today.md` for the full recurrence story and the real follow-up fix, [product-service#2640](sources/github/product-service/open-prs.md).
- **PDS Kinesis throttling — new incident, root-caused, fix opened.** See `today.md`; [product-service#2642](sources/github/product-service/open-prs.md) increases shards 2→4 plus retry improvements.
- **process_enrichment_flow — stuck run, unexplained.** See `today.md`.
- **analytics_trigger_sensor — new failure signature, two occurrences.** `analytics` step failed with exit code 1 twice, ~6h apart (09-07 21:44 UTC, 09-08 03:46 UTC). No thread, no explanation yet — first appearance of this signature.
- **lugina/FEED — now a confirmed recurring pattern.** First seen 09-03 (11 asset materializations failed), recurred identically 09-07. No thread or reaction either time.
- **sOliver/FEED — quiet since its 09-06 first occurrence.** No repeat this window.
- **Megatron → Backend image-processing delays — quiet this window.** No new WARN breach since the 09-04/09-05 recurrence.
- **galvatron ECS health-check blips, enrichment-service 504s, "no valid SKUs"/corrupted-EAN, connector_type config errors — all quiet this window.**
- **onaDkCompany FEED run — still unconfirmed, aging further.** No Slack confirmation the run itself was ever fixed despite its linked ticket ([BDD-3167](support/recently-closed.md)) closing 09-01 — now well over a week past its 3h limit with zero movement across many sync cycles.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).

## Standing reminder
- [BDD-1721](sources/linear/my-issues.md) (Medium, Tech Debt) — "Fix images failing silently with no error message captured," Ready to Start, untouched since 2026-05-21 (now over 3.5 months).
