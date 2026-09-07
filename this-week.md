# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped 08-31 — still not started, three weeks now.
- **[BDD-3117](sources/linear/my-issues.md)** — "FW: PME stockbase", In Progress. No change.
- **[BDD-2539](sources/linear/my-issues.md)** — Bilder-API render_requests_exceeded, In Progress. No change.
- **[BDD-3001](sources/linear/my-issues.md)** — Corrupted images, GUESS, In Progress. No change.
- **[BDD-2538](sources/linear/my-issues.md)** — PVH image-ID question, reopened after being Done 08-18 through 09-01, now back to Ready to Start.

## The 09-04 bulk-assignment batch (Ready to Start, none started)
All FD-referenced except where noted — full detail in [`sources/linear/my-issues.md`](sources/linear/my-issues.md):
- Medium: [BDD-3037](sources/linear/my-issues.md) (Florez packshots, oldest of the batch), [BDD-3129](sources/linear/my-issues.md), [BDD-3150](sources/linear/my-issues.md) (PIPE/Megatron size mismatch — ties to PR #1744 in `today.md`), [BDD-3157](sources/linear/my-issues.md), [BDD-3163](sources/linear/my-issues.md) (brand offboarding delete — cross-check the Notion "Brands that got offboarded" table before acting), [BDD-3181](sources/linear/my-issues.md), [BDD-3189](sources/linear/my-issues.md), [BDD-2518](sources/linear/my-issues.md) (tech debt, already his, status touched in the same pass).
- Low: [BDD-3091](sources/linear/my-issues.md), [BDD-3110](sources/linear/my-issues.md), [BDD-3152](sources/linear/my-issues.md), [BDD-3153](sources/linear/my-issues.md), [BDD-3168](sources/linear/my-issues.md), [BDD-3180](sources/linear/my-issues.md).

## Resurfaced stale internal tickets (touched 09-06, not FD-referenced)
- [BDD-1417](sources/linear/my-issues.md) (Low, Backlog) — image API error-rate spike, "since Jan 9th."
- [BDD-2406](sources/linear/my-issues.md) (Medium, Ready to Start) — DES retry/backoff tech debt.
- [BDD-1495](sources/linear/my-issues.md) (Low, To Do) — PIPE CWF image reprocessing discrepancy.

## PR backlog
- **[PR #2618](prs/to-review.md)** (to review, product-service) — Changes Requested from Chamindu36 (not him), unchanged since 09-04.
- **[PR #2631](prs/to-review.md)** (to review, product-service) — new, docs-only, low urgency.
- **[PR #2628](prs/to-review.md)** (to review, product-service) — new, CI chore.
- **[PR #2607](prs/to-review.md)** (to review, product-service) — O'Neill migration, now a week stale.
- **[PR #2514](prs/to-review.md)** (to review, draft) — Changes Requested from someone else.
- **[PR #1874](prs/to-review.md)** (to review, draft).
- **[PR #1756](prs/to-review.md)** (to review, draft) — stale, over 2 months with no activity.
- He has **zero open PRs of his own** (see `today.md`). His earlier self-closed #2545 (GTIN cleanup batch) is still parked in archive, unrevisited.

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
Sharply shorter after the bulk assignment moved most of the backlog to Kushel directly:
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, now the oldest unassigned item.
- [BDD-2497](support/open.md) (Low) — open since 2026-07-08.
- [BDD-3109](support/open.md) (Low) — open since 2026-08-20.
- [BDD-3043](support/open.md) (Medium) — open since 2026-08-20, oldest Medium; notably did *not* get swept into the 09-04 bulk assignment despite being older than several tickets that did.
- No High-priority tickets currently unassigned in Triage.

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — parked since 2026-08-10, technical options unsettled. No change this cycle.

## Dagster — recurring patterns to watch
- **bestseller/cecil publishing-step OOMs — active this week, believed fixed.** Three real OOMs (exit 137) on the `publish_from_map`/`publish_from_process_images` steps: bestseller 09-05, cecil 09-06, bestseller again 09-07 (with a second weekend failure Chamindu flagged). Root-caused to a missing `enable_node_memory_optimization` Terraform flag on the publishing-job — fixed via [product-service#2633](sources/github/product-service/open-prs.md), merged 09-07. Worth confirming no repeat on the next run before calling it closed.
- **sOliver/FEED — new failure signature.** 12 asset materializations failed 09-06, no thread. First occurrence of this specific failure for sOliver (separate from the older enrichment-service 504 pattern that also touched this brand).
- **Megatron → Backend image-processing delays — recurred and self-resolved.** WARN-level queue-age breach 09-04 17:06 UTC, recovered 09-05 01:49 UTC (~10.5h). Same established pattern as 08-20/08-23; not treated as a fresh escalation.
- **pmeLegend/bestseller large-file & merge-step issues from last week — quiet since 09-03.** The SAX-parser fix ([PR #1744](prs/to-review.md)/product-service#2574) is now fully mergeable and Approved — worth pushing towards merge given the direct tie to [BDD-3150](sources/linear/my-issues.md), which he now owns.
- **galvatron ECS health-check blips, enrichment-service 504s, "no valid SKUs"/corrupted-EAN, connector_type config errors — all quiet this window.** No new occurrences of any of these established patterns.
- **onaDkCompany FEED run — still unconfirmed, aging further.** No Slack confirmation the run itself was ever fixed despite its linked ticket ([BDD-3167](support/recently-closed.md)) closing 09-01 — now well over a week past its 3h limit with zero movement across many sync cycles.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).

## Standing reminder
- [BDD-1721](sources/linear/my-issues.md) (Medium, Tech Debt) — "Fix images failing silently with no error message captured," Ready to Start, untouched since 2026-05-21 (now over 3.5 months).
