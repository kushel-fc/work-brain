# Linear — my issues

Assigned to Kushel, live (non-completed) statuses. Populated on sync — completed/canceled work stays in Linear's own history rather than being repeated here; see `git log` for what rolled off.

**09-30 sync:** No change, still 5. Nothing assigned to him was updated in Linear since 09-28. BDD-3223 and BDD-3206 stay In Review, waiting on backend#7043, where irembbt's 09-24 Changes Requested still stands. BDD-2258 (High) has now been Ready To Start for a month.

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
In Review since 09-22. Parent of BDD-3206 and BDD-3205, the Slice 3.2 milestone issue itself. Video Delivery project. All four product-service PRs have merged (#2753, #2754, #2767, and #2806 on 09-28), and child BDD-3205 is Done. What's left is BDD-3206 on the backend side.

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
In Review since 09-22. Child of BDD-3223. Both dependencies (BDD-3205, BDD-3191) are now Done. The code is [backend#7043](https://github.com/fashioncloud/backend/pull/7043), which is outside the two repos this brain tracks. It's mergeable, but irembbt requested changes 09-24 and hasn't re-reviewed since. His last push was 09-27 19:10 UTC. A related fix, backend#7048 (sort images before resolving filenames), is approved by dwiajik and mergeable.

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
Unblocked since BDD-2567 shipped, still not started. Last updated 08-18, about six weeks ago.
