# Linear — my issues

Assigned to Kushel, live (non-completed) statuses. Populated on sync — completed/canceled work stays in Linear's own history rather than being repeated here; see `git log` for what rolled off.

**10-23 sync:** 4 to 8 live. His frontend#7203 merged 10-22 12:29 UTC and BDD-3499 went Done, finishing the Video Reprocessing project. BDD-3424 (N1, confirm PDS image coverage) went Done 10-22 16:42 UTC. Five new Backlog tickets, all created 10-22 16:02 UTC, make up a "daily video sweep" follow-up: BDD-3543, BDD-3544, BDD-3545, BDD-3546 and BDD-3547. BDD-3449, BDD-2406 and BDD-2079 unchanged.

---

```yaml
id: BDD-3543
title: "Daily video sweep: video_reprocessing block in the product-data config contract"
priority: No priority
status: Backlog
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-22
url: https://linear.app/fashioncloud/issue/BDD-3543
```
Created 10-22 16:02 UTC, assigned to him, not started. Config-contract piece of the sweep. Only the title is known; I haven't read the description.

---

```yaml
id: BDD-3544
title: "Daily video sweep: video client in the dim-admin-api SDK"
priority: No priority
status: Backlog
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-22
url: https://linear.app/fashioncloud/issue/BDD-3544
```
Created 10-22 16:02 UTC, assigned to him, not started. SDK client for the reprocessing endpoints (#3017). Only the title is known; I haven't read the description.

---

```yaml
id: BDD-3545
title: "Video download job: ignore hash matches that are unprocessed or failed"
priority: No priority
status: Backlog
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-22
url: https://linear.app/fashioncloud/issue/BDD-3545
```
Created 10-22 16:02 UTC, assigned to him, not started. Fix to the download job's hash-match handling. Only the title is known; I haven't read the description.

---

```yaml
id: BDD-3546
title: "Daily video sweep: sweep Lambda"
priority: No priority
status: Backlog
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-22
url: https://linear.app/fashioncloud/issue/BDD-3546
```
Created 10-22 16:02 UTC, assigned to him, not started. The Lambda that runs the sweep. Only the title is known; I haven't read the description.

---

```yaml
id: BDD-3547
title: "Daily video sweep: Terraform and deploy for the sweep Lambda"
priority: No priority
status: Backlog
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-22
url: https://linear.app/fashioncloud/issue/BDD-3547
```
Created 10-22 16:02 UTC, assigned to him, not started. Terraform and deploy wiring for BDD-3546. Only the title is known; I haven't read the description.

---

```yaml
id: BDD-3449
title: Video download parity with images
priority: No priority
status: To Do
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-21
url: https://linear.app/fashioncloud/issue/BDD-3449
```
Created by him 10-14 while doing #2951. Moved Backlog to In Review to In Progress on 10-19, then back to To Do on 10-21 08:21 UTC. A brand whose videos sit on its own FTP behind a 1Password credential can't be onboarded yet. Listed sub-items: FTP/SFTP credentials from 1Password, reuse FTP connections and stop on an unresponsive server, try `https://` first, S3 link handling, redact video URLs in logs. The new Triage ticket BDD-3501 reports the same unclosed-FTP-client problem in the image downloader.

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
