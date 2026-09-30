# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

The queue went from 3 to 4. One new individual ask: **product-service#2826** (Chamindu36, package version management and publishing scripts), opened 09-30 07:59 UTC. **brand-data-pipeline#1969 newly conflicts**, so dwiajik will need to rebase before it can merge. #2808 has now gone two days with no review from anyone. Not in the queue but worth knowing: PDS SDK stage 3/4 (#2813) came out of draft and merged 09-30 without being sent to him.

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
Opened 09-28 14:53 UTC. It adds the missing `aws4` dependency for `MONGODB-AWS` auth in pruned job images and makes ONA extract startup failures visible outside Datadog. BlueSeven's migration is blocked at the Phase 3 extract until this lands, so it's the one blocking someone else. +414/-12 across 11 files. **Still no reviews from anyone.**

```yaml
number: 2826
repo: product-service
title: Add scripts for package version management and publishing workflows
author: Chamindu36
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), julsjacinto, kushel-fc]
updated: 2026-09-30
url: https://github.com/fashioncloud/product-service/pull/2826
```
New 09-30 07:59 UTC. Tooling for versioning and publishing the repo's packages, arriving the same morning as the first npm publish of `product-data-schema` (#2822) and its CI fix (#2827). +588/-108 across 6 files. CodeRabbit requested changes and then approved. No human review yet.

```yaml
number: 1969
repo: brand-data-pipeline
title: "refactor(image-source): retire image_sync.credential_id"
author: dwiajik
state: open
mergeable_state: conflicting
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, kushel-fc]
updated: 2026-09-28
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1969
```
Opened 09-28 11:42 UTC. Closes BDD-3280. It moves eight configs to `image_source.credential_id` and drops the old key. **Newly conflicts** after the 09-29 config merges, so the author needs to rebase first. cinque_FEED2 is one of the eight. cinque was quiet this cycle, but it has failed on `download_images` twice (09-27, 09-28). +52/-32 across 13 files.

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
Draft, and it already has Changes Requested from someone else. Stale: 33 days untouched.
