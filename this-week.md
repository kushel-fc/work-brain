# This Week

Everything in [`today.md`](today.md), plus:

## PR backlog
- **[PR #2514](prs/to-review.md)** (to review, draft) — has Changes Requested from someone else.
- **[PR #1874](prs/to-review.md)** (to review, draft) — CodeRabbit approved.
- **[PR #1756](prs/to-review.md)** (to review, draft) — stale, ~2 months with no activity.
- His brand-data-pipeline review queue is active again after being empty for a few days — see [PR #1766](prs/to-review.md) in `today.md`.

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
_From the last Linear pull, 2026-08-28 — not refreshed this sync._
- [BDD-2497](support/open.md) (Low) — open since 2026-07-08.
- [BDD-2530](support/open.md) (Low) — open since 2026-07-09.
- [BDD-2539](support/open.md) (Medium) — open since 2026-07-13.
- [BDD-2969](support/open.md) (Low) — open since 2026-07-28.
- [BDD-3001](support/open.md) (Medium) — open since 2026-08-03, recurring symptom.
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, recurring symptom.
- [BDD-3037](support/open.md) (Medium) — open since 2026-08-10.
- [BDD-3091](support/open.md) (Low) — open since 2026-08-18.

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — parked since 2026-08-10, technical options unsettled. Still relevant given active work this week on BDD-2567/BDD-2258/PR #2520, all in the same area.

## Dagster — recurring patterns to watch
- **"No valid SKUs produced" pattern — now three brands.** Same relevantJsonObject/gtinField symptom hit calida (2026-08-31) after bruehl and citizen. Root cause traced for bruehl: EAN values corrupted into Excel scientific notation in the source file — a brand data-quality issue, not a pipeline bug. Same call made for calida (ignorable). Citizen's root cause is still unconfirmed.
- **Megatron → Backend image processing delay — recurring again.** Same alert (backend-service-UNPROCESSED-IMAGE-RECEIVED) that self-resolved 2026-08-23 fired again 2026-08-29→08-30 (~23h), also self-resolving with no human intervention either time.
- **Credential/connector_type config issue — gone quiet.** No new "Unsupported connector_type 'undefined'" occurrences since 2026-08-27 (had hit gabba, endurance, guidoMariaKretschmer, ecco, verweijFashion) — possibly fixed, unconfirmed.
- **Two new one-off failures worth a look:** verweijFashion_FEED exceeded its 3h run limit (2026-08-28, no follow-up) and muellerMeirer's image-sync cron failed with a Lambda `Cannot find module 'index'` error (2026-08-28, no follow-up) — the latter looks like a packaging/deploy issue rather than brand data.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).

## Standing reminder
- [BDD-1721](sources/linear/my-issues.md) (Medium, Tech Debt) — "Fix images failing silently with no error message captured," Ready to Start, untouched for over 3 months (per last Linear pull, 2026-08-28).
