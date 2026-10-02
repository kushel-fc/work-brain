# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

The queue went from 5 to 3, but not because he reviewed anything. **#2832 (blueSeven FTP fix) was closed unmerged 10-01 14:04 UTC**, superseded by dwiajik's #2846, which merged without naming him. **#2838 (release changeset) merged 14:36 UTC** with Chamindu36's approval only. No new individual asks this cycle. What's left: #2808 (four days, no reviews from anyone), and #1969 and #2514, which both still conflict.

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
Opened 09-28 14:53 UTC. It adds the missing `aws4` dependency for `MONGODB-AWS` auth in pruned job images and makes ONA extract startup failures visible outside Datadog. +414/-12 across 11 files. **Still no reviews from anyone, four days in**, and no push since 09-28. The blueSeven ONA run got through its data steps on 09-30 (per the now-closed #2832), so the Mongo extract may already work some other way. Worth asking alirezaMoazenFashion whether it's still needed before reviewing 400+ lines.

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
Opened 09-28 11:42 UTC. Closes BDD-3280. It moves eight configs to `image_source.credential_id` and drops the old key. **Still conflicts** and hasn't been rebased, so a review isn't worth doing yet. cinque_FEED2 is one of the eight, and it has now failed on `move_images_from_ftp_to_s3_job_sync` on every scheduled run 09-30 and 10-01 (four times). +52/-32 across 13 files.

```yaml
number: 2514
repo: product-service
title: "feat(llm-based-agent-setup): add mutations tool group for SKU reprocessing and mapping-rule updates"
author: dushansilva
state: open
draft: true
mergeable_state: conflicting
review_state: changes-requested
requested_reviewers: [brand-data-dev (team), irembbt, kushel-fc, dwiajik, julsjacinto]
updated: 2026-08-28
url: https://github.com/fashioncloud/product-service/pull/2514
```
Draft, already has Changes Requested from someone else, and still conflicts. Stale: 35 days untouched.
