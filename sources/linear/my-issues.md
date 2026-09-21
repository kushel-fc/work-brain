# Linear — my issues

Assigned to Kushel, live (non-completed) statuses. Populated on sync — completed/canceled work stays in Linear's own history rather than being repeated here; see `git log` for what rolled off.

**09-21 sync:** Down to 9 items (was 11) — **BDD-3246** (Kultivate Becosoft) shipped, In Review → Done. **BDD-3251** left the team entirely, transferred to Replenishment as RPL-2346 (see `archive/linear/team-transfers.md`) — unusual in that it was Kushel's own In Review work, not an unassigned backlog item, and it bounced back to Todo status there. **BDD-3206** advanced Ready To Start → In Progress today (09-21), the first real movement on the Video Delivery Slice 3.2 backend work.

---

```yaml
id: BDD-3223
title: "Slice 3.2 — Full CSV generation on PCS when video and CSV are selected"
priority: No priority
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-16
url: https://linear.app/fashioncloud/issue/BDD-3223/slice-32-full-csv-generation-on-pcs-when-video-and-csv-are-selected
```
Advanced from Ready To Start to In Progress this cycle. Parent of BDD-3206 and BDD-3205 — the Slice 3.2 milestone issue itself. Video Delivery project.

---

```yaml
id: BDD-3205
title: "3.2 PCS — CSV generation module"
priority: No priority
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-16
url: https://linear.app/fashioncloud/issue/BDD-3205/32-pcs-csv-generation-module
```
Advanced from Backlog to In Progress this cycle. Part of the "Video Delivery" project, Slice 3.2 milestone, child of BDD-3223. New `CsvGenerationModule` in PCS, config-driven, artifact stored in S3 with a signed link.

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
Advanced from Ready To Start to In Progress this cycle. Video Delivery project — the documentation prerequisite ("N1") referenced as a dependency by BDD-3206.

---

```yaml
id: BDD-3206
title: "3.2 Backend — Route the full request to PCS and append its CSV"
priority: No priority
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-21
url: https://linear.app/fashioncloud/issue/BDD-3206/32-backend-route-the-full-request-to-pcs-and-append-its-csv
```
Advanced from Ready To Start to In Progress today (09-21) — first real movement on this sub-issue. Part of the "Video Delivery" project, Slice 3.2 milestone, child of BDD-3223. Depends on BDD-3205 and BDD-3191/Slice 3.1.

---

```yaml
id: BDD-3117
title: "FW: PME stockbase (FD: 672891)"
priority: Medium
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-10
url: https://linear.app/fashioncloud/issue/BDD-3117/fw-pme-stockbase-fd-672891
```
No change since last sync.

---

```yaml
id: BDD-3252
title: Off-Boarded Brands Deletion
priority: Medium
status: To Do
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-11
url: https://linear.app/fashioncloud/issue/BDD-3252/off-boarded-brands-deletion
```
No change since last sync. Not FD-referenced (internal task).

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
Unblocked since BDD-2567 shipped — still not started, now over four weeks since its own last update.
