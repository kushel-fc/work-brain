# Support — open

FD-sourced/support-shaped tickets, by priority then age (oldest first within each tier). Sourced from the team BDD Triage view: https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. Full raw Triage list lives in [`sources/linear/triage.md`](../sources/linear/triage.md).

**Five open, all unassigned, no High.** Two new Medium FD tickets: BDD-3420 (IOS by Maica prices) and BDD-3457 (Obermeier EDI). BDD-3388 (Suri certificates) went Done 10-15 08:17 UTC with irembbt's product-service#2930 still open and unreviewed by him, see [`recently-closed.md`](recently-closed.md). BDD-3410 (Brax visibility flags) is still In Progress with Irem. BDD-3357 (ftcCashmere 403) is eight days old and ftcCashmere_FEED2 failed a sixth time 10-14. BDD-3305 is still an internal feature request Dushan owns, not listed here.

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
Filed 10-07 13:33 UTC. Someone working on FTC Cashmere images: PIPE gets 403 Forbidden on `shop.ftc-cashmere.com` image URLs that open fine in a browser. ftcCashmere_FEED2 has failed five times since (10-08, 10-09, 10-12 and 10-13 evening, 12 assets each; 10-11 morning, `download_images` exit 1 twice), now marked `recurring` in the [Dagster log](../dagster-alerts/log.md). Likely the same cause, not confirmed.

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
id: BDD-3420
title: "IOS by Maica: Prices are missing (FD: 680730)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-10-14
url: https://linear.app/fashioncloud/issue/BDD-3420
```
Filed 10-14 09:39 UTC by Torben (brand `5f75cea4c29675001065333d`). Prices missing on many styles; the brand uploaded an extra PRICAT with prices that still hasn't been processed. Torben found the EANs with prices in the PRICAT (example 4065986020028).

```yaml
id: BDD-3457
title: "RE: Bitte um EDI-Nachrichtenaustausch - Kunde 121338 Obermeier (FD: 678927)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-10-15
url: https://linear.app/fashioncloud/issue/BDD-3457
```
Filed 10-15 07:46 UTC (in German). The body is FC's own reply to retailer Obermeier: classic EDI is now connected, ORDRSP and PRICAT for open orders were sent, and SLSRPT/INVRPT need something further from the retailer (truncated). What BDD is being asked to do isn't clear from the visible text.

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
