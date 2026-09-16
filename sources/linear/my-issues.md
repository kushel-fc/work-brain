# Linear — my issues

Assigned to Kushel, live (non-completed) statuses. Populated on sync — completed/canceled work stays in Linear's own history rather than being repeated here; see `git log` for what rolled off.

**09-16 sync:** The 09-04 bulk-assignment batch is now fully closed out — its last 5 unstarted items (BDD-3037, BDD-3129, BDD-3181, BDD-3110, BDD-3153) were reassigned away from Kushel to Syed Muhammad Abu Bakar Wase, in two waves (3181/3110/3153 on 09-15 ~15:23 UTC, then 3037/3129 on 09-16 ~08:19 UTC). None of them had been started. Two Triage tickets were individually picked up: BDD-3249 (shipped same window, see `support/recently-closed.md`) and BDD-3246 (now In Progress, below). BDD-3263 (the Urgent security ticket from last cycle) shipped — Done, well ahead of its 09-17 deadline, see `support/recently-closed.md`. One new ticket landed on the Video Delivery project: BDD-3191 ("N1 — Document today's CSV generation logic"), Ready To Start.

---

```yaml
id: BDD-3237
title: "PIPE: Superdry - deleting one image possible? (FD: 675898)"
priority: Low
status: In Review
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-16
url: https://linear.app/fashioncloud/issue/BDD-3237/pipe-superdry-deleting-one-image-possible-fd-675898
```
Advanced from In Progress to In Review this cycle.

---

```yaml
id: BDD-3251
title: Bybar Delete gtins and refresh Data Manager (FD: 676427)
priority: Medium
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-16
url: https://linear.app/fashioncloud/issue/BDD-3251/bybar-delete-gtins-and-refresh-data-manager-fd-676427
```
Advanced from Ready To Start to In Progress this cycle.

---

```yaml
id: BDD-3189
title: information on sketch tag needed (FD: 675287)
priority: Medium
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-15
url: https://linear.app/fashioncloud/issue/BDD-3189/information-on-sketch-tag-needed-fd-675287
```
No status change, just touched.

---

```yaml
id: BDD-3246
title: "PIPE: Becosoft image issue - Kultivate (FD: 676295)"
priority: Medium
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-15
url: https://linear.app/fashioncloud/issue/BDD-3246/pipe-becosoft-image-issue-kultivate-fd-676295
```
New — picked up individually from Triage this cycle, already In Progress.

---

```yaml
id: BDD-3223
title: "Slice 3.2 — Full CSV generation on PCS when video and CSV are selected"
priority: No priority
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-15
url: https://linear.app/fashioncloud/issue/BDD-3223/slice-32-full-csv-generation-on-pcs-when-video-and-csv-are-selected
```
Advanced from Backlog to Ready To Start this cycle. Parent of BDD-3206 and BDD-3205 — the Slice 3.2 milestone issue itself. Video Delivery project.

---

```yaml
id: BDD-3191
title: "N1 — Document today's CSV generation logic"
priority: No priority
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-15
url: https://linear.app/fashioncloud/issue/BDD-3191/n1-document-todays-csv-generation-logic
```
New. Video Delivery project — a documentation prerequisite ("N1") referenced as a dependency by BDD-3206. Not started.

---

```yaml
id: BDD-3206
title: "3.2 Backend — Route the full request to PCS and append its CSV"
priority: No priority
status: Backlog
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3206/32-backend-route-the-full-request-to-pcs-and-append-its-csv
```
No change since last sync. Part of the "Video Delivery" project, Slice 3.2 milestone, child of BDD-3223. Depends on BDD-3205 and BDD-3191/Slice 3.1. Not started.

---

```yaml
id: BDD-3205
title: "3.2 PCS — CSV generation module"
priority: No priority
status: Backlog
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3205/32-pcs-csv-generation-module
```
No change since last sync. Part of the "Video Delivery" project, Slice 3.2 milestone, child of BDD-3223. New `CsvGenerationModule` in PCS, config-driven, artifact stored in S3 with a signed link. Open question flagged in the spec on artifact TTL. Not started.

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
id: BDD-2539
title: "Bilder-API liefert „render_requests_exceeded" – Fragen zum Render-Limit (FD: 645720)"
priority: Medium
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-09
url: https://linear.app/fashioncloud/issue/BDD-2539/bilder-api-liefert-render-requests-exceeded-fragen-zum-render-limit-fd
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
id: BDD-2518
title: Convert the Buffer into Stream in extract job
priority: Medium
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-04
url: https://linear.app/fashioncloud/issue/BDD-2518/convert-the-buffer-into-stream-in-extract-job
```
No change since last sync. Internal tech-debt item — unlike the rest of the 09-04 batch, this one stayed assigned to Kushel rather than getting reassigned away.

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
Unblocked since BDD-2567 shipped — still not started, now over four weeks.
