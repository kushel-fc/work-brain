# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress, medium priority)
- **[BDD-2539](sources/linear/my-issues.md)** — Bilder-API render_requests_exceeded question, now his and in progress (was unassigned Triage since July 8).
- **[BDD-3001](sources/linear/my-issues.md)** — Corrupted images, GUESS, now his and in progress (recurring symptom, prior ticket FD 584227).
- **[BDD-3036](sources/linear/my-issues.md)** — Noah Group sketch-flag follow-up: `isPreliminary` cleared from feed_transform but not mergedSkus.

## PR backlog
- **[PR #2514](prs/to-review.md)** (to review, draft) — has Changes Requested from someone else.
- **[PR #1874](prs/to-review.md)** (to review, draft) — CodeRabbit approved.
- **[PR #1756](prs/to-review.md)** (to review, draft) — stale, over 2 months with no activity.
- He currently has **zero open PRs of his own** — both #2520 (merged) and #2594 (opened + merged same day) closed out this cycle. His earlier self-closed #2545 (GTIN cleanup batch) is still parked in archive, unrevisited.

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
- [BDD-3037](support/open.md) (Medium) — open since 2026-08-10, oldest untouched item.
- [BDD-2497](support/open.md) (Low) — open since 2026-07-08.
- [BDD-2530](support/open.md) (Low) — open since 2026-07-09.
- [BDD-2969](support/open.md) (Low) — open since 2026-07-28.
- No High-priority tickets currently unassigned in Triage — the one from last sync (BDD-2957) was picked up (see `today.md`).

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — parked since 2026-08-10, technical options unsettled. The plumbing it depends on (BDD-2567/PR #2520) shipped this cycle, making the delivery-options decision more actionable than before.

## Dagster — recurring patterns to watch
- **"No valid SKUs produced" pattern — continues.** calida hit the same relevantJsonObject/gtinField-corrupted-EAN symptom as bruehl, citizen, and calida previously — confirmed brand data-quality issue, ignorable each time it recurs.
- **ECR/datadog-agent sidecar incident (2026-08-31) — new, large blast radius (~36 brands), appears self-resolved.** See [`dagster-alerts/log.md`](dagster-alerts/log.md) for the full brand list and root cause (ECS permission regression on the datadog/agent:7 pull).
- **Enrichment-service 504 timeouts — new, unresolved as of last Slack activity.** 5 brands (fabienne, swarovski, ceceba, denham, sOliver) hit `trigger_enrichment_from_map` failures right after the ECR incident cleared — likely a retry-backlog side effect, not confirmed fixed.
- **Credential/connector_type config issue — still quiet.** No new "Unsupported connector_type 'undefined'" occurrences since 2026-08-27.
- **onaDkCompany FEED run — still stuck, now ~6 days past its 3h limit.** Newly correlated with [BDD-3167](sources/linear/my-issues.md) (High, "Data completely missing - DKcompany"), assigned to Kushel today — see `today.md`.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).

## Standing reminder
- [BDD-1721](sources/linear/my-issues.md) (Medium, Tech Debt) — "Fix images failing silently with no error message captured," Ready to Start, untouched for over 3 months.
