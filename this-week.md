# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress, medium priority)
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped — still not started.
- **[BDD-2539](sources/linear/my-issues.md)** — Bilder-API render_requests_exceeded question, in progress (was unassigned Triage since July 8).
- **[BDD-3001](sources/linear/my-issues.md)** — Corrupted images, GUESS, in progress (recurring symptom, prior ticket FD 584227).
- **[BDD-3036](sources/linear/my-issues.md)** — Noah Group sketch-flag follow-up: `isPreliminary` cleared from feed_transform but not mergedSkus.

## PR backlog
- **[PR #1744](prs/to-review.md)** (to review, brand-data-pipeline) — still no reviews. Its companion product-service#2574 flipped to a real merge conflict this cycle, and a Dagster alert (pmeLegend stream-abort) this week points at exactly the problem this SAX-parser work is meant to fix.
- **[PR #2514](prs/to-review.md)** (to review, draft) — has Changes Requested from someone else.
- **[PR #1874](prs/to-review.md)** (to review, draft) — CodeRabbit approved.
- **[PR #1756](prs/to-review.md)** (to review, draft) — stale, over 2 months with no activity.
- He has **one open PR of his own** ([#1791](prs/mine.md), already approved — see `today.md`). His earlier self-closed #2545 (GTIN cleanup batch) is still parked in archive, unrevisited.

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
- [BDD-3037](support/open.md) (Medium) — open since 2026-08-10, oldest untouched item.
- [BDD-2497](support/open.md) (Low) — open since 2026-07-08.
- [BDD-2530](support/open.md) (Low) — open since 2026-07-09, updated activity 09-01 not yet reflected in a status change.
- [BDD-2969](support/open.md) (Low) — open since 2026-07-28.
- No High-priority tickets currently unassigned in Triage.

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — parked since 2026-08-10, technical options unsettled. No change this cycle.

## Dagster — recurring patterns to watch
- **pmeLegend FEED stream-abort on large XML — new, explained, unfixed.** 11 asset materializations failed 2026-09-03 reading a large XML file; self-explained in-thread (Kushel + Aji) as the known large-file problem the in-flight SAX parser ([PR #1744](prs/to-review.md)/product-service#2574) is meant to fix. Ties directly to [BDD-3150](support/open.md)'s PIPE/Megatron file-size mismatch, which specifically names PME Legend.
- **bestseller_FEED2 — two distinct failure modes now.** The "exceeded 3h limit" pattern (self-explained, tied to his [BDD-3164](sources/linear/my-issues.md) reprocessing) has gone quiet since 09-02. A *different* `publish_from_map` container-exit failure hit the same job 2026-09-02 with no thread — not yet explained, watch for a repeat.
- **Enrichment-service 504 timeouts — still unresolved.** Dushan claimed ownership 2026-08-31 16:16 CEST but sOliver hit the same `AxiosError 504` failure again ~15 minutes later. No further activity since — not confirmed fixed.
- **galvatron ECS health-check blips — continuing, self-resolving.** Established recurring pattern; no new occurrences logged this cycle.
- **"No valid SKUs" / corrupted-EAN pattern — quiet.** No new occurrences since calida on 08-31.
- **Credential/connector_type config issue — still quiet.** No new occurrences since 2026-08-27.
- **onaDkCompany FEED run — status stale, unconfirmed, aging out.** Still no Slack confirmation the run itself was fixed despite its linked ticket [BDD-3167](support/recently-closed.md) closing 09-01 — now over a week past its 3h limit with zero movement.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).

## Standing reminder
- [BDD-1721](sources/linear/my-issues.md) (Medium, Tech Debt) — "Fix images failing silently with no error message captured," Ready to Start, untouched since 2026-05-21.
