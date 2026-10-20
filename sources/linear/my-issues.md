# Linear — my issues

Assigned to Kushel, live (non-completed) statuses. Populated on sync — completed/canceled work stays in Linear's own history rather than being repeated here; see `git log` for what rolled off.

**10-20 sync:** 4 to 7 live. Video Delivery Slice 5 closed: BDD-3213 went Done and BDD-3216 was Canceled, both 10-19 15:28 UTC. New project **Video Reprocessing** (tickets created 10-19 14:43 UTC, all his): BDD-3494 and BDD-3495 were created and went Done the same afternoon off his product-service#2996 and brand-data-pipeline#2074. BDD-3496 is In Review (his #3002), BDD-3497 and BDD-3498 In Progress, BDD-3499 Backlog. BDD-3449 (his own, created 10-14) moved Backlog to In Progress. BDD-2406 and BDD-2079 unchanged.

---

```yaml
id: BDD-3496
title: "Video reprocessing API: request schema, failed strategy, query builder"
priority: No priority
status: In Review
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-19
url: https://linear.app/fashioncloud/issue/BDD-3496
```
Video Reprocessing, PR 1 of 3 for the dim-admin-api endpoints (stacked). Moves the shared strategy code from `reprocessing/image/` to `reprocessing/media/` and adds the video request schema and query builder. His [product-service#3002](../../prs/mine.md) is open for it.

---

```yaml
id: BDD-3497
title: "Video reprocessing API: service, run-config check, test helpers"
priority: No priority
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-19
url: https://linear.app/fashioncloud/issue/BDD-3497
```
PR 2 of 3 for the endpoints. `ReprocessingVideoService`: resolve videos and their GTINs, upload video mapping files, reset videos to `unprocessed`, launch `download_videos` then `publish_from_download_videos` tagged `workflow_type=video-reprocessing`. No PR open yet.

---

```yaml
id: BDD-3498
title: "Video reprocessing API: endpoints and OpenAPI"
priority: No priority
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-19
url: https://linear.app/fashioncloud/issue/BDD-3498
```
PR 3 of 3 for the endpoints: `POST /reprocessing/video/validate`, `/trigger` and `/trigger/uploaded-videoids`, a 400 when nothing matches, OpenAPI. The ticket's rollout note says to deploy it after the publish step. No PR open yet.

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
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-10-19
url: https://linear.app/fashioncloud/issue/BDD-3449
```
Created by him 10-14 while doing #2951. Moved Backlog to In Review to In Progress on 10-19 (14:30 and 14:44 UTC). A brand whose videos sit on its own FTP behind a 1Password credential can't be onboarded yet. Listed sub-items: FTP/SFTP credentials from 1Password, reuse FTP connections and stop on an unresponsive server, try `https://` first, S3 link handling, redact video URLs in logs. The new Triage ticket BDD-3501 reports the same unclosed-FTP-client problem in the image downloader.

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
