# Support — open

FD-sourced/support-shaped tickets, by priority then age (oldest first within each tier). Sourced from the team BDD Triage view: https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. Full raw Triage list lives in [`sources/linear/triage.md`](../sources/linear/triage.md).

**One open, the first since the 09-28 sweep.** BDD-3339 (Pioneer data deletion) landed 09-30. BDD-3305 is still in Triage but it's an internal feature request Dushan owns, so it isn't listed here.

## High

_None._

## Medium

```yaml
id: BDD-3339
title: Delete pioneer (FD: 679013)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-30
url: https://linear.app/fashioncloud/issue/BDD-3339/delete-pioneer-fd-679013
```
Filed 09-30 15:20 UTC by Dion Piet: delete all data for Pioneer (brandId `642d745148199600117b88b0`), all EANs from PIPE and Mongo. Dion's brand-data-pipeline#1987 ("Delete pioneer") merged at 14:53 UTC, about half an hour before the ticket was filed. That probably covers the PIPE config side, but the ticket also asks for the Mongo data, which the PR doesn't show. Cross-check against the Notion offboarding table.

## Low

_None._
