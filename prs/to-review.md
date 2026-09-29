# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

The queue went from 5 to 3. He cleared most of it on 09-28/09-29: **he approved product-service#2785 (SDK stage 1/4), #2801 (schumacher + Polaris on PIPE) and #2798 (SDK stage 2/4), and all three merged.** #2792 (blueSeven rules) and brand-data-pipeline#1878 (Polaris iteration 1) closed without merging. He also approved both staging releases (product-service#2809, brand-data-pipeline#1972). Two new individual asks: **product-service#2808** (ONA Mongo AWS auth fix) and **brand-data-pipeline#1969** (retire `image_sync.credential_id`).

```yaml
number: 2808
repo: product-service
title: "fix(extract): restore Mongo AWS auth and expose ONA startup failures"
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, kushel-fc]
updated: 2026-09-28
url: https://github.com/fashioncloud/product-service/pull/2808
```
New 09-28 14:53 UTC. It adds the missing `aws4` dependency for `MONGODB-AWS` auth in pruned job images and makes ONA extract startup failures visible outside Datadog. BlueSeven's migration is blocked at the Phase 3 extract until this lands, so it's the one blocking someone else. +414/-12 across 11 files. No reviews yet.

```yaml
number: 1969
repo: brand-data-pipeline
title: "refactor(image-source): retire image_sync.credential_id"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, kushel-fc]
updated: 2026-09-28
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1969
```
New 09-28 11:42 UTC. Closes BDD-3280. It moves eight configs to `image_source.credential_id` and drops the old key. cinque_FEED2 is one of the eight, and its `download_images` failed again 09-28 23:30 UTC, so check that this PR doesn't change cinque's credential path in a way that matters for that failure. Small change: +52/-32 across 13 files.

```yaml
number: 2514
repo: product-service
title: "feat(llm-based-agent-setup): add mutations tool group for SKU reprocessing and mapping-rule updates"
author: dushansilva
state: open
draft: true
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [brand-data-dev (team), irembbt, kushel-fc, dwiajik, julsjacinto]
updated: 2026-08-28
url: https://github.com/fashioncloud/product-service/pull/2514
```
Draft, and it already has Changes Requested from someone else. Stale: 32 days untouched.
