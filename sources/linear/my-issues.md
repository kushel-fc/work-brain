# Linear — my issues

Assigned to Kushel, live (non-completed) statuses. Populated on sync — completed/canceled work stays in Linear's own history rather than being repeated here; see `git log` for what rolled off.

**Note:** a bulk Triage-clearing operation landed 2026-09-04 ~13:45-13:47 UTC and assigned roughly a dozen previously-unassigned Triage tickets to Kushel in one shot (all show the same updated timestamp). Six have since shipped (BDD-3157, BDD-3152, BDD-3163, BDD-3168 all Done/Deployed — see `support/recently-closed.md`); the rest are still listed below, either Ready To Start or In Review. See `_meta/sync-log.md` for the full callout.

**Also new this cycle:** three more Triage tickets got individually picked up and assigned to Kushel outside the bulk batch — BDD-3237 (already In Progress), BDD-3229 and BDD-3236 (both Ready To Start).

**09-14 sync:** BDD-3091 and BDD-3164 both shipped (Done/Deployed) — see `support/recently-closed.md`. One new internal ticket landed: BDD-3252 (Off-Boarded Brands Deletion, Medium, To Do — not FD-referenced).

**09-15 sync:** Four tickets shipped — BDD-3236, BDD-3229, BDD-3180 (all Triage pickups), and BDD-3150 (the PIPE/Megatron price-mismatch ticket, see the note on it below). BDD-3251 (Bybar gtins) got individually picked up from Triage, Ready To Start. Three new items landed from a "Video Delivery" project — BDD-3206, BDD-3205, BDD-3223 (Slice 3.2: full CSV generation via PCS) — all Backlog, not started; this is the shaping work in `shaping/video-download-delivery.md` turning into real tickets. Net count unchanged at 18.

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
New. Part of the "Video Delivery" project, Slice 3.2 milestone, child of BDD-3223. Backend-side routing so a video+CSV download sends the full request to PCS instead of generating the CSV locally. Depends on BDD-3205 (the PCS module) and Slice 3.1. Not started.

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
New. Part of the "Video Delivery" project, Slice 3.2 milestone, child of BDD-3223. New `CsvGenerationModule` in PCS, config-driven (no code change per column/language), artifact stored in S3 with a signed link. Open question flagged in the spec on artifact TTL. Not started.

---

```yaml
id: BDD-3223
title: "Slice 3.2 — Full CSV generation on PCS when video and CSV are selected"
priority: No priority
status: Backlog
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3223/slice-32-full-csv-generation-on-pcs-when-video-and-csv-are-selected
```
New. Parent of BDD-3206 and BDD-3205 — the Slice 3.2 milestone issue itself. Depends on Slice 3.1 and "N1". Not started.

---

```yaml
id: BDD-3251
title: Bybar Delete gtins and refresh Data Manager (FD: 676427)
priority: Medium
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3251/bybar-delete-gtins-and-refresh-data-manager-fd-676427
```
New — picked up individually from Triage (was unassigned Medium since 09-11). Not started.

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
Not FD-referenced (internal task, not a Triage pickup). Not started, no change since last sync.

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
id: BDD-3189
title: information on sketch tag needed (FD: 675287)
priority: Medium
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-10
url: https://linear.app/fashioncloud/issue/BDD-3189/information-on-sketch-tag-needed-fd-675287
```
Part of the 09-04 bulk assignment. No status change (still In Progress).

---

```yaml
id: BDD-3237
title: "PIPE: Superdry - deleting one image possible? (FD: 675898)"
priority: Low
status: In Progress
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-10
url: https://linear.app/fashioncloud/issue/BDD-3237/pipe-superdry-deleting-one-image-possible-fd-675898
```
New — picked up individually from Triage and started same day (was unassigned Low in Triage since 09-08).

---

```yaml
id: BDD-3037
title: Artikel data Florez komt niet door (FD: 671579)
priority: Medium
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-10
url: https://linear.app/fashioncloud/issue/BDD-3037/artikel-data-florez-komt-niet-door-fd-671579
```
Part of the 09-04 bulk Triage-clearing assignment. Not started — oldest of the batch.

---

```yaml
id: BDD-3129
title: "Fwd: Dringend: Ansprechpartner (FD: 674136)"
priority: Medium
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-10
url: https://linear.app/fashioncloud/issue/BDD-3129/fwd-dringend-ansprechpartner-fd-674136
```
Part of the 09-04 bulk assignment. Not started.

---

```yaml
id: BDD-3181
title: Frage zu Artikelpreis (FD: 675078)
priority: Medium
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-10
url: https://linear.app/fashioncloud/issue/BDD-3181/frage-zu-artikelpreis-fd-675078
```
Part of the 09-04 bulk assignment. Not started.

---

```yaml
id: BDD-2518
title: Convert the Buffer into Stream in extract job
priority: Medium
status: Ready To Start
assignee: Kushel Ramanayake
team: BDD
updated: 2026-09-10
url: https://linear.app/fashioncloud/issue/BDD-2518/convert-the-buffer-into-stream-in-extract-job
```
Tech Debt label. Status touched in the 09-04 batch (was already his, To Do → Ready To Start). No change since.

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
