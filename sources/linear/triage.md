# Linear — Triage (raw)

Full raw Triage backlog for team BDD, sourced from https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. See `support/open.md` for the FD-referenced/support-shaped curated subset.

**09-25 sync:** Up to 12 items (was 10). Three new: **BDD-3312** (High, Citizen image deletion, 09-25), BDD-3309 (Medium, Falke placeholder images) and BDD-3310 (Low, royRobson FEED2 config). **BDD-3311** (High, Xsensible search-service full sync, assigned to Oleh) moved back into Triage from In Review on 09-24. Two left: BDD-3304 (Blackstone EANs) went straight to Deployed 09-24 08:55 UTC, and BDD-3296 (Altex SS27 cancellations) was picked up by abubakarwase, In Progress since 09-24.

```yaml
id: BDD-3312
title: Citizen - delete image (FD: 678232)
priority: High
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-25
url: https://linear.app/fashioncloud/issue/BDD-3312/citizen-delete-image-fd-678232
```
New 09-25 07:43 UTC. The brand shared an image by accident; asks for it to be removed from the frontend for one article (GTIN 4974374355324). Small job, but time-sensitive for the brand.

```yaml
id: BDD-3311
title: Search service full sync - Brand reassignment (FD: 677360)
priority: High
status: Triage
assignee: oleh.polishchuk@fashion.cloud
team: BDD
updated: 2026-09-24
url: https://linear.app/fashioncloud/issue/BDD-3311/search-service-full-sync-brand-reassignment-fd-677360
```
Not new: created 09-18, went Todo, In Progress, In Review, then back to Triage 09-24 13:53 UTC. Xsensible's Nimco brand reassignment needs a search-service full sync. Still assigned to Oleh. Flagged "on weak footing with the brand."

```yaml
id: BDD-3310
title: Update royRobson_FEED2 config (FD: 678213)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-24
url: https://linear.app/fashioncloud/issue/BDD-3310/update-royrobson-feed2-config-fd-678213
```
New 09-24. One-line config change: set `resources_size` to `L` in `royRobson_FEED2`.

```yaml
id: BDD-3309
title: product images Falke (FD: 678029)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-24
url: https://linear.app/fashioncloud/issue/BDD-3309/product-images-falke-fd-678029
```
New 09-24. A retailer (EK Fashion) reports that Falke products arrive with a placeholder image and no product image, so they can't sell them online.

```yaml
id: BDD-3306
title: Remove gtin for CWF (FD: 678159)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-24
url: https://linear.app/fashioncloud/issue/BDD-3306/remove-gtin-for-cwf-fd-678159
```
CWF has a GTIN of literally `0`, which is reportedly blocking the Showroom stock importer. Asks for it to be deleted.

---

```yaml
id: BDD-3305
title: Allow successful files to continue when others fail
priority: No priority
status: Triage
assignee: dushan.silva@fashion.cloud
team: BDD
updated: 2026-09-24
url: https://linear.app/fashioncloud/issue/BDD-3305/allow-successful-files-to-continue-when-others-fail
```
Internal feature request from Munia (not FD-referenced). A sanetta run with 4 files stopped at the parse job because 3 had bad EAN formatting, so the 1 good file was never processed either. Already assigned to Dushan while still in Triage.

---

```yaml
id: BDD-3243
title: German FC Attribut name not correct (FD: 676209)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-16
url: https://linear.app/fashioncloud/issue/BDD-3243/german-fc-attribut-name-not-correct-fd-676209
```
Touched, still Triage/unassigned. No material change.

---

```yaml
id: BDD-3260
title: "New bug on fashioncloud (FD: 676591)"
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3260/new-bug-on-fashioncloud-fd-676591
```
No change since last sync.

---

```yaml
id: BDD-3241
title: Stocks not correctly imported | Cavallaro (FD: 675804)
priority: Low
status: Triage
assignee: oleh.polishchuk@fashion.cloud
team: BDD
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3241/stocks-not-correctly-imported-cavallaro-fd-675804
```
Unusual: carries an assignee already while still in Triage status. Not treated as unassigned in `support/open.md`. No change since last sync.

---

```yaml
id: BDD-3248
title: "Images uploading by API | Stout! Jeans (FD: 676401)"
priority: High
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3248/images-uploading-by-api-stout-jeans-fd-676401
```
No change since last sync. Aging a ninth cycle. No longer the only High item: BDD-3312 landed 09-25 and BDD-3311 came back to Triage.

---

```yaml
id: BDD-3043
title: Incorrect delimiter not shown as error (FD: 672084)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-20
url: https://linear.app/fashioncloud/issue/BDD-3043/incorrect-delimiter-not-shown-as-error-fd-672084
```
PIPE silently mis-parses when the configured delimiter doesn't match the file (example: Rosner, `,` configured vs `;` actual). Oldest Medium item, still untouched.

---

```yaml
id: BDD-3005
title: Er doet zich een herhalend probleem voor (FD: 663296)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-03
url: https://linear.app/fashioncloud/issue/BDD-3005/er-doet-zich-een-herhalend-probleem-voor-fd-663296
```
Recurring UI issue — navigating to a brand's Content > Productdata bounces back to the home page, blocking downloads. Oldest item in Triage overall, now seven-plus weeks untouched.
