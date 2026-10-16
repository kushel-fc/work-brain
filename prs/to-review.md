# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

**Three by name, one new.** New: dushansilva's #2960 (Willen mapping rules). #2940 (PDS replay worker) merged 10-15 11:56 UTC without his review. #2930 is three days old with BDD-3388 already Done.

```yaml
number: 2960
repo: product-service
title: "Willen brand migration mapping rules"
author: dushansilva
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [irembbt, kushel-fc]
updated: 2026-10-15
url: https://github.com/fashioncloud/product-service/pull/2960
```
Opened 10-15 11:49 UTC, +148/-15. Phase 1 mapping rules for the Willen `FEED` migration: 25 `searchColor` and 38 positional `careInstructions` rules, plus a local env example for the upsert helper. The upsert payload was generated but not run. Pipeline side (brand-data-pipeline#2057) merged 10-15 13:40 UTC, and #2059 turned Willen image sync off. Only CodeRabbit has reviewed (approved, then Changes Requested 13:26 UTC). Blocked on human review; he and irembbt are the two requested.

```yaml
number: 2930
repo: product-service
title: "Exclude BACKEND_DB from global certificate merge sources"
author: irembbt
state: open
mergeable_state: unknown
review_state: changes-requested
requested_reviewers: [kushel-fc]
updated: 2026-10-13
url: https://github.com/fashioncloud/product-service/pull/2930
```
Opened 10-13 09:37 UTC, +25/-0, no description, no activity since 10-13. It looked like the fix for BDD-3388 (Suri certificates kept in `manufacturerAttributes` because the merge takes the `backend_db` feed's data), but Irem closed BDD-3388 10-15 08:17 UTC with this still open. He is the only human reviewer requested. Worth asking Irem whether it's still needed before reviewing.

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
