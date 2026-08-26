---
name: sync-work-brain
description: Daily sync that pulls current state from Linear (my issues, Triage, watched issues), GitHub (open PRs across product-service and brand-data-pipeline), and Slack (#brand-data-dev-alerts) into this repo, regenerates today.md/this-week.md, commits, and pushes. Use when the user says "sync work brain", "run the daily sync", or on the scheduled daily trigger.
---

# Sync work-brain

Goal: bring every file in this repo to current truth against Linear/GitHub/Slack, surface what changed since the last sync, and leave `today.md`/`this-week.md` as an accurate priority view — with a git commit as the record.

Follow `CLAUDE.md` for structure, frontmatter, and the state-not-history principle. This skill is the procedure; `CLAUDE.md` is the contract.

## Phase 0 — Orient
1. `git pull` to make sure the local clone is current.
2. Read `_meta/sync-log.md`'s last entry and `_meta/index.md` to know when the last sync ran and what it flagged.
3. Read the current `sources/*`, `support/*`, `prs/*` files — these are the "before" state for the diff in Phase 2.

## Phase 1 — Pull fresh state
- **Linear — my issues**: `list_issues` for assignee=me, all statuses, recent-first.
- **Linear — Triage / support**: the canonical source is the team BDD Triage view — https://linear.app/fashioncloud/team/BDD/triage — pulled via `list_issues` with team=BDD, state=Triage. This single pull feeds both `sources/linear/triage.md` (the full raw list) and `support/open.md` (the FD-ticket-relevant subset, prioritized) — see Phase 3.
- **Linear — watched**: `get_issue` for each file under `sources/linear/watched/`.
- **GitHub**: `list_pull_requests` (state=open) for both repos. For any PR authored by kushel-fc or where he's a requested reviewer, `pull_request_read` (get + get_reviews) for review/mergeable-state detail.
- **Slack**: `slack_read_channel` on `#brand-data-dev-alerts` (channel C07A06X22TD) since the last sync's timestamp (from `_meta/index.md`). Read threads for anything that isn't self-explanatory.

## Phase 2 — Diff against committed state
For each source file, compare fresh data against what's currently on disk. This is where the sync-worthy findings come from — the same kind of thing that used to go in the Notion "Since last sync" section:
- A PR's `mergeable_state` or `review_state` changed.
- A ticket's status, assignee, or priority changed.
- New tickets/PRs/alerts that weren't there before.
- Items that disappeared (merged, closed, resolved) — these move to `archive/`.
- A deadline in a ticket's title/description that has now passed.

Write these findings down (mentally or as your commit-message draft) — they drive both the `today.md`/`this-week.md` regeneration and the notification decision in Phase 4.

## Phase 3 — Write
1. Overwrite `sources/linear/my-issues.md`, `sources/linear/triage.md`, each `sources/linear/watched/*.md`, `sources/github/*/open-prs.md`, with current state (frontmatter + short prose per entry, per `CLAUDE.md`).
2. Update `dagster-alerts/log.md`: append new alerts, flip status on ones that resolved or recurred, prune entries >30 days old to keep the file short.
3. Update `support/open.md` from the same team-BDD-Triage pull as `sources/linear/triage.md` — filter to FD-referenced tickets (or anything otherwise support-shaped: a customer/brand request rather than an internal task), sorted by priority then age. Update `support/recently-closed.md` from Triage-view items that dropped out because they went Done/Deployed (cap at ~25, move older into `archive/support/`).
4. Update `prs/mine.md` and `prs/to-review.md` from the GitHub data — these are curated/prioritized views, not raw dumps.
5. Touch `shaping/*.md` only if something in scope changed.
6. Move anything closed/merged/resolved into the matching `archive/` subfolder.
7. Regenerate `today.md` and `this-week.md` per the prioritization rules in `CLAUDE.md`. Link to detail files rather than duplicating their content.
8. Append one entry to `_meta/sync-log.md`:
   ```markdown
   ## 2026-08-27
   - <headline finding 1>
   - <headline finding 2>
   - Notified: yes/no — <why>
   ```
9. Update `_meta/index.md` (last sync timestamp, counts per section).

## Phase 4 — Notify (rarely)
Apply the notification bar from `CLAUDE.md`. Most days this should be silent — the commit is the record, and the user reads `today.md` on their own schedule. Only interrupt for a passed deadline, a flip to Changes-Requested/conflict on his own PR, a new Urgent unassigned ticket, or a recurring (not self-resolving) Dagster alert.

## Phase 5 — Commit and push
```
git add today.md this-week.md sources/... support/... prs/... dagster-alerts/log.md archive/... _meta/index.md _meta/sync-log.md
git commit -m "sync: YYYY-MM-DD — <one-line headline>"
git push
```
Never `git add -A`/`.`. If nothing meaningfully changed, still commit the sync-log entry and index timestamp (a "quiet day" is worth recording) but skip inventing a headline.

## Principles
- **Accuracy over momentum** — a green PR isn't merged; a scheduled deploy isn't shipped. Write the weaker, true claim if the source is ambiguous.
- **Proportionate** — don't inflate a routine ticket into a crisis or bury a real one in noise.
- **Don't duplicate** — if Phase 2 found nothing changed for a section, leave the file as-is rather than rewriting it byte-for-byte (keeps diffs meaningful).
