# Sync log

One entry per sync run. Prune entries older than ~30 days.

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
