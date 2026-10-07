# Support — open

FD-sourced/support-shaped tickets, by priority then age (oldest first within each tier). Sourced from the team BDD Triage view: https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. Full raw Triage list lives in [`sources/linear/triage.md`](../sources/linear/triage.md).

**Four open, all unassigned.** New 10-07: BDD-3351 (Medium, Zalando PSERR_62 image download failures on signed CDN URLs). The three Low ones from last sync are unchanged: BDD-3344 (Marc O'Polo PRICAT reprocessing, five days untouched), BDD-3349 (alchemists export AccessDenied) and BDD-3350 (retailer can't open product pages on Android). BDD-3305 is still in Triage but it's an internal feature request Dushan owns, so it isn't listed here.

## High

_None._

## Medium

```yaml
id: BDD-3351
title: "Zalando PSERR_62 image download failures: check URL encoding of PDS image links (CDN vs. PDS/BI wrapper) (FD: 679762)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-10-07
url: https://linear.app/fashioncloud/issue/BDD-3351/zalando-pserr-62-image-download-failures-check-url-encoding-of-pds
```
Filed 10-07 07:58 UTC by Fernand Ramat. Zalando can't download some product images we send through the PDS/CDN and gets PSERR_62. Their tech team thinks the query parameters on our signed CloudFront URLs (`Expires`, `Key-Pair-Id`, and a `Signature` containing `~`) count as unsafe under RFC 1738. They ask that URLs avoid `$`, `&` and `%` and use only one `?`, and want to know whether a firewall or rate limit is in the way and whether there's versioning so they can retry. The title asks BDD to compare the raw CDN link with the PDS/BI wrapper link. Note `&` between query parameters is unavoidable in a signed URL, so the answer may be a different URL form rather than an encoding fix.

## Low

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
Filed 10-02 09:25 UTC by Büsra Kocakafa. Delivery date was added to Marc O'Polo's PRICAT transformation, so a lot of existing data needs reprocessing (two attached files, `mop_sp2027.csv` and `mop_fw2026.csv`). The self-serve reprocessing only takes batches of 5K, so she's asking BDD to run it or suggest a faster way. Still unassigned four days in. Its `updated` time moved 10-05 14:58 UTC with no visible field change.

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
Filed 10-05 12:07 UTC (via Kay Pod). A retailer (Korona Store & Marc Cain Store Samara) can't reach product pages, for every brand, from an Android phone for about two months. It always sends them back to home. Desktop works. Probably not BDD's code, may need rerouting to whoever owns the retailer frontend.
