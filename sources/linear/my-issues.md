# Linear — my issues

Assigned to Kushel, live (non-completed) statuses. Populated on sync — completed/canceled work stays in Linear's own history rather than being repeated here; see `git log` for what rolled off.

**Note:** a bulk Triage-clearing operation landed 2026-09-04 ~13:45-13:47 UTC and assigned roughly a dozen previously-unassigned Triage tickets to Kushel in one shot (all show the same updated timestamp). Five have since shipped (BDD-3157, BDD-3152, BDD-3163 all Done/Deployed — see `support/recently-closed.md`; BDD-3091 is In Review); the rest are still listed below at "Ready To Start", not yet worked. See `_meta/sync-log.md` for the full callout.

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
No status change on the ticket itself. The `bestseller_FEED2` OOM saga (see `dagster-alerts/log.md`) has now stayed quiet since [product-service#2640](../../archive/prs/product-service.md) merged 09-08 09:53 UTC — over 24h with zero recurrence, longer than any prior "quiet" window in this saga. Still not formally confirmed fixed.

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
Unblocked since BDD-2567 shipped — still not started, over three weeks now.

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
No change since last sync.

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
No change since last sync.

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
No change since last sync.

---

```yaml
id: BDD-2538
title: PVH - image ID updates without actual image changes - more information needed (FD: 650988)
priority: Medium
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-07
url: https://linear.app/fashioncloud/issue/BDD-2538/pvh-image-id-updates-without-actual-image-changes-more-information
```
No change since last sync.

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
No change since last sync.

---

```yaml
id: BDD-3037
title: Artikel data Florez komt niet door (FD: 671579)
priority: Medium
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-04
url: https://linear.app/fashioncloud/issue/BDD-3037/artikel-data-florez-komt-niet-door-fd-671579
```
Part of the 09-04 bulk Triage-clearing assignment. Not started.

---

```yaml
id: BDD-3129
title: "Fwd: Dringend: Ansprechpartner (FD: 674136)"
priority: Medium
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-04
url: https://linear.app/fashioncloud/issue/BDD-3129/fwd-dringend-ansprechpartner-fd-674136
```
Part of the 09-04 bulk assignment. Not started.

---

```yaml
id: BDD-3150
title: PIPE/Megatron Pipeline mismatch in processing capability for prices (FD: 674378)
priority: Medium
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-04
url: https://linear.app/fashioncloud/issue/BDD-3150/pipemegatron-pipeline-mismatch-in-processing-capability-for-prices-fd
```
Part of the 09-04 bulk assignment. The candidate SAX-parser fix ([brand-data-pipeline#1744](../../archive/prs/brand-data-pipeline.md)) merged 09-08; its follow-up flag-enable PR ([brand-data-pipeline#1825](../github/brand-data-pipeline/open-prs.md)) is now open too. Worth checking whether this ticket can close once #1825 lands. Not started.

---

```yaml
id: BDD-3181
title: Frage zu Artikelpreis (FD: 675078)
priority: Medium
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-04
url: https://linear.app/fashioncloud/issue/BDD-3181/frage-zu-artikelpreis-fd-675078
```
Part of the 09-04 bulk assignment. Not started.

---

```yaml
id: BDD-3189
title: information on sketch tag needed (FD: 675287)
priority: Medium
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-09
url: https://linear.app/fashioncloud/issue/BDD-3189/information-on-sketch-tag-needed-fd-675287
```
Started this cycle (was Ready To Start). Part of the 09-04 bulk assignment.

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
Tech Debt label. Status touched in the 09-04 batch (was already his, To Do → Ready To Start).

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
Tech Debt label. Stale — untouched for over 3.5 months.

---

```yaml
id: BDD-3091
title: "HUGO BOSS: request MM (FD: 672863)"
priority: Low
status: In Review
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-09
url: https://linear.app/fashioncloud/issue/BDD-3091/hugo-boss-request-mm-fd-672863
```
Part of the 09-04 bulk assignment. No change since last sync (already In Review).

---

```yaml
id: BDD-3110
title: Maximum download with Art.Numbers is 1000 EANS - but when searching on EAN level it's 2000 (FD: 673275)
priority: Low
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-04
url: https://linear.app/fashioncloud/issue/BDD-3110/maximum-download-with-artnumbers-is-1000-eans-but-when-searching-on
```
Part of the 09-04 bulk assignment. Not started.

---

```yaml
id: BDD-3153
title: Preise siehe auch Ticket 610189 (FD: 674585)
priority: Low
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-04
url: https://linear.app/fashioncloud/issue/BDD-3153/preise-siehe-auch-ticket-610189-fd-674585
```
Part of the 09-04 bulk assignment. Not started.

---

```yaml
id: BDD-3168
title: API Image request problem (FD: 675101)
priority: Low
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-04
url: https://linear.app/fashioncloud/issue/BDD-3168/api-image-request-problem-fd-675101
```
Part of the 09-04 bulk assignment. Not started.

---

```yaml
id: BDD-3180
title: API access permission error (FD: 675082)
priority: Low
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-07
url: https://linear.app/fashioncloud/issue/BDD-3180/api-access-permission-error-fd-675082
```
Part of the 09-04 bulk assignment. Not started.

---

```yaml
id: BDD-1417
title: GET v2/products/media/images/:id Error Rate Spike - 16k errors/day since Jan 9th
priority: Low
status: Backlog
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-06
url: https://linear.app/fashioncloud/issue/BDD-1417/get-v2productsmediaimagesid-error-rate-spike-16k-errorsday-since-jan
```
Old internal ticket (no FD). No change since last sync.

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
On hold, low priority. No change.
