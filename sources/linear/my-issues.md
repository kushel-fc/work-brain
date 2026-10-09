# Linear — my issues

Assigned to Kushel, live (non-completed) statuses. Populated on sync — completed/canceled work stays in Linear's own history rather than being repeated here; see `git log` for what rolled off.

**10-09 sync:** 4 to 3. BDD-3214 (5.1 PCS aggregated audit entry) went Done 10-08 12:31 UTC, the minute his product-service#2870 merged. That PR was only 1/3, so Linear likely closed it off the PR link, not because the slice is finished. See [`archive/linear/closed-internal.md`](../../archive/linear/closed-internal.md). BDD-3213, BDD-2406 and BDD-2079 unchanged.

---

```yaml
id: BDD-3213
title: "Slice 5 — Downloads are accountable and countable"
priority: No priority
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-01
url: https://linear.app/fashioncloud/issue/BDD-3213/slice-5-downloads-are-accountable-and-countable
```
Assigned 10-01. Video Delivery project, Slice 5 milestone, created by Irem Bulut 09-03 and started 10-01 08:41 UTC. No update since. Scope: one audit entry per download (not per video) plus a separate per-SKU download-counts collection, and observability (bytes delivered, build duration, failure rate). The ticket text says it can't start until N3 (where PCS's Mongo lives) is decided. That gate is now cleared: N3 (BDD-3193) has been Done since 09-29, though its ticket doesn't say which store was chosen. The ticket also lists Slice 2 as a dependency. It also asks for a decision first on whether the audit records intent (token creation) or delivery (bytes actually left), since that decides whether the backend has to report back.

---

```yaml
id: BDD-2406
title: Retry DES calls with backoff on 502/503/504 in trigger-enrichment
priority: Medium
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-06
url: https://linear.app/fashioncloud/issue/BDD-2406/retry-des-calls-with-backoff-on-502503504-in-trigger-enrichment
```
No change since last sync. Internal tech-debt item, not started.

---

```yaml
id: BDD-2079
title: Enable Auth0 SSO for DES Bull Board at /queue-admin
priority: Low
status: On-Hold
assignee: Kushel Ramanayake
team: BDD
updated: 2026-07-20
url: https://linear.app/fashioncloud/issue/BDD-2079/enable-auth0-sso-for-des-bull-board-at-queue-admin
```
No change since last sync. Long on-hold.
