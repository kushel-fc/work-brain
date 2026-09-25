# Linear — my issues

Assigned to Kushel, live (non-completed) statuses. Populated on sync — completed/canceled work stays in Linear's own history rather than being repeated here; see `git log` for what rolled off.

**09-25 sync:** No changes: still 7 items, same statuses. The three Slice 3.2 tickets are still In Review. Their open PR (product-service#2767, 3/4) got 7 human review threads on 09-24 that he hasn't answered yet.

---

```yaml
id: BDD-3223
title: "Slice 3.2 — Full CSV generation on PCS when video and CSV are selected"
priority: No priority
status: In Review
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-23
url: https://linear.app/fashioncloud/issue/BDD-3223/slice-32-full-csv-generation-on-pcs-when-video-and-csv-are-selected
```
Advanced In Progress -> In Review 09-22 21:56 UTC. Parent of BDD-3206 and BDD-3205 - the Slice 3.2 milestone issue itself. Video Delivery project. Code is in the 4-part product-service stack: #2753 and #2754 merged, #2767 (3/4) open since 09-23, part 4 not opened yet.

---

```yaml
id: BDD-3205
title: "3.2 PCS — CSV generation module"
priority: No priority
status: In Review
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-22
url: https://linear.app/fashioncloud/issue/BDD-3205/32-pcs-csv-generation-module
```
Advanced In Progress -> In Review 09-22 08:57 UTC. `@repo/csv-generation` package (product-service#2754, 2/4) merged 09-23 15:46 UTC. The PCS CSV generation module itself is #2767 (3/4), open and awaiting human review. Child of BDD-3223.

---

```yaml
id: BDD-3191
title: "N1 — Document today's CSV generation logic"
priority: No priority
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-16
url: https://linear.app/fashioncloud/issue/BDD-3191/n1-document-todays-csv-generation-logic
```
Still In Progress, unchanged since 09-16 - now the only Slice 3.2 ticket not in review. Video Delivery project — the documentation prerequisite ("N1") referenced as a dependency by BDD-3206.

---

```yaml
id: BDD-3206
title: "3.2 Backend — Route the full request to PCS and append its CSV"
priority: No priority
status: In Review
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-22
url: https://linear.app/fashioncloud/issue/BDD-3206/32-backend-route-the-full-request-to-pcs-and-append-its-csv
```
Advanced In Progress -> In Review 09-22 21:56 UTC, a day after first moving to In Progress. Child of BDD-3223. Depends on BDD-3205 and BDD-3191.

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

---

```yaml
id: BDD-2258
title: Sample XML/CSV with video links + test manufacturer on SFTP
priority: High
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-08-18
url: https://linear.app/fashioncloud/issue/BDD-2258/sample-xmlcsv-with-video-links-test-manufacturer-on-sftp
```
Unblocked since BDD-2567 shipped, still not started. Last updated 08-18, over five weeks ago.
