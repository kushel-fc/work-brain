# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress, medium priority)
- **[BDD-3117](sources/linear/my-issues.md)** — "FW: PME stockbase" — was sitting unassigned in Triage since 08-24, now his and in progress.
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped — still not started.
- **[BDD-2539](sources/linear/my-issues.md)** — Bilder-API render_requests_exceeded question, in progress (was unassigned Triage since July 8).
- **[BDD-3001](sources/linear/my-issues.md)** — Corrupted images, GUESS, in progress (recurring symptom, prior ticket FD 584227).

## PR backlog
- **[PR #1808](prs/to-review.md)** (to review, brand-data-pipeline) — routine Production Release PR, individually names him among 3 others.
- **[PR #2607](prs/to-review.md)** (to review, product-service) — O'Neill migration, unchanged since 09-01.
- **[PR #2514](prs/to-review.md)** (to review, draft) — has Changes Requested from someone else.
- **[PR #1874](prs/to-review.md)** (to review, draft) — CodeRabbit approved.
- **[PR #1756](prs/to-review.md)** (to review, draft) — stale, over 2 months with no activity.
- He has **one open PR of his own** ([#2623](prs/mine.md), new — see `today.md`). His earlier self-closed #2545 (GTIN cleanup batch) is still parked in archive, unrevisited.

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
- [BDD-3037](support/open.md) (Medium) — open since 2026-08-10, oldest untouched item.
- [BDD-2497](support/open.md) (Low) — open since 2026-07-08.
- [BDD-2530](support/open.md) (Low) — open since 2026-07-09, no status change despite an activity timestamp bump on 09-01.
- [BDD-2969](support/open.md) (Low) — open since 2026-07-28.
- No High-priority tickets currently unassigned in Triage.

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — parked since 2026-08-10, technical options unsettled. No change this cycle.

## Dagster — recurring patterns to watch
- **lugina/FEED — new brand, unexplained.** 11 asset materializations failed 2026-09-03 evening, no thread. First occurrence of this brand in the log.
- **ara — new OOM.** `ara__PRICAT__process_images` hit an OOM (exit 137) 2026-09-03, no thread. Distinct from the ara credential-id fix that merged the same day (brand-data-pipeline#1795).
- **pmeLegend/bestseller large-file & merge-step issues — quiet since 09-03.** No repeat of the pmeLegend stream-abort or the bestseller `publish_from_map` container-exit failure. The SAX-parser fix ([PR #1744](prs/to-review.md)/product-service#2574) cleared its merge conflict and got an approval this cycle — worth pushing towards merge given the direct tie to [BDD-3150](support/open.md).
- **galvatron ECS health-check blips — continuing, self-resolving.** One more ~4-minute blip this cycle, same established pattern.
- **Enrichment-service 504 timeouts — no new activity.** Last seen 2026-08-31, still not confirmed fixed, but quiet this cycle.
- **"No valid SKUs" / corrupted-EAN pattern — quiet.** No new occurrences since calida on 08-31.
- **Credential/connector_type config issue — still quiet.** No new occurrences since 2026-08-27.
- **onaDkCompany FEED run — status stale, unconfirmed, aging out.** Still no Slack confirmation the run itself was fixed despite its linked ticket [BDD-3167](support/recently-closed.md) closing 09-01 — now over a week past its 3h limit with zero movement.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).

## Standing reminder
- [BDD-1721](sources/linear/my-issues.md) (Medium, Tech Debt) — "Fix images failing silently with no error message captured," Ready to Start, untouched since 2026-05-21.
