# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **[BDD-3164](sources/linear/my-issues.md)** — Bestseller B2B pack images, In Progress. OOM saga behind it now quiet 48h+.
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped 08-31 — still not started, over three weeks now.
- **[BDD-3117](sources/linear/my-issues.md)** — "FW: PME stockbase", In Progress. No change.
- **[BDD-2539](sources/linear/my-issues.md)** — Bilder-API render_requests_exceeded, In Progress. No change.
- **[BDD-3189](sources/linear/my-issues.md)** — sketch tag info needed, In Progress. No change.
- **[BDD-3237](sources/linear/my-issues.md)** — Superdry deleting one image, In Progress (picked up individually from Triage this cycle).
- **[BDD-3236](sources/linear/my-issues.md)** — Cancels catwalk, Ready To Start (picked up individually from Triage this cycle).
- **[BDD-3229](sources/linear/my-issues.md)** — Cancellations SS27, Ready To Start (picked up individually from Triage this cycle).
- **[BDD-3091](sources/linear/my-issues.md)** — Hugo Boss MM request, In Review. No change.

## The 09-04 bulk-assignment batch (down to 9, four more shipped this cycle)
BDD-3152, BDD-3157, BDD-3163, and now BDD-3168 have all shipped; BDD-3091 (above) is In Review. Remaining, all Ready To Start and FD-referenced except BDD-2518 — full detail in [`sources/linear/my-issues.md`](sources/linear/my-issues.md):
- Medium: [BDD-3037](sources/linear/my-issues.md) (Florez, oldest of the batch), [BDD-3129](sources/linear/my-issues.md), [BDD-3150](sources/linear/my-issues.md) (PIPE/Megatron size mismatch — see `today.md`), [BDD-3181](sources/linear/my-issues.md), [BDD-2518](sources/linear/my-issues.md) (tech debt, already his, status touched in the same pass).
- Low: [BDD-3110](sources/linear/my-issues.md), [BDD-3153](sources/linear/my-issues.md), [BDD-3180](sources/linear/my-issues.md).

## PR backlog
- **Zero open PRs of his own** — unchanged this cycle.
- **[PR #2514](prs/to-review.md)** (to review, product-service) — the only PR in his queue, draft, Changes Requested from someone else, stale 14 days.
- GitHub churn this cycle touched none of his: product-service #2647 closed unmerged (re-submitted as #2668), #2643 merged; brand-data-pipeline #1842 merged. None named him.

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
Backlog holds steady at 11 — four items left (three picked up by Kushel individually, one closed straight from Triage) and five new ones landed:
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, oldest unassigned item.
- [BDD-3109](support/open.md) (Low) — open since 2026-08-20.
- [BDD-3043](support/open.md) (Medium) — open since 2026-08-20, oldest Medium.
- [BDD-3228](support/open.md), [BDD-3238](support/open.md) — Medium, 09-07/09-09.
- [BDD-3241](support/open.md) (Low) — already carries an assignee (oleh.polishchuk) despite Triage status.
- [BDD-3247](support/open.md), [BDD-3246](support/open.md), [BDD-3245](support/open.md), [BDD-3244](support/open.md) — Medium, all new 09-10/09-11.
- [BDD-3243](support/open.md) (Low) — new 09-10.
- No High-priority tickets currently unassigned in Triage.

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — parked since 2026-08-10, technical options unsettled. No change this cycle.

## Dagster — recurring patterns to watch
- **lugina — earmark triggered, looks resolved.** Last failure 09-10 14:18 UTC, ~19h quiet. `profuomo` (same signature) also quiet since one more recurrence 09-10. See `today.md` — worth one more confirming look before closing out.
- **process_enrichment_flow — recurred a fourth time, still unexplained.** See `today.md`.
- **PDS Kinesis throttling — recurred twice more (now 6 total recurrences), each still self-resolving.** Root cause (shard capacity) still not fully holding despite the shard-increase fix.
- **New OOM cluster forming: ammann (process_images, twice) and garcia (publish_from_process_images).** Echoes the now-quiet bestseller/cecil saga but different brands/steps — see `today.md`.
- **iosByMaica — recurred, now root-caused by Kushel** (missing `customAttributes` in merge rules' `rootLevelAttributes`). See `today.md`.
- **New first-occurrence brands this cycle**: morganDeToi (12 asset materializations), ona__royRobson_FEED2 and ona__falke_PRICAT (both exceeded 3h limit), kultivate_FEED (exceeded 3h limit twice same day).
- **New alert type: Datadog log-index quota** — product-service-logs-index hit its daily ingestion cap 09-10 evening, self-resolved on quota reset 09-11 morning. Worth watching if it recurs.
- **bestseller/cecil publishing-step OOMs — still quiet, looking resolved.** No recurrence since 09-08.
- **trigger_enrichment_from_map, riani, noExcess, pixyle, ara/bueltel/sanetta/numph bursts — all quiet this window** (no further occurrences since last sync).
- **onaDkCompany FEED run — still unconfirmed, aging further.** No Slack confirmation the run itself was ever fixed despite its linked ticket ([BDD-3167](support/recently-closed.md)) closing weeks ago.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
