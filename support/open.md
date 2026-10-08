# Support — open

FD-sourced/support-shaped tickets, by priority then age (oldest first within each tier). Sourced from the team BDD Triage view: https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. Full raw Triage list lives in [`sources/linear/triage.md`](../sources/linear/triage.md).

**Five open, all unassigned. Two are High.** New since last sync: BDD-3358 and BDD-3359 (both High, filed 10-07 evening by Hakan Soylu, both about the image reprocessing tool on PME Legend), BDD-3357 (Medium, PIPE image 403) and BDD-3360 (Medium, Högl article deletion). Picked up and moved to In Review 10-07, so off this list but not closed: BDD-3351 (abubakarwase), BDD-3344 and BDD-3350 (Irem Bulut). BDD-3349 is unchanged. BDD-3305 is still an internal feature request Dushan owns, not listed here.

## High

```yaml
id: BDD-3358
title: "Unable to trigger image reprocessing PME Legend (FD: 679888)"
priority: High
status: Triage
assignee: unassigned
team: BDD
updated: 2026-10-07
url: https://linear.app/fashioncloud/issue/BDD-3358/unable-to-trigger-image-reprocessing-pme-legend-fd-679888
```
Filed 10-07 19:39 UTC by Hakan Soylu. The reprocessing tool errors when he submits Image URLs (tried 20, has about 1000 to do). Example source URLs are on `jbcdngate.azurewebsites.net` with a `code=` query parameter. High because brands and retailers have been complaining about missing images for days or weeks.

```yaml
id: BDD-3359
title: "Image reprocessing tooling shows no failed images for NOS (FD: 679889)"
priority: High
status: Triage
assignee: unassigned
team: BDD
updated: 2026-10-07
url: https://linear.app/fashioncloud/issue/BDD-3359/image-reprocessing-tooling-shows-no-failed-images-for-nos-fd-679889
```
Filed 10-07 19:48 UTC by Hakan Soylu. For pmeLegend FEED with "Nos" selected, the tool shows no failed images to reprocess, yet NOS articles have URLs still "Unprocessed". He links them to a run that finalized after fetching only 15. Same brand as BDD-3358, so likely worth handling together.

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
Filed 10-07 13:33 UTC. PIPE image processing gets 403 Forbidden. Description not pulled this sync.

```yaml
id: BDD-3360
title: "Högl - delete articles (FD: 679913)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-10-08
url: https://linear.app/fashioncloud/issue/BDD-3360/hogl-delete-articles-fd-679913
```
Filed 10-08 06:19 UTC. Article deletion request for Högl. Description not pulled this sync.

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
