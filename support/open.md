# Support — open

FD-sourced/support-shaped tickets, by priority then age (oldest first within each tier). Sourced from the team BDD Triage view: https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. Full raw Triage list lives in [`sources/linear/triage.md`](../sources/linear/triage.md).

10 items now (was 13) — BDD-3244 and BDD-3109 both individually picked up by abubakarwase, BDD-3258 moved to general backlog (unassigned, no longer Triage), BDD-3245 transferred to the Replenishment team (now RPL-2334, see `archive/linear/team-transfers.md`). Two new: BDD-3266 (Medium), BDD-3268 (Low). Still just 1 High.

## High

```yaml
id: BDD-3248
title: "Images uploading by API | Stout! Jeans (FD: 676401)"
priority: High
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3248/images-uploading-by-api-stout-jeans-fd-676401
```
No change since last sync. Aging a fourth cycle now, sole High-priority item.

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
id: BDD-3238
title: Produktbilder (FD: 676044)
priority: Medium
updated: 2026-09-09
url: https://linear.app/fashioncloud/issue/BDD-3238/produktbilder-fd-676044
```
No change since last sync.

```yaml
id: BDD-3259
title: "AW: Frage zu Artikelpreis (FD: 676723)"
priority: Medium
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3259/aw-frage-zu-artikelpreis-fd-676723
```
No change since last sync.

```yaml
id: BDD-3266
title: "Brax - AVIF support images PD (FD: 677049)"
priority: Medium
updated: 2026-09-16
url: https://linear.app/fashioncloud/issue/BDD-3266/brax-avif-support-images-pd-fd-677049
```
New.

## Low

```yaml
id: BDD-3005
title: Er doet zich een herhalend probleem voor (FD: 663296)
priority: Low
updated: 2026-08-03
url: https://linear.app/fashioncloud/issue/BDD-3005/er-doet-zich-een-herhalend-probleem-voor-fd-663296
```
Recurring — Content > Productdata navigation bounces to home, blocks downloads. Oldest unassigned item overall, six-plus weeks now.

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
id: BDD-3268
title: "Update resource size for integration which run for longer than 60 minutes (FD: 677101)"
priority: Low
updated: 2026-09-16
url: https://linear.app/fashioncloud/issue/BDD-3268/update-resource-size-for-integration-which-run-for-longer-than-60
```
New. Possibly related to the run-time-limit Dagster alerts (kultivate/blackstone/falke) — worth a look at whether this ticket is asking for the same fix.
