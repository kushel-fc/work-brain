# Linear — my issues

Assigned to Kushel, live (non-completed) statuses. Populated on sync — completed/canceled work stays in Linear's own history rather than being repeated here; see `git log` for what rolled off.

**10-19 sync:** 4 live, unchanged. BDD-3223 (Done since 10-05) got a touch 10-19 07:34 UTC when his new product-service#2981 linked to it, and stays Done. BDD-3213, BDD-3216, BDD-2406 and BDD-2079 unchanged.

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
Assigned 10-01. Video Delivery project, Slice 5 milestone, created by Irem Bulut 09-03 and started 10-01 08:41 UTC. No update since. Scope: one audit entry per download (not per video) plus a separate per-SKU download-counts collection, and observability (bytes delivered, build duration, failure rate). The ticket text says it can't start until N3 (where PCS's Mongo lives) is decided. That gate is now cleared: N3 (BDD-3193) has been Done since 09-29, though its ticket doesn't say which store was chosen. The ticket also lists Slice 2 as a dependency. It also asks for a decision first on whether the audit records intent (token creation) or delivery (bytes actually left), since that decides whether the backend has to report back. The per-request audit entry is in production (#2917). Per-SKU counts (BDD-3215) have all three PRs in production since release #2973 (10-16). Delivery measurement (BDD-3216) hasn't started, so the ticket staying In Progress fits.

---

```yaml
id: BDD-3216
title: "5.3 Backend — Delivery measurement at redemption"
priority: No priority
status: Backlog
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-15
url: https://linear.app/fashioncloud/issue/BDD-3216/53-backend-delivery-measurement-at-redemption
```
Assigned 10-15 15:19 UTC, no change since. Video Delivery, Slice 5 milestone, child of BDD-3213, created 09-03. Backend-side metrics at archive redemption: bytes actually written, build duration (first byte to stream close), client disconnects recorded as such, and separate counters for resolution failures (token creation) and build failures (redemption). The ticket says to settle the intent-vs-delivery decision first, since a report-back to the audit entry turns this from a metrics change into a cross-service write path.

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
