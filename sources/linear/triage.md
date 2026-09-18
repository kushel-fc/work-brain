# Linear — Triage (raw)

Full raw Triage backlog for team BDD, sourced from https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. See `support/open.md` for the FD-referenced/support-shaped curated subset.

**09-18 sync:** Down to 9 items (was 10). One new: BDD-3278 (Low, withblack EAN deletion). Two left, both picked up by Syed Muhammad Abu Bakar Wase (abubakarwase) — continuing the workload-shift pattern from prior cycles: BDD-3259 (now In Progress) and BDD-3238 (now In Review).

---

```yaml
id: BDD-3278
title: "PIPE: withblack ean deletion (FD: 677342)"
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-18
url: https://linear.app/fashioncloud/issue/BDD-3278/pipe-withblack-ean-deletion-fd-677342
```
New.

---

```yaml
id: BDD-3268
title: "Update resource size for integration which run for longer than 60 minutes (FD: 677101)"
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-16
url: https://linear.app/fashioncloud/issue/BDD-3268/update-resource-size-for-integration-which-run-for-longer-than-60
```
New. Possibly related to the run-time-limit Dagster alerts (kultivate/blackstone/falke hitting the 3h cap) — worth cross-checking if this is asking for the same fix.

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
id: BDD-3266
title: "Brax - AVIF support images PD (FD: 677049)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-16
url: https://linear.app/fashioncloud/issue/BDD-3266/brax-avif-support-images-pd-fd-677049
```
No change since last sync.

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
No change since last sync. Aging a fifth cycle now, still the only High-priority unassigned item.

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
Recurring UI issue — navigating to a brand's Content > Productdata bounces back to the home page, blocking downloads. Oldest item in Triage overall, now six-plus weeks untouched.
