# Support — open
FD-sourced/support-shaped tickets, by priority then age (oldest first within each tier). Sourced from the team BDD Triage view: https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. Full raw Triage list lives in [`sources/linear/triage.md`](../sources/linear/triage.md).

**Three open, all Medium, all unassigned.** Down from eight: BDD-3512, BDD-3513 (and new BDD-3515) were closed Done by Irem Bulut 10-22, BDD-3514 and BDD-3349 are In Progress with her, and BDD-3501 was Deployed 10-23. BDD-3357 (ftcCashmere): the credential fix has been in production since 10-20, but **ftcCashmere_FEED2 failed again 10-22 17:42 UTC** (12 asset failures at `download_images`/`extract`, after about two quiet days), so the fix did not fully hold; see the [Dagster log](../dagster-alerts/log.md). Nobody has commented on the ticket.

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
Filed 10-07 13:33 UTC. Someone working on FTC Cashmere images: PIPE gets 403 Forbidden on `shop.ftc-cashmere.com` image URLs that open fine in a browser. ftcCashmere_FEED2 has failed eleven times since (most recently 10-22 17:42 UTC), marked `recurring` in the [Dagster log](../dagster-alerts/log.md). Aji traced it to a credential not found in the feed's `config.json` (10-19). brand-data-pipeline#2069 changed the credential ID and is in production since 10-20 07:59 UTC; after about two quiet days the feed failed again 10-22 17:42 UTC, so the credential fix alone didn't settle it. Whether the 403 on image URLs is still the cause isn't confirmed.

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

