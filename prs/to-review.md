# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

**Six to two.** He approved Chamindu36's #2983 (10-19 09:28 UTC, merged a minute later). dwiajik's deletion-publishing pair, product-service#2977 and brand-data-pipeline#2067, merged 10-19 10:05 UTC on Chamindu36's approval, without his review. irembbt closed #2930 unmerged 10-20 08:09 UTC. Left: #2960 (five days, no human review) and the dependabot bump.

```yaml
number: 2960
repo: product-service
title: "Willen brand migration mapping rules"
author: dushansilva
state: open
mergeable_state: unknown
review_state: changes-requested
requested_reviewers: [brand-data-dev, irembbt, kushel-fc]
updated: 2026-10-15
url: https://github.com/fashioncloud/product-service/pull/2960
```
Opened 10-15 11:49 UTC, +148/-15, no activity since. Phase 1 mapping rules for the Willen `FEED` migration: 25 `searchColor` and 38 positional `careInstructions` rules, plus a local env example for the upsert helper. The pipeline side (brand-data-pipeline#2057) merged 10-15, and dushansilva merged a follow-up there 10-19 (#2072, keep Willen material parts separate in `fcKeys.material`). Only CodeRabbit has reviewed (Changes Requested). `gh` reads `unknown` this cycle; last known state was mergeable, blocked on review.

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
