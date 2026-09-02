# Sync log

One entry per sync run. Prune entries older than ~30 days.

## 2026-09-02 (08:40 UTC)

All three sources reachable this run — Linear, GitHub, Slack.

- **BDD-3167 (Data completely missing - DKcompany, High) resolved** — closed 2026-09-01. It was speculatively tied to the onaDkCompany Dagster run stuck since 2026-08-26, but no Slack message this cycle confirmed that run itself got fixed; the run's own status in `dagster-alerts/log.md` is now flagged stale/unconfirmed rather than treated as resolved.
- **His own PR #1791** (brand-data-pipeline, "Fix fcKeys default fallbacks that mask real merge data") is new and already Approved by dwiajik and Chamindu36 — ready to merge, two other requested reviewers haven't weighed in but the bar is met.
- **Two new individual review requests** landed on him: product-service #2611 ("Added `create-variants` package" — sole named reviewer, after 17+ rounds of Chamindu36 comments ending in Changes Requested) and #2607 (O'Neill brand migration, team + individual, he'd already left a comment).
- **PR wave**: #2605 (product-service, StreamPublisher partition keys — he was a requested reviewer) merged 09-01 without his review. brand-data-pipeline #1783 (geisha FEED migration, not his) also merged 09-01. 8 other PRs opened across both repos this cycle (2613, 2612, 2608, 2604-companion review still open, 1794, 1789, 1785, 1784) — none individually his to review.
- **Backfill**: product-service #2594 (his own PR, LANGUAGE_CODES fix) and BDD-3154 (the Linear ticket it shipped) were merged/closed 08-31 but missed being archived/logged in the 09-01 sync — caught up this cycle.
- Linear: 3 new Triage tickets (BDD-3181 Medium, BDD-3180 Low, BDD-3168 Low), all FD-referenced, added to `support/open.md`. No High-priority items unassigned. BDD-2530's updated timestamp jumped from 07-09 to 09-01 with no visible status change yet — flagged for a look.
- Slack: quiet-ish window since 2026-08-31T14:12:56Z. The enrichment-service 504 timeout pattern continues — Dushan claimed ownership in-channel but sOliver hit the same error again ~15 min later, so it isn't actually fixed. Two more galvatron ECS health-check blips, both self-resolved within minutes (established pattern). New: `bestseller_FEED2` fired "exceeded 3h limit" twice (09-01, 09-02) — both explained in-thread by Kushel himself as his own BDD-3164 reprocessing work, not bugs.
- Notified: no — nothing crossed the notification bar (no deadline passed with zero movement; his own PR #1791 is Approved, not a conflict/Changes-Requested flip; no new Urgent unassigned ticket, the 3 new Triage items are Medium/Low; no Dagster alert recurred after self-resolving — the enrichment 504 and galvatron patterns were already active/recurring before this cycle, not fresh flips).

## 2026-08-31 (08:41 UTC)

- **Linear unavailable this run**: the Linear MCP server requires interactive OAuth, which isn't available in this non-interactive scheduled run. All Linear-derived files (`sources/linear/*`, `support/*`) are unchanged, carried forward from the 2026-08-28 pull, and flagged with a staleness note. `today.md`/`this-week.md` still surfaced BDD-3103's deadline (now 6 days passed) since the deadline date itself doesn't need a fresh pull to compute.
- His own PR #2520 (BDD-2567) made real progress: he pushed a fix on 08-28 addressing julsjacinto's review, and julsjacinto + dwiajik have since approved. Aggregate state still reads `changes-requested` only because Chamindu36 (requested changes 08-24) hasn't re-reviewed — reframed in `today.md` from "stalled" to "needs a nudge."
- PR wave: #2576 (product-service, Enable Sanetta) merged 08-28 without needing his review. Three brand-data-pipeline PRs also merged 08-28: #1749 (calida ai tags), #1747 (cron schedules), #1645 (clean up disabled Dagster automations) — none were his to review. All four archived.
- New: he's now an individually-requested reviewer on brand-data-pipeline #1766 ("Staging Release - 2026-08-31") — his review queue there is active again after a few quiet days.
- PR #2569 (he's a requested reviewer, not his own) flipped from mergeable to a merge conflict since last sync — still no reviews from any of the 4 requested reviewers.
- 7 new open PRs surfaced on product-service (#2600, #2599, #2598, #2595, #2589, #2587, #2586) and 1 on brand-data-pipeline (#1763) — none involve Kushel as reviewer.
- BDD-3103's Aug 25 deadline is now 6 days passed (per last Linear pull — status unconfirmed this cycle).
- Slack: 6 new items since 08-28 07:48 UTC. Notable: the "no valid SKUs" EAN-corruption pattern hit a third brand (calida, self-resolved/ignorable — same root cause as bruehl/citizen). The Megatron→Backend image-processing-delay alert recurred (self-resolved again after ~23h, no human intervention either time). Two new one-off failures with no follow-up: verweijFashion_FEED exceeded its 3h limit, and muellerMeirer's image-sync cron failed with a Lambda "Cannot find module 'index'" error (looks like a packaging/deploy issue). The connector_type credential error that spread across 5 brands has gone quiet — no new occurrences since 08-27.
- Dagster onaDkCompany FEED from 2026-08-26 is still shown active, now ~5 days past its 3h limit with zero Slack follow-up across five sync cycles.
- Notified: no — nothing crossed the notification bar (BDD-3103's deadline already flagged as passed in prior syncs, and unconfirmed this cycle rather than newly reached; no flip to conflict/Changes-Requested on his own open work — #2520 is improving, not worsening, and #2569's conflict flip isn't his own PR; no new Urgent unassigned ticket confirmable, Linear unavailable; the Megatron→Backend alert's recurrence continues a pattern already tagged `recurring` from prior syncs rather than a fresh flip from self-resolved).

## 2026-08-28 (08:05 UTC)

- Big PR wave from 2026-08-27 landed: 6 brand-migration PRs on brand-data-pipeline (incl. #1734/#1736 "pointtec brand migration") and 9 on product-service all closed. His to-review queue on brand-data-pipeline is now empty — #1734, which was waiting on him, got merged by abirprantofc without his review.
- His own PR #2545 (remove 13 offboarded brands from brands_on_megatron) — he closed it himself (not merged) after an open question came up about how to handle certain GTINs; will re-visit as a batch. His other own PR, #2520, is unchanged: still Changes Requested from Chamindu36, now 3+ days.
- New PRs adding him as reviewer: product-service #2576 (Enable Sanetta on PIPE, already Approved) and #2569 (publishing job for size/color/style events, no reviews yet).
- Linear: BDD-3136, BDD-2945, BDD-3115, BDD-3111 all moved Triage → Done since last sync (moved to `support/recently-closed.md`). New Triage item BDD-3150 (Medium, PIPE/Megatron 500MB parser mismatch for price files). New assignment for Kushel: BDD-3036 (Noah Group sketch-flag bug, Medium, To Do).
- BDD-3103's Aug 25 deadline is now 3 days passed, still no movement.
- Slack: 16 new Dagster alerts since last sync (2026-08-27 08:09 UTC through this morning). Notable: a "connector_type undefined" credential-config error now spans 5 brands (gabba, endurance x2, guidoMariaKretschmer, ecco, verweijFashion) over 24h — looks systemic, not a one-off; guess/FEED and dBrand/FEED each failed twice more; alberto hit a second OOM (team decided to bump its resource size); bruehl's "no valid SKUs" failure was root-caused to EAN values corrupted into Excel scientific notation in the source file (same symptom hit citizen, unconfirmed root cause there).
- Dagster onaDkCompany FEED from 2026-08-26 is still shown active, now ~2 days past its 3h limit with zero Slack follow-up across three sync cycles.
- Notified: no — nothing crossed the notification bar (BDD-3103's deadline was already flagged as passed in prior syncs, not newly reached; no flip to conflict/Changes-Requested on his own open work — #2520 unchanged and #2545 was a self-closure, not an externally-forced one; no new Urgent unassigned ticket; the recurring Dagster alerts this cycle were already active/unresolved before, not alerts that had self-resolved and then came back).

## 2026-09-01

Linear MCP reachable again this run (first time since 2026-08-28) — full Linear refresh done, replacing the carried-forward stale data from the last three syncs.

- Linear: BDD-2567 (his own video FTP/SFTP work) moved In Review → Done, matching PR #2520 merging. BDD-3103 (the fcKey deadline ticket, overdue since Aug 25 and flagged every sync since) moved Triage(unassigned) → assigned to Kushel → Deployed — resolved. BDD-3112 (Cancellations SS27) similarly went Triage → assigned → Done. Both moved to `support/recently-closed.md`.
- Linear: three Triage/unassigned tickets got picked up and assigned to Kushel mid-flight — BDD-2957 (High, dual-archive malformed file, now In Review), BDD-2539 (Medium, Bilder-API render limit, now In Progress), BDD-3001 (Medium, corrupted GUESS images, now In Progress). Moved from `support/open.md` to `sources/linear/my-issues.md`.
- Linear: two new High-priority tickets appeared already assigned to Kushel and In Progress — BDD-3167 (DKcompany data completely missing, FD 675069) and BDD-3164 (Bestseller B2B pack images, FD 674996). BDD-3167 is plausibly connected to the onaDkCompany Dagster run that's been stuck since 2026-08-26 (still stuck, now ~6 days past limit, no Slack follow-up) — flagged in `today.md` but not confirmed.
- Linear: 5 new Triage tickets (BDD-3157, BDD-3163, BDD-3155, BDD-3153, BDD-3152), net Triage count unchanged at 22 since 5 moved out. `support/open.md` now has zero High-priority items for the first time in recent syncs. BDD-2669 and BDD-2664 (both brand-migration, On-Hold) moved to Canceled.
- GitHub: his own PR #2520 finally merged (Chamindu36 cleared his long-standing Changes Requested). He also opened and merged #2594 same-day. He now has zero open PRs. #1766 (brand-data-pipeline staging release, was in his to-review queue) merged by himself; #2569 (product-service, in his to-review queue, had flipped to conflict) closed without ever being reviewed by anyone requested.
- GitHub: two new review requests landed on him — #2605 (product-service, already Changes Requested from someone else) and #1744 (brand-data-pipeline, flipped out of draft and newly names him individually). ~13 other PRs merged/closed across both repos this cycle that weren't his to review (routine churn, see archive files).
- Slack: a platform-wide incident hit ~36 brand pipelines between 12:31–13:06 UTC on 2026-08-31 — ECS tasks failed to pull the datadog-agent sidecar image (ECR permissions regression). Chamindu owned the fix; no explicit all-clear in-channel, but a different failure signature (enrichment-service 504 timeouts, 5 brands) appeared afterward and was still unresolved as of the last message in the window (14:31 UTC, channel then quiet through now). Full brand list and detail in `dagster-alerts/log.md`.
- Slack: the recurring "no valid SKUs / corrupted EAN" pattern hit calida again (self-resolved, same root cause as bruehl/citizen). connector_type credential errors and OOM alerts stayed quiet this window.
- Notified: no — nothing crossed the notification bar. No deadline passed with zero movement (BDD-3103's had passed but is now resolved, which is movement, not stagnation). No flip to conflict/Changes-Requested on his own work (he has no open PRs; #2605's Changes-Requested was already there before he was added, not a flip on his PR). No new Urgent-priority ticket landed unassigned (the 5 new Triage items are Medium/Low). The ECR incident was a new occurrence, not a Dagster alert recurring after having self-resolved — doesn't meet the "recurs" bar as written, even though it's a large-blast-radius event worth a human glance at `today.md`.

## 2026-08-27 (08:36 UTC)

- New: Kushel added as a requested reviewer on brand-data-pipeline PR #1734 ("pointtec brand migration") — already Approved by dwiajik, he's the outstanding reviewer. Added to `today.md`.
- New PRs (not his): product-service #2562, #2561; brand-data-pipeline #1736 (companion to #1734, same title/author).
- brand-data-pipeline mergeable-state reads are flapping between mergeable/conflicting/unknown across repeated checks within the same minute (GitHub still computing) — wrote `unknown` for all as the honest current read rather than trusting any single snapshot; not treated as a real conflict, including the #1645/#1120/#1263/#1058 entries flagged conflicting yesterday.
- product-service #2548 mergeable_state resolved from unknown to mergeable.
- Linear (my-issues, Triage/support) unchanged since this morning's sync.
- Slack: zero new messages in #brand-data-dev-alerts since the last sync (08:09:45Z) — quiet since.
- BDD-3103's Aug 25 deadline still 2 days passed, no movement (unchanged from this morning).
- Dagster onaDkCompany FEED still shown active, now ~19h past its 3h limit — no new Slack follow-up.
- Notified: no — nothing crossed the notification bar (no deadline newly reached, no flip to conflict/Changes-Requested on his own work, no new Urgent unassigned ticket, no Dagster alert newly recurring).

## 2026-08-27

- His own PR #2545 flipped to Approved (was awaiting-first-review) — ready to merge.
- New: Kushel added as a requested reviewer on PR #2514 (draft, already Changes Requested from others).
- PR #2118 and #1744 (product-service) closed without merging — moved to `archive/prs/product-service.md`.
- Several brand-data-pipeline PRs resolved from "unknown" to an actual mergeable_state; #1645 and #1120 (both previously Approved) now show a merge conflict — none are his own.
- Linear (my-issues, Triage/support) unchanged since last sync — same tickets, same statuses.
- BDD-3103's Aug 25 deadline is now 2 days passed, still no movement.
- Dagster: 4 new alerts this morning — gabba and endurance both failing on the same missing-credential (`connector_type`) config issue, actively being triaged by Kushel + Abir; sanetta fired twice back-to-back; alberto hit an OOM. onaDkCompany FEED from yesterday is still showing active 15+ hours past its run limit with no visible follow-up.
- Notified: no — nothing crossed the notification bar (no deadline-with-zero-movement newly reached, no flip to conflict/Changes-Requested on his own work, no new Urgent unassigned ticket, no Dagster alert recurring after self-resolving).

## 2026-08-26

First real sync (repo scaffold was placeholders until now).

- Populated `sources/linear/my-issues.md` (7 live-status issues), `sources/linear/triage.md` (25 raw), `support/open.md` (23 FD-shaped, 2 High), `support/recently-closed.md` (11).
- Populated GitHub PR sources for both repos (18 + 10 open PRs); curated `prs/mine.md` (2) and `prs/to-review.md` (3).
- Populated `dagster-alerts/log.md` from #brand-data-dev-alerts (23 entries, 12 active/unresolved, 7 recurring).
- His own PR #2520 (BDD-2567) has Changes Requested from Chamindu36 — flagged in `today.md`.
- BDD-3103's Aug 25 response deadline has passed with no movement — flagged in `today.md`.
- Dagster: onaDkCompany FEED run still active past its 3h limit as of sync time — flagged in `today.md`.
- Notified: no — first sync, no prior state to diff against for a "what changed" alert; today.md/this-week.md themselves carry the initial priority view.
