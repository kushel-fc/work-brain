# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

**Six by name, three new.** New: Chamindu36's #2983 (AI origin for product images), and dwiajik's deletion-publishing pair #2977 (product-service) and brand-data-pipeline#2067. Chamindu36 approved both of dwiajik's PRs, so they need one more human. #2960 and #2930 are still waiting on him (four and six days). #2930 is mergeable, and its ticket is already Done.

```yaml
number: 2977
repo: product-service
title: "BDD-3479 T3.3: publish the deletion events and fail loudly"
author: dwiajik
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [irembbt, kushel-fc]
updated: 2026-10-19
url: https://github.com/fashioncloud/product-service/pull/2977
```
Opened 10-16 11:23 UTC, +617/-85. The deletion publishing job publishes its T3.2 events to the PD streams. One publisher per stream behind `ENABLE_<LEVEL>_STREAM_PUBLISHING`, deletes only behind `ENABLE_DELETE_PUBLISHING`, and any publish failure fails the run. The description asks reviewers whether the delete flag should switch off the whole run instead. It was stacked on #2971, which merged 10-16, so it needs retargeting to `development`. Chamindu36 approved 08:08 UTC 10-19 after six comments. CodeRabbit's latest is Changes Requested (08:07 UTC), and dwiajik replied at 08:39 and 08:43 UTC. He and irembbt are the requested humans.

```yaml
number: 2067
repo: brand-data-pipeline
title: "BDD-3469 T4.1: Dagster job for deletion publishing"
author: dwiajik
state: open
mergeable_state: blocked
review_state: approved
requested_reviewers: [irembbt, kushel-fc]
updated: 2026-10-19
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2067
```
Opened 10-16 14:29 UTC, +306/-0. Adds `deletion_publishing_job` to Dagster on the `analytics_job` pattern, with `run_id` passed to the task as `RUN_ID`. Chamindu36 approved 10-19 08:12 UTC. Companion of #2977 and the Terraform PR #2980 (approved, doesn't name him).

```yaml
number: 2983
repo: product-service
title: "Add AI origin handling for product images"
author: Chamindu36
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev, dwiajik, kushel-fc]
updated: 2026-10-19
url: https://github.com/fashioncloud/product-service/pull/2983
```
Opened 10-19 08:32 UTC, +210/-2, no description. All changes are in `packages/internal/models/src/productImage/` (`aiOrigin.ts`, spec, test helpers, model and interface changes). Likely BDD-3484 (T2 Models: `metadata.aiProvenance` and `resolveIsAIImage`, High, In Review with Chamindu). CodeRabbit requested changes then approved within a minute. No human review yet.

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
Opened 10-15 11:49 UTC, +148/-15, no activity since. Phase 1 mapping rules for the Willen `FEED` migration: 25 `searchColor` and 38 positional `careInstructions` rules, plus a local env example for the upsert helper. The pipeline side (brand-data-pipeline#2057) merged 10-15. Only CodeRabbit has reviewed (Changes Requested). Mergeable now, blocked on human review.

```yaml
number: 2930
repo: product-service
title: "Exclude BACKEND_DB from global certificate merge sources"
author: irembbt
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [kushel-fc]
updated: 2026-10-13
url: https://github.com/fashioncloud/product-service/pull/2930
```
Opened 10-13 09:37 UTC, +25/-0, no description, no activity since. It looked like the BDD-3388 fix, but Irem closed BDD-3388 10-15 with this still open. He is the only human reviewer. Worth asking Irem whether it's still needed.

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
