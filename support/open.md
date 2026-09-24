# Support — open

FD-sourced/support-shaped tickets, by priority then age (oldest first within each tier). Sourced from the team BDD Triage view: https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. Full raw Triage list lives in [`sources/linear/triage.md`](../sources/linear/triage.md).

9 items now (was 7). Two new on 09-24: BDD-3306 (Medium, CWF GTIN `0` blocking the Showroom stock importer) and BDD-3304 (Medium, Blackstone EAN deletion). Nothing picked up or closed off the list this cycle. Still just 1 High. BDD-3305 (also new in Triage) is an internal feature request already assigned to Dushan, so it's not listed here.

## High

```yaml
id: BDD-3248
title: "Images uploading by API | Stout! Jeans (FD: 676401)"
priority: High
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3248/images-uploading-by-api-stout-jeans-fd-676401
```
No change since last sync. Aging an eighth cycle now, sole High-priority item.

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
id: BDD-3296
title: "RE: Cancellations SS27 (FD: 677256)"
priority: Medium
updated: 2026-09-22
url: https://linear.app/fashioncloud/issue/BDD-3296/re-cancellations-ss27-fd-677256
```
New. Altex SS27 cancellations file - repeat of a request type Kushel has handled before (BDD-3112, BDD-3229).

```yaml
id: BDD-3304
title: Deleting EANs | Blackstone (FD: 678060)
priority: Medium
updated: 2026-09-24
url: https://linear.app/fashioncloud/issue/BDD-3304/deleting-eans-blackstone-fd-678060
```
New. Routine deletion of 33 Blackstone EANs.

```yaml
id: BDD-3306
title: Remove gtin for CWF (FD: 678159)
priority: Medium
updated: 2026-09-24
url: https://linear.app/fashioncloud/issue/BDD-3306/remove-gtin-for-cwf-fd-678159
```
New. A GTIN of `0` on CWF is reportedly blocking the Showroom stock importer, so it has more downstream impact than a typical deletion request.

## Low

```yaml
id: BDD-3005
title: Er doet zich een herhalend probleem voor (FD: 663296)
priority: Low
updated: 2026-08-03
url: https://linear.app/fashioncloud/issue/BDD-3005/er-doet-zich-een-herhalend-probleem-voor-fd-663296
```
Recurring — Content > Productdata navigation bounces to home, blocks downloads. Oldest unassigned item overall, seven-plus weeks now.

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

