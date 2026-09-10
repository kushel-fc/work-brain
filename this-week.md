# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped 08-31 — still not started, over three weeks now.
- **[BDD-3117](sources/linear/my-issues.md)** — "FW: PME stockbase", In Progress. No change.
- **[BDD-2539](sources/linear/my-issues.md)** — Bilder-API render_requests_exceeded, In Progress. No change.
- **[BDD-3001](sources/linear/my-issues.md)** — Corrupted images, GUESS, In Progress. No change.
- **[BDD-2538](sources/linear/my-issues.md)** — PVH image-ID question, Ready to Start. No change.
- **[BDD-3189](sources/linear/my-issues.md)** — sketch tag info needed, now In Progress (started this cycle).
- **[BDD-3091](sources/linear/my-issues.md)** — Hugo Boss MM request, In Review. No change.

## The 09-04 bulk-assignment batch (down to 6, two more shipped this cycle)
BDD-3157, BDD-3152, BDD-3163, and BDD-1495 have all shipped; BDD-3091 (above) is In Review, BDD-3189 (above) is In Progress. Remaining, all Ready To Start and FD-referenced except BDD-2518 — full detail in [`sources/linear/my-issues.md`](sources/linear/my-issues.md):
- Medium: [BDD-3037](sources/linear/my-issues.md) (Florez packshots, oldest of the batch), [BDD-3129](sources/linear/my-issues.md), [BDD-3150](sources/linear/my-issues.md) (PIPE/Megatron size mismatch — see `today.md`), [BDD-3181](sources/linear/my-issues.md), [BDD-2518](sources/linear/my-issues.md) (tech debt, already his, status touched in the same pass).
- Low: [BDD-3110](sources/linear/my-issues.md), [BDD-3153](sources/linear/my-issues.md), [BDD-3168](sources/linear/my-issues.md), [BDD-3180](sources/linear/my-issues.md).

## Resurfaced stale internal tickets (touched 09-06, not FD-referenced)
- [BDD-1417](sources/linear/my-issues.md) (Low, Backlog) — image API error-rate spike, "since Jan 9th."
- [BDD-2406](sources/linear/my-issues.md) (Medium, Ready to Start) — DES retry/backoff tech debt.

## PR backlog
- **Zero open PRs of his own right now** — see `today.md`/`prs/mine.md`.
- **[PR #2514](prs/to-review.md)** (to review, product-service) — the only PR in his queue, draft, Changes Requested from someone else, stale 13 days.
- Dropped this cycle: his own #2639 (merged) and #2650 (closed unmerged); #2651 (to-review) merged without further action needed.

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
Backlog ticked up to 11 after two new FD-referenced tickets landed 09-09/09-10; BDD-3235 left the list via a team transfer to Replenishment, not by being resolved:
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, oldest unassigned item.
- [BDD-2497](support/open.md) (Low) — open since 2026-07-08.
- [BDD-3109](support/open.md) (Low) — open since 2026-08-20.
- [BDD-3043](support/open.md) (Medium) — open since 2026-08-20, oldest Medium.
- [BDD-3237](support/open.md), [BDD-3230](support/open.md), [BDD-3229](support/open.md) — Low, 09-07/09-08.
- [BDD-3228](support/open.md), [BDD-3236](support/open.md) — Medium, 09-07/09-08.
- [BDD-3241](support/open.md) (Low) — new 09-10, unusually already carries an assignee (oleh.polishchuk) despite Triage status.
- [BDD-3238](support/open.md) (Medium) — new 09-09.
- No High-priority tickets currently unassigned in Triage.

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — parked since 2026-08-10, technical options unsettled. No change this cycle.

## Dagster — recurring patterns to watch
- **lugina — root-caused, fix expected today, still failing hourly.** See `today.md`.
- **process_enrichment_flow — recurred a third time, still unexplained.** See `today.md`.
- **PDS Kinesis throttling — recurred twice more (now 4 total recurrences), each still self-resolving within the hour.** Root cause (shard capacity) still not fully holding despite the shard-increase fix.
- **bestseller/cecil publishing-step OOMs — quiet over 48h now, looking resolved.** See `today.md`.
- **New burst 09-09 afternoon/evening**: iosByMaica (asset materializations), ara/PRICAT (12 failed), bueltel/PRICAT (10 failed), numph (new brand, exceeded 3h limit), sanetta (9 failed) — all first occurrences, no follow-up yet.
- **trigger_enrichment_from_map — same failure mode as riani's recurrence hit a fresh burst of brands** (esqualo, schmidtGroup, didriksons, sarto x2, roesch) 09-09 afternoon; Dushan acknowledged, looking into it.
- **riani, noExcess, pixyle, analytics_trigger_sensor — all quiet this window** (no further occurrences since last sync).
- **onaDkCompany FEED run — still unconfirmed, aging further.** No Slack confirmation the run itself was ever fixed despite its linked ticket ([BDD-3167](support/recently-closed.md)) closing 09-01.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).

## Standing reminder
- [BDD-1721](sources/linear/my-issues.md) (Medium, Tech Debt) — "Fix images failing silently with no error message captured," Ready to Start, untouched since 2026-05-21 (now over 3.5 months).
