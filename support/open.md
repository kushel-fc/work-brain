# Support — open

FD-sourced/support-shaped tickets, by priority then age (oldest first within each tier). Sourced from the team BDD Triage view: https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. Full raw Triage list lives in [`sources/linear/triage.md`](../sources/linear/triage.md).

11 items now (was 9), 3 of them High (was 1). New: **BDD-3312** (High, Citizen image deletion), BDD-3309 (Medium, Falke placeholder images) and BDD-3310 (Low, royRobson FEED2 config). **BDD-3311** (High, Xsensible full sync) came back to Triage from In Review, still assigned to Oleh. Left: BDD-3304 shipped (see [`recently-closed.md`](recently-closed.md)), and BDD-3296 was picked up by abubakarwase (In Progress). BDD-3305 is an internal feature request already assigned to Dushan, so it isn't listed here.

## High

```yaml
id: BDD-3248
title: "Images uploading by API | Stout! Jeans (FD: 676401)"
priority: High
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3248/images-uploading-by-api-stout-jeans-fd-676401
```
No change since last sync. Aging a ninth cycle, now the oldest of three High items.

```yaml
id: BDD-3311
title: "Search service full sync - Brand reassignment (FD: 677360)"
priority: High
updated: 2026-09-24
url: https://linear.app/fashioncloud/issue/BDD-3311/search-service-full-sync-brand-reassignment-fd-677360
```
Back in Triage 09-24 after a week of Todo, In Progress, In Review. Xsensible's Nimco brand reassignment needs a search-service full sync. Still assigned to oleh.polishchuk, so not up for grabs. The ticket says "we are on weak footing with the brand."

```yaml
id: BDD-3312
title: "Citizen - delete image (FD: 678232)"
priority: High
updated: 2026-09-25
url: https://linear.app/fashioncloud/issue/BDD-3312/citizen-delete-image-fd-678232
```
New 09-25. The brand shared an image by accident; asks for it to be removed from the frontend for one article (GTIN 4974374355324). Small, but time-sensitive for the brand.

## Medium

```yaml
id: BDD-3043
title: Incorrect delimiter not shown as error (FD: 672084)
priority: Medium
updated: 2026-08-20
url: https://linear.app/fashioncloud/issue/BDD-3043/incorrect-delimiter-not-shown-as-error-fd-672084
```
PIPE silently mis-parses on a delimiter mismatch instead of erroring. Oldest Medium item, still untouched.

```yaml
id: BDD-3306
title: Remove gtin for CWF (FD: 678159)
priority: Medium
updated: 2026-09-24
url: https://linear.app/fashioncloud/issue/BDD-3306/remove-gtin-for-cwf-fd-678159
```
A GTIN of `0` on CWF is reportedly blocking the Showroom stock importer, so it has more downstream impact than a typical deletion request.

```yaml
id: BDD-3309
title: "product images Falke (FD: 678029)"
priority: Medium
updated: 2026-09-24
url: https://linear.app/fashioncloud/issue/BDD-3309/product-images-falke-fd-678029
```
New 09-24. EK Fashion (retailer) reports Falke products coming through with a placeholder image and no product image, which blocks them selling online.

## Low

```yaml
id: BDD-3005
title: Er doet zich een herhalend probleem voor (FD: 663296)
priority: Low
updated: 2026-08-03
url: https://linear.app/fashioncloud/issue/BDD-3005/er-doet-zich-een-herhalend-probleem-voor-fd-663296
```
Recurring — Content > Productdata navigation bounces to home, blocks downloads. Oldest unassigned item overall, nearly eight weeks now.

```yaml
id: BDD-3243
title: German FC Attribut name not correct (FD: 676209)
priority: Low
updated: 2026-09-16
url: https://linear.app/fashioncloud/issue/BDD-3243/german-fc-attribut-name-not-correct-fd-676209
```
Touched, no material change.

```yaml
id: BDD-3241
title: Stocks not correctly imported | Cavallaro (FD: 675804)
priority: Low
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3241/stocks-not-correctly-imported-cavallaro-fd-675804
```
Unusual — already carries an assignee (oleh.polishchuk) despite Triage status, so less "up for grabs" than the rest of this list.

```yaml
id: BDD-3260
title: "New bug on fashioncloud (FD: 676591)"
priority: Low
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3260/new-bug-on-fashioncloud-fd-676591
```
No change since last sync.

```yaml
id: BDD-3310
title: "Update royRobson_FEED2 config (FD: 678213)"
priority: Low
updated: 2026-09-24
url: https://linear.app/fashioncloud/issue/BDD-3310/update-royrobson-feed2-config-fd-678213
```
New 09-24. One-line config change: set `resources_size` to `L` in `royRobson_FEED2`.
