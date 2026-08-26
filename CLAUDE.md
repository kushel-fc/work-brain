# CLAUDE.md

This file governs how the sync routine (and any interactive session) reads and writes this repository.

## Purpose

This repo is Kushel's work brain — the single source of truth for what needs attention, synced daily from Linear, GitHub, and Slack. It replaces the old Notion "Work System" page. Nothing here is authored by hand during a sync; it's a faithful, structured mirror of those three systems plus a synthesized priority view on top.

## Sources (canonical query surfaces)

- **Linear — my issues**: assignee = me, all statuses.
- **Linear — Triage / support**: team BDD Triage view — https://linear.app/fashioncloud/team/BDD/triage. One pull feeds two files: `sources/linear/triage.md` (full raw list) and `support/open.md` (the FD-referenced/support-shaped subset, prioritized).
- **Linear — watched**: individually tracked long-running issues, one file per issue under `sources/linear/watched/`.
- **GitHub**: open PRs across `fashioncloud/product-service` and `fashioncloud/brand-data-pipeline`.
- **Slack**: `#brand-data-dev-alerts` (channel `C07A06X22TD`) for Dagster/ONA incidents.

## Structure

```
work-brain/
├── today.md                     # current priority list — always-current, not dated
├── this-week.md                 # current weekly priorities — always-current
├── sources/                     # raw, faithful current-state snapshots per source
│   ├── linear/
│   │   ├── my-issues.md         # assigned to Kushel, live status
│   │   ├── triage.md            # full raw Triage backlog (team BDD) — see Sources below
│   │   └── watched/             # one file per long-running issue tracked individually
│   ├── github/
│   │   ├── product-service/open-prs.md
│   │   └── brand-data-pipeline/open-prs.md
│   └── slack/
│       └── mentions.md          # anything outside dagster-alerts worth tracking
├── support/
│   ├── open.md                   # FD-sourced/support-shaped subset of the Triage view, by priority
│   └── recently-closed.md
├── prs/
│   ├── mine.md                   # PRs Kushel opened — review/CI/mergeable state
│   └── to-review.md              # PRs where Kushel is a requested reviewer
├── shaping/                       # investigation docs / things needing his attention
├── dagster-alerts/
│   └── log.md                    # deduped rolling log from Slack #brand-data-dev-alerts (C07A06X22TD)
├── archive/                       # closed/merged/done items land here, never deleted
└── _meta/
    ├── index.md                   # last sync time, counts, quick stats
    └── sync-log.md                # one entry per sync run: what changed, what was flagged
```

## Core principle: state, not history

Every file in `sources/`, `support/`, `prs/`, `today.md`, and `this-week.md` represents **current truth**, not a log of changes. When a PR's mergeable_state flips, or a ticket gets assigned, overwrite the fact — don't append "was X, now Y." Git history is the change trail; `git log -p <file>` or `git diff HEAD~1 HEAD -- <file>` shows exactly what moved between syncs. This keeps files short and always trustworthy at a glance.

The one exception is `_meta/sync-log.md` and `dagster-alerts/log.md`, which are intentionally append-only logs (a sync history and an alert history, respectively) — prune entries older than ~30 days there rather than letting them grow forever.

## Frontmatter standards

Every entry in a `sources/`, `support/`, or `prs/` file carries a small YAML-ish header so entries are scannable and diffable:

**Linear issue:**
```yaml
id: BDD-3103
title: Need response until August 25 – Overview of fcKey Standard Value Translations
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-19
url: https://linear.app/fashioncloud/issue/BDD-3103
```

**GitHub PR:**
```yaml
number: 2545
repo: product-service
title: Remove 13 offboarded/ex-customer brands from brands_on_megatron
author: kushel-fc
state: open
mergeable_state: unknown
review_state: awaiting-first-review   # | changes-requested | approved | merged
requested_reviewers: [abubakarwase, alirezaMoazenFashion]
updated: 2026-08-25
url: https://github.com/fashioncloud/product-service/pull/2545
```

**Dagster/Slack alert:**
```yaml
timestamp: 2026-08-24T09:12:00Z
channel: brand-data-dev-alerts
brand: ftcCashmere
summary: E11000 duplicate key on mapping-rules fcKeys.careInstruction
status: self-resolved   # active | self-resolved | ticketed | recurring
linked_issue: null
```

Use plain prose under the header for anything that doesn't fit a field — same as the old Notion page's per-item commentary.

## Sync workflow

Run by the `sync-work-brain` skill in `.claude/skills/sync-work-brain/SKILL.md`. Summary:

1. Pull fresh state from Linear (my issues, Triage, watched issues), GitHub (open PRs for both repos), Slack (#brand-data-dev-alerts + any DMs/mentions).
2. Diff against the current committed `sources/*` files — this diff is what identifies "what's new since yesterday" (deadline passed, PR flipped to conflict, new ticket, etc.) without needing a separate history mechanism.
3. Overwrite `sources/*`, `support/*`, `prs/*` with current state.
4. Update `shaping/*` only when something in scope actually changed (these are low-churn).
5. Update `dagster-alerts/log.md` — append new alerts, mark resolved ones, prune >30 days old.
6. Regenerate `today.md` and `this-week.md` from the rules below.
7. Append one entry to `_meta/sync-log.md` and refresh `_meta/index.md`.
8. Commit (explicit paths, never `-A`) and push.
9. Send a push notification only if something crosses a real threshold — see "Notification bar" below.

## Prioritization rules (today.md / this-week.md)

**today.md** includes:
- Anything with a deadline that is today or has passed.
- Anything blocking someone else's work (a requested review sitting on you, a PR others are waiting to merge behind).
- Anything solely actionable by Kushel and currently unblocked (no upstream dependency).
- Any Urgent/High priority Linear issue newly assigned to him.

**this-week.md** includes everything in `today.md` plus:
- The broader active PR/review backlog (his own PRs awaiting fixes, PRs he's requested on).
- Triage tickets aged past a week with no assignee, surfaced for visibility (not necessarily his to pick up).
- Anything in `shaping/` that's waiting on his input to unblock.
- Long-stale Urgent/High items (surfaced as a standing reminder, not re-explained each time).

Both files stay short — link to the relevant `sources/`/`support/`/`prs/` file for detail rather than duplicating it.

## Notification bar

Only push a notification (outside the normal daily sync summary) when:
- A deadline has passed with zero movement.
- A PR of his flips to a merge conflict or gets Changes Requested.
- A new Urgent-priority ticket lands unassigned.
- A Dagster alert recurs (status: recurring) rather than self-resolving.

Otherwise, let the commit speak for itself — no notification for routine churn (new Low-priority triage tickets, PRs progressing normally, etc.).

## Commit hygiene

- Stage explicitly by path: `git add today.md this-week.md sources/linear/triage.md ...` — never `git add -A` or `git add .`.
- One commit per sync run. Message format: `sync: <date> — <headline of what changed>`.
- Run `git status` before committing if anything is ambiguous.

## Archiving

- PRs: move to `archive/prs/<repo>.md` once merged or closed.
- Support tickets / Linear issues: move to `archive/linear/` or fold into `support/recently-closed.md` (capped at ~25 most recent, older entries move to `archive/support/`).
- Never delete — archive preserves the record; git history preserves the trail either way.
