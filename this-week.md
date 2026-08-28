# This Week

Everything in [`today.md`](today.md), plus:

## PR backlog
- **[PR #2514](prs/to-review.md)** (to review, draft) — has Changes Requested from someone else.
- **[PR #1874](prs/to-review.md)** (to review, draft) — CodeRabbit approved.
- **[PR #1756](prs/to-review.md)** (to review, draft) — stale, ~2 months with no activity.
- His brand-data-pipeline review queue is now empty — a wave of 6 brand-migration PRs (including #1734, which had been waiting on him) merged on 2026-08-27 without needing further action from him. See [`archive/prs/brand-data-pipeline.md`](archive/prs/brand-data-pipeline.md).
- His own PR #2545 ("Remove 13 offboarded brands from brands_on_megatron") — he closed it himself 2026-08-27 to re-visit as a batch later, after an open question came up about how to handle certain GTINs.

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
- [Video download delivery](shaping/video-download-delivery.md) — parked since 2026-08-10, technical options unsettled. Still relevant given active work this week on BDD-2567/BDD-2258/PR #2520, all in the same area.

## Dagster — recurring patterns to watch
- **Credential/connector_type config issue — spreading, not resolving.** "Unsupported connector_type 'undefined'" has now hit gabba, endurance (twice), guidoMariaKretschmer, ecco, and verweijFashion (this morning) over the past 24h — looks like a systemic brand-onboarding credential gap rather than one bad brand. Kushel has flagged each occurrence to Alireza/Abir in-thread; no fix confirmed yet.
- **guess/FEED — OOM (exit 137) recurring.** Fired twice more yesterday evening (18:10 and 18:26 CEST) on the same `trigger_enrichment_from_map` step.
- **dBrand/FEED — recurring, no thread.** Fired twice yesterday afternoon (~8 min apart), no visible follow-up either time.
- **alberto/FEED — OOM (exit 137) recurring.** Second OOM on `publish_from_map`; Kushel and Aji agreed to increase the resource size.
- **"No valid SKUs produced" pattern — bruehl and citizen.** Same relevantJsonObject/gtinField symptom on two different brands within hours. Root cause traced for bruehl: all 3,795 rows have `EANCode` corrupted into Excel scientific notation in the source file — a data-quality issue upstream, not a pipeline bug. Citizen's root cause unconfirmed.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).

## Standing reminder
- [BDD-1721](sources/linear/my-issues.md) (Medium, Tech Debt) — "Fix images failing silently with no error message captured," Ready to Start, untouched for over 3 months.
