# This Week

Everything in [`today.md`](today.md), plus:

## PR backlog
- **[PR #2514](prs/to-review.md)** (to review, draft) — new: Kushel added as requested reviewer since last sync. Already has Changes Requested from someone else.
- **[PR #1874](prs/to-review.md)** (to review, draft) — CodeRabbit approved.
- **[PR #1756](prs/to-review.md)** (to review, draft) — stale, ~2 months with no activity.

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
- [BDD-2497](support/open.md) (Low) — open since 2026-07-08.
- [BDD-2530](support/open.md) (Low) — open since 2026-07-09.
- [BDD-2539](support/open.md) (Medium) — open since 2026-07-13.
- [BDD-2969](support/open.md) (Low) — open since 2026-07-28.
- [BDD-3001](support/open.md) (Medium) — open since 2026-08-03, recurring symptom.
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, recurring symptom.
- [BDD-3037](support/open.md) (Medium) — open since 2026-08-10.
- [BDD-3091](support/open.md) (Low) — open since 2026-08-18.

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — parked since 2026-08-10, technical options unsettled. Worth revisiting given active work this week on BDD-2567/BDD-2258/PR #2520, all in the same area.

## Dagster — recurring patterns to watch
- **gabba / endurance FEED** — new today: both failing on the same "unsupported connector_type" credential-config error (missing host/filepath/filename_pattern), looks like an in-progress brand onboarding. Kushel + Abir triaging in-thread; Abir said he'd fix and rerun for gabba, endurance still open.
- **sanetta/FEED** — fired twice ~1.5 min apart this morning (map/merge/publish_from_map), no thread yet.
- **zizzi/FEED** — asset materialization failures firing at least 6 times over 08-20 through 08-24, no confirmed resolution as of last check.
- **analytics asset (analytics_trigger_sensor)** — failed 08-20 and twice on 08-25, only "eyes" reactions, no fix confirmed.
- **product-service-logs-index** — hitting its daily log quota repeatedly (08-21, 08-22, 08-24, 08-25); self-recovers on daily reset but worth a capacity look if it keeps climbing.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).

## Standing reminder
- [BDD-1721](sources/linear/my-issues.md) (Medium, Tech Debt) — "Fix images failing silently with no error message captured," Ready to Start, untouched for ~3 months.
