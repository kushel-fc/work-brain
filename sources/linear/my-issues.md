# Linear — my issues

Assigned to Kushel, live (non-completed) statuses. Populated on sync — completed/canceled work stays in Linear's own history rather than being repeated here; see `git log` for what rolled off.

**10-21 sync:** 7 to 6 live. BDD-3496 (his #3002, merged 10-20 08:50 UTC) and BDD-3497 (#3008, merged 11:05 UTC) went Done. BDD-3498 (endpoints) is In Review on his #3017. **BDD-3455** (the parent, "Video reprocessing endpoint in dim-admin-api") is In Progress, updated 10-21 08:22 UTC. BDD-3449 moved from In Progress back to To Do (10-21 08:21 UTC). BDD-3499, BDD-2406 and BDD-2079 unchanged.

---

```yaml
id: BDD-3455
title: Video reprocessing endpoint in dim-admin-api
priority: No priority
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-21
url: https://linear.app/fashioncloud/issue/BDD-3455/video-reprocessing-endpoint-in-dim-admin-api
```
Parent of BDD-3494 to BDD-3498. Four of the five are Done or in review; the endpoints PR (#3017) is the last open piece.

---

```yaml
id: BDD-3498
title: "Video reprocessing API: endpoints and OpenAPI"
priority: No priority
status: In Review
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-20
url: https://linear.app/fashioncloud/issue/BDD-3498
```
Last piece of the endpoints (his [product-service#3017](../../prs/mine.md), 4/4, open): `POST /reprocessing/video/validate`, `/trigger` and `/trigger/uploaded-videoids`, a 400 when nothing matches, OpenAPI. The ticket's rollout note says to deploy it after the publish step, which merged and reached production 10-20 (brand-data-pipeline#2074).

---

```yaml
id: BDD-3499
title: Video Reprocessing page in admin tooling
priority: No priority
status: Backlog
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-19
url: https://linear.app/fashioncloud/issue/BDD-3499
```
Frontend repo. Mirrors the image reprocessing page: input, valid/skipped overview, result with the Dagster run link. Not started.

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
