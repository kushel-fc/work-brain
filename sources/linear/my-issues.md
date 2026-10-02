# Linear — my issues

Assigned to Kushel, live (non-completed) statuses. Populated on sync — completed/canceled work stays in Linear's own history rather than being repeated here; see `git log` for what rolled off.

**10-02 sync:** Still 6, and none of them changed in Linear this cycle. **Correction to last sync:** BDD-3213's "blocked on N3" was out of date. N3 itself ([BDD-3193](https://linear.app/fashioncloud/issue/BDD-3193/n3-decide-where-the-pcs-audit-collection-lives), "Decide where the PCS audit collection lives", assigned to him) was marked Done on 09-29 and touched again 10-01 13:48 UTC. The ticket body doesn't record which option was picked. BDD-3223 and BDD-3206 stay In Review behind backend#7043. BDD-2258 (High) is still Ready To Start, untouched since 08-18.
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
Assigned 10-01. Video Delivery project, Slice 5 milestone, created by Irem Bulut 09-03 and started 10-01 08:41 UTC. Scope: one audit entry per download (not per video) plus a separate per-SKU download-counts collection, and observability (bytes delivered, build duration, failure rate). The ticket text says it can't start until N3 (where PCS's Mongo lives) is decided. That gate is now cleared: N3 (BDD-3193) has been Done since 09-29, though its ticket doesn't say which store was chosen. The ticket also lists Slice 2 as a dependency. It also asks for a decision first on whether the audit records intent (token creation) or delivery (bytes actually left), since that decides whether the backend has to report back.

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
