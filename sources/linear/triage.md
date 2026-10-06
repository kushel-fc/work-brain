# Linear — Triage (raw)

Full raw Triage backlog for team BDD, sourced from https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. See `support/open.md` for the FD-referenced/support-shaped curated subset.

**10-06 sync:** 2 to 4, two new FD tickets both filed 10-05 ~12:05 UTC, both Low and unassigned: BDD-3349 (a support colleague's alchemists export fails with AccessDenied because the tool forces the brand-data-dev IAM role) and BDD-3350 (a retailer, Korona Store Samara, can't open product pages from an Android phone for about two months). BDD-3344 got an `updated` bump 10-05 14:58 UTC but is still Triage and unassigned, with no visible field change. BDD-3305 is unchanged.

```yaml
id: BDD-3350
title: "(FD: 679177)"
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-10-05
url: https://linear.app/fashioncloud/issue/BDD-3350/fd-679177
```
New 10-05. No real title. A retailer (Korona Store & Marc Cain Store Samara) says the product content pages for all their brands bounce back to the home page on an Android phone, for about two months. Desktop works. Reads like a frontend/mobile issue more than brand data. Support-shaped, see [`support/open.md`](../../support/open.md).

```yaml
id: BDD-3349
title: "Tool forcing brand-data-dev role causing AccessDenied error (FD: 679547)"
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-10-05
url: https://linear.app/fashioncloud/issue/BDD-3349/tool-forcing-brand-data-dev-role-causing-accessdenied-error-fd-679547
```
New 10-05. Inga Arutiunian's alchemists export fails with `sts:AssumeRole` AccessDenied on `role/brand-data-dev`. Core team found the tool forces the BDD role, which her SSO permission set can't assume. Support-shaped (internal requester), see [`support/open.md`](../../support/open.md).

```yaml
id: BDD-3344
title: "PIPE: Marc O Polo - data reprocessing (FD: 679215)"
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-10-05
url: https://linear.app/fashioncloud/issue/BDD-3344/pipe-marc-o-polo-data-reprocessing-fd-679215
```
Filed 10-02, four days in Triage. Büsra needs a large PRICAT reprocess for Marc O'Polo (two files, SP2027 and FW2026) after delivery date was added to the transformation. The self-serve tool only handles batches of 5K, so she's asking for help or a faster way. Support-shaped, see [`support/open.md`](../../support/open.md).

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
Unchanged since 09-24. Label is `feature-request`. Internal, already has an owner.
