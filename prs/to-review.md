# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

Down from 3 to 2, again not because he reviewed anything. **#2514 (stale LLM-agent draft) was closed unmerged 10-02 14:40 UTC.** **#1969 was rebased 10-02 13:57 UTC and is mergeable now**, so it's reviewable for the first time since 09-30. #2808 is seven days without any review. He did approve the 10-05 production release #2857 (08:35 UTC), but that was a release PR, not an individual ask.

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
Opened 09-28 14:53 UTC. It adds the missing `aws4` dependency for `MONGODB-AWS` auth in pruned job images and makes ONA extract startup failures visible outside Datadog. +414/-12 across 11 files. **Still no reviews from anyone, seven days in**, and no push since 09-28. The blueSeven ONA run got through its data steps on 09-30 (per the now-closed #2832), so the Mongo extract may already work some other way. Worth asking alirezaMoazenFashion whether it's still needed before reviewing 400+ lines.

```yaml
number: 1969
repo: brand-data-pipeline
title: "refactor(image-source): retire image_sync.credential_id"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, kushel-fc]
updated: 2026-10-02
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1969
```
Opened 09-28 11:42 UTC. Closes BDD-3280. It moves eight configs to `image_source.credential_id` and drops the old key. **Rebased 10-02 13:57 UTC and mergeable now**, still no reviews from anyone. +52/-32 across 13 files. The cinque_FEED2 move-images failures that made it look risky were a missing `filename_pattern` (fixed by Aji 10-02), not this PR. This is now the most reviewable item on his list.
