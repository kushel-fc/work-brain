# Linear — Triage backlog (team BDD)

Full raw Triage view (team BDD) — https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. The FD-referenced/support-shaped subset of this list is curated into [`support/open.md`](../../support/open.md).

Five items left the list last cycle — four picked up and assigned to Kushel individually (BDD-3237, BDD-3236, BDD-3229 now on `sources/linear/my-issues.md`; BDD-3230 assigned and shipped same-day, see `support/recently-closed.md`), and BDD-2497 jumped straight from Triage to Done without ever being assigned (also in `support/recently-closed.md`). Five new tickets landed (BDD-3247, BDD-3246, BDD-3245, BDD-3244, BDD-3243). Net count unchanged at 11.

**09-14 sync:** none of the 11 items above moved out this cycle. Three new tickets landed — BDD-3248 and BDD-3249 (both High), BDD-3251 (Medium) — bringing the total to 14. First High-priority unassigned items in this list in a while (see `support/open.md`); not Urgent, so doesn't cross the notification bar.

**09-15 sync:** BDD-3251 left (picked up, now on `sources/linear/my-issues.md`) and BDD-3247 left (assigned and shipped same-window, see `support/recently-closed.md`). Four new tickets landed: BDD-3260 (Low), BDD-3259 (Medium), BDD-3258 (Low), and **BDD-3263 — a Security-labeled Urgent ticket, unassigned, due 2026-09-17** (missing function-level authorization on `dim-admin-api` staging — any authenticated user can read every Assistant chat session platform-wide and call destructive admin endpoints). This is the first new Urgent-priority unassigned ticket in the tracked history of this log and crosses the notification bar — see `today.md`. Net count up to 16 (14 support-shaped, since BDD-3263 has no FD reference).

---

```yaml
id: BDD-3263
title: "[Security] Missing function-level authorization on dim-admin-api (staging)"
priority: Urgent
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-15
url: https://linear.app/fashioncloud/issue/BDD-3263/security-missing-function-level-authorization-on-dim-admin-api-staging
```
New. Not FD-referenced — internal security report, sourced from the Notion Vulnerabilities Registry (reported by Omar Essam). Any regular-user JWT gets full admin-API access on `dim-admin-api.staging.fashion.cloud`: can list and read every user's Assistant chat history platform-wide, plus call destructive endpoints (`DELETE /sku/bulk-delete`, `DELETE /media/bulk-remove`, merge-rule mutations). Swagger docs are unauthenticated too. Due 2026-09-17. Unassigned — flapped through a few statuses same morning (Triage → Todo → Backlog → Triage) before settling back in Triage, unassigned. See `today.md`.

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
New.

---

```yaml
id: BDD-3259
title: "AW: Frage zu Artikelpreis (FD: 676723)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3259/aw-frage-zu-artikelpreis-fd-676723
```
New.

---

```yaml
id: BDD-3258
title: "Numbered material part after semicolon leaks into previous composition in `transformMaterial` (FD: 676738)"
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-14
url: https://linear.app/fashioncloud/issue/BDD-3258/numbered-material-part-after-semicolon-leaks-into-previous-composition
```
New.

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
New.

---

```yaml
id: BDD-3249
title: "error 403 bij downloaden foto's voor Bijnen (FD: 673023)"
priority: High
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-11
url: https://linear.app/fashioncloud/issue/BDD-3249/error-403-bij-downloaden-fotos-voor-bijnen-fd-673023
```
New. FD number (673023) is notably older than the ticket's Triage entry — likely a reopened/renewed report rather than a fresh issue.

---

```yaml
id: BDD-3246
title: "PIPE: Becosoft image issue - Kultivate (FD: 676295)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-10
url: https://linear.app/fashioncloud/issue/BDD-3246/pipe-becosoft-image-issue-kultivate-fd-676295
```
New.

---

```yaml
id: BDD-3245
title: Articles appear under two brands - Bestseller (FD: 676293)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-10
url: https://linear.app/fashioncloud/issue/BDD-3245/articles-appear-under-two-brands-bestseller-fd-676293
```
New.

---

```yaml
id: BDD-3244
title: "WG: Preise 5042 auf FC stimmen nicht - Nachricht (HTML) (FD: 676273)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-10
url: https://linear.app/fashioncloud/issue/BDD-3244/wg-preise-5042-auf-fc-stimmen-nicht-nachricht-html-fd-676273
```
New.

---

```yaml
id: BDD-3241
title: Stocks not correctly imported | Cavallaro (FD: 675804)
priority: Low
status: Triage
assignee: oleh.polishchuk@fashion.cloud
team: BDD
updated: 2026-09-10
url: https://linear.app/fashioncloud/issue/BDD-3241/stocks-not-correctly-imported-cavallaro-fd-675804
```
Unusual: carries an assignee already while still in Triage status. Not treated as unassigned in `support/open.md`. No change since last sync.

---

```yaml
id: BDD-3243
title: German FC Attribut name not correct (FD: 676209)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-10
url: https://linear.app/fashioncloud/issue/BDD-3243/german-fc-attribut-name-not-correct-fd-676209
```
New.

---

```yaml
id: BDD-3238
title: Produktbilder (FD: 676044)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-09
url: https://linear.app/fashioncloud/issue/BDD-3238/produktbilder-fd-676044
```
No change since last sync.

---

```yaml
id: BDD-3228
title: Removing model images - Fynch Hatton (FD: 675667)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-07
url: https://linear.app/fashioncloud/issue/BDD-3228/removing-model-images-fynch-hatton-fd-675667
```
No change since last sync.

---

```yaml
id: BDD-3109
title: Otto - problems due to inconsistent updatedSince timestamp in product API (FD: 673224)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-20
url: https://linear.app/fashioncloud/issue/BDD-3109/otto-problems-due-to-inconsistent-updatedsince-timestamp-in-product
```
updatedSince not guaranteed to bump on every change — Otto missed additional images with the same timestamp as the first.

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
Recurring UI issue — navigating to a brand's Content > Productdata bounces back to the home page, blocking downloads. Oldest item in Triage overall.
