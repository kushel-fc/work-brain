# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

**Three, from two to three.** product-service#3035 merged 10-22 09:20 UTC (approved by CodeRabbit and others without him) and left the queue. New: the routine staging release #3058 and Chamindu36's CodeQL fix #3045 name him. The dependabot bump is unchanged.

```yaml
number: 3045
repo: product-service
title: "Potential fix for code scanning alert no. 104: Database query built from user-controlled sources"
author: Chamindu36
state: open
mergeable_state: unknown
review_state: changes-requested
requested_reviewers: [abubakarwase, kushel-fc]
updated: 2026-10-22
url: https://github.com/fashioncloud/product-service/pull/3045
```
Automated code-scanning fix, opened under Chamindu36's name. A review is already in changes-requested state; no human has approved. Several sibling CodeQL fixes (#3043, #3044, #3053) merged 10-22.

```yaml
number: 3058
repo: product-service
title: "Staging Release - 2026-10-23"
author: app/github-actions
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [dwiajik, kushel-fc]
updated: 2026-10-23
url: https://github.com/fashioncloud/product-service/pull/3058
```
Routine staging release. Names him alongside dwiajik.

```yaml
number: 2019
repo: brand-data-pipeline
title: "Bump urllib3 from 2.7.0 to 2.8.0 in /brand-migration in the uv group across 1 directory"
author: app/dependabot
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev, kushel-fc, alirezaMoazenFashion]
updated: 2026-10-07
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2019
```
Dependabot patch bump, opened 10-07 15:38 UTC. Unchanged since. Blocked on review.

Outside the two tracked repos, `gh` still lists dependabot bumps on data-enrichment-service, price-importer and others. Not tracked here.
