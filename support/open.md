# Support — open

FD-sourced/support-shaped tickets, by priority then age (oldest first within each tier). Sourced from the team BDD Triage view: https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. Full raw Triage list lives in [`sources/linear/triage.md`](../sources/linear/triage.md).

**Five open, all unassigned, no High.** Two new Mediums: BDD-3388 (certificate removal blocked by `backend_db` in the merge step) and BDD-3405 (Ballin GTIN deletion). BDD-3357 (ftcCashmere 403) is now five days old while its Dagster failures keep recurring. Irem Bulut closed both High PME Legend tickets (BDD-3358, BDD-3359) and BDD-3362 (Bestseller reprocess), see [`recently-closed.md`](recently-closed.md). BDD-3305 is still an internal feature request Dushan owns, not listed here.

## Medium

```yaml
id: BDD-3357
title: "Error 403 - forbidden when PIPE process image (FD: 679834)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-10-07
url: https://linear.app/fashioncloud/issue/BDD-3357/error-403-forbidden-when-pipe-process-image-fd-679834
```
Filed 10-07 13:33 UTC. Someone working on FTC Cashmere images: PIPE gets 403 Forbidden on `shop.ftc-cashmere.com` image URLs that open fine in a browser. ftcCashmere_FEED2 has failed three times since (10-08 and 10-09 evening, 12 assets each; 10-11 morning, `download_images` exit 1 twice), now marked `recurring` in the [Dagster log](../dagster-alerts/log.md). Likely the same cause, not confirmed.

```yaml
id: BDD-3386
title: "Preise nicht aktuell (FD: 679995)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-10-08
url: https://linear.app/fashioncloud/issue/BDD-3386/preise-nicht-aktuell-fd-679995
```
Filed 10-08 12:21 UTC by Hatico's IT (in German). Prices still carry 40% discounts that were turned off 09-30. The brand checked the FC archive and says its exported price list has had no discounts since 10-01. Asks for the price import to be checked.

```yaml
id: BDD-3388
title: "Issue on removing SA certificate information (FD: 680121)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-10-09
url: https://linear.app/fashioncloud/issue/BDD-3388
```
Filed 10-09 09:46 UTC by Mariana Bassi da Silva. A brand (meierLederwaren / Suri, example GTIN 8720638924128) wants its sustainability certificates removed. Reprocessing FEED clears them from `fcKeys` and `manufacturerAttributes` in transformedskus, but after merge they're gone from `fcKeys` and still in `manufacturerAttributes`, because the merge still takes the `backend_db` feed's data. Asks for `backend_db` to be dropped from the merge.

```yaml
id: BDD-3405
title: "Delete gtins for ballin (FD: 680460)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-10-12
url: https://linear.app/fashioncloud/issue/BDD-3405
```
Filed 10-12 08:10 UTC. Delete a list of Ballin GTINs for F/W 2026 (brand id `65bcbe5472d06b0012d10de0`). Routine deletion.

## Low

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
Filed 10-05 12:05 UTC by Inga Arutiunian. Running the alchemists export as `fc-user-production` fails: the tool assumes `arn:aws:iam::094238058910:role/brand-data-dev`, and her `dim-permission-set` SSO role isn't allowed to. Core team already narrowed it to the tool forcing the BDD role. Either the tool stops forcing it or her permission set gets the assume-role grant.
