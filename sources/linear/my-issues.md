# Linear — my issues

Assigned to Kushel, live (non-completed) statuses. Populated on sync — completed/canceled work stays in Linear's own history rather than being repeated here; see `git log` for what rolled off.

---

```yaml
id: BDD-3225
title: "Re: Pepe Jeans - missing image report (FD: 675342)"
priority: High
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-04
url: https://linear.app/fashioncloud/issue/BDD-3225/re-pepe-jeans-missing-image-report-fd-675342
```
New — created 2026-09-03, picked up and started same day. Long AWWG/Pepe Jeans email thread: images repeatedly re-uploaded by the brand but still not showing on the Fashion Cloud frontend; prior colleague traced part of it to image aspect-ratio/watermark-compression issues.

---

```yaml
id: BDD-3164
title: Bestseller - reprocess data to enable all B2B images with type "pack" to be visible to retailers (FD: 674996)
priority: High
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-02
url: https://linear.app/fashioncloud/issue/BDD-3164/bestseller-reprocess-data-to-enable-all-b2b-images-with-type-pack-to
```
The reprocessing job (`bestseller_FEED2`) fired recurring "exceeded 3h run time limit" [Dagster alerts](../../dagster-alerts/log.md) on 09-01/09-02, self-explained by Kushel in-thread both times — quiet since. A separate, still-unexplained `publish_from_map` container-exit failure hit the same job 2026-09-02.

---

```yaml
id: BDD-3089
title: Process images that are taller than its wide
priority: No priority
status: In Review
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-03
url: https://linear.app/fashioncloud/issue/BDD-3089/process-images-that-are-taller-than-its-wide
```
Internal ticket (no FD), already has an implementation up: [product-service#2623](../github/product-service/open-prs.md).

---

```yaml
id: BDD-3117
title: "FW: PME stockbase (FD: 672891)"
priority: Medium
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-03
url: https://linear.app/fashioncloud/issue/BDD-3117/fw-pme-stockbase-fd-672891
```
Was sitting unassigned in Triage (Low) since 08-24 — forwarded stockbase question, original contact was out of office. Now his and in progress.

---

```yaml
id: BDD-2539
title: "Bilder-API liefert „render_requests_exceeded" – Fragen zum Render-Limit (FD: 645720)"
priority: Medium
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-08-31
url: https://linear.app/fashioncloud/issue/BDD-2539/bilder-api-liefert-render-requests-exceeded-fragen-zum-render-limit-fd
```
Was unassigned in Triage (open since July 8) — now his and in progress.

---

```yaml
id: BDD-3001
title: Corrupted images - GUESS (FD: 671049)
priority: Medium
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-08-31
url: https://linear.app/fashioncloud/issue/BDD-3001/corrupted-images-guess-fd-671049
```
Was unassigned in Triage — now his and in progress. Recurring symptom, same as a prior closed ticket (FD 584227).

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
Unblocked since [BDD-2567](https://linear.app/fashioncloud/issue/BDD-2567) shipped (product-service#2520 merged 2026-08-31) — still not started.

---

```yaml
id: BDD-1721
title: Fix images failing silently with no error message captured
priority: Medium
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-05-21
url: https://linear.app/fashioncloud/issue/BDD-1721/fix-images-failing-silently-with-no-error-message-captured
```
Tech Debt label. Stale — untouched for over 3 months.

---

```yaml
id: BDD-2518
title: Convert the Buffer into Stream in extract job
priority: Medium
status: To Do
assignee: Kushel Ramanayake
team: BDD
updated: 2026-08-11
url: https://linear.app/fashioncloud/issue/BDD-2518/convert-the-buffer-into-stream-in-extract-job
```
Tech Debt label.

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
On hold, low priority.
