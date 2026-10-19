# Support — open

FD-sourced/support-shaped tickets, by priority then age (oldest first within each tier). Sourced from the team BDD Triage view: https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. Full raw Triage list lives in [`sources/linear/triage.md`](../sources/linear/triage.md).

**Four open, all unassigned, no High.** Nothing new and nothing closed since 10-16. BDD-3357 (ftcCashmere) is twelve days old. Aji said 10-19 that ftcCashmere_FEED2's failures are a missing credential in its `config.json`, and marianabassi's brand-data-pipeline#2069 changes the credential ID (approved, not merged). That explains the feed failures. Whether it also explains the ticket's 403 on image URLs isn't confirmed. BDD-3305 is still an internal feature request Dushan owns, not listed here.

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
Filed 10-07 13:33 UTC. Someone working on FTC Cashmere images: PIPE gets 403 Forbidden on `shop.ftc-cashmere.com` image URLs that open fine in a browser. ftcCashmere_FEED2 has failed nine times since (most recently 10-16 and 10-18), marked `recurring` in the [Dagster log](../dagster-alerts/log.md). Aji traced it to a credential not found in the feed's `config.json` (10-19), and brand-data-pipeline#2069 changes the credential ID. Whether that also fixes this 403 isn't confirmed.

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
