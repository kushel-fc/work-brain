# Linear — Triage backlog (team BDD)

Full raw Triage view (team BDD) — https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. The FD-referenced/support-shaped subset of this list is curated into [`support/open.md`](../../support/open.md).

**Major change this cycle:** the backlog dropped from 23 items to 6. A bulk operation on 2026-09-04 ~13:45 UTC assigned roughly a dozen previously-unassigned tickets straight to Kushel (now in [`sources/linear/my-issues.md`](my-issues.md), all at "Ready To Start"). See `_meta/sync-log.md` for the full list.

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
New — created and updated same day.

---

```yaml
id: BDD-3227
title: Related products (FD: 675420)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-04
url: https://linear.app/fashioncloud/issue/BDD-3227/related-products-fd-675420
```
New.

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
PIPE silently mis-parses when the configured delimiter doesn't match the file (example: Rosner, `,` configured vs `;` actual). Untouched — did not get swept into the 09-04 bulk assignment despite being older than several items that did.

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
updatedSince not guaranteed to bump on every change — Otto missed additional images with the same timestamp as the first. Untouched by the bulk assignment.

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
Recurring UI issue — navigating to a brand's Content > Productdata bounces back to the home page, blocking downloads. Untouched by the bulk assignment; now the oldest item in Triage.

---

```yaml
id: BDD-2497
title: Delete pricelist fails in development (FD: 627912)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-07-08
url: https://linear.app/fashioncloud/issue/BDD-2497/delete-pricelist-fails-in-development-fd-627912
```
Pricelist deletion fails in the development environment after successful create + add-price calls. Untouched by the bulk assignment.
