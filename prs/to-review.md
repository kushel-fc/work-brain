# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

The queue went from 4 to 5. **He approved and cleared #2826** (merged 09-30 09:47 UTC) and approved PDS SDK stage 4/4 (#2829) this morning, which took him off its requested list. Two new individual asks: **product-service#2832** (the FTP connection fix blocking blueSeven) and **product-service#2838** (product-data-schema release changeset). #2808 has now gone three days with no review from anyone. #1969 still conflicts, and #2514 now conflicts too.

```yaml
number: 2832
repo: product-service
title: "fix(image-downloader): close FTP connections and bound transfers"
author: FCMachineUser
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [kushel-fc, abirprantofc]
updated: 2026-09-30
url: https://github.com/fashioncloud/product-service/pull/2832
```
New 09-30 11:43 UTC. blueSeven's production ONA seed (run d1835521) finished its data steps, but image download stalled after 496 downloads with FTP data-connection timeouts. The old downloader opened a new pooled FTP connection per image and never closed it. This gives each transfer its own client that's always closed, using `basic-ftp`. The PR calls connection exhaustion "a supported hypothesis", not a proven cause. +442/-13 across 9 files. Chamindu36 approved 14:21 UTC. **blueSeven's migration stays blocked at Phase 3 Step 1 until this lands**, so along with #2808 it's the one blocking someone else.

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
Opened 09-28 14:53 UTC. It adds the missing `aws4` dependency for `MONGODB-AWS` auth in pruned job images and makes ONA extract startup failures visible outside Datadog. +414/-12 across 11 files. **Still no reviews from anyone, three days in.** The blueSeven ONA run did get through its data steps on 09-30 (per #2832), so the Mongo extract may already work some other way. Worth asking alirezaMoazenFashion whether this is still needed.

```yaml
number: 2838
repo: product-service
title: "chore: release @fashioncloud/product-data-schema"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, kushel-fc]
updated: 2026-09-30
url: https://github.com/fashioncloud/product-service/pull/2838
```
New 09-30 13:40 UTC. A one-file changeset (+5) that bumps `@fashioncloud/product-data-schema` to 1.0.2 on the next production release. The description says the first publish is still blocked: npm trusted publishing (OIDC) can only be set up on a package that already exists. A quick review.

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
Opened 09-28 11:42 UTC. Closes BDD-3280. It moves eight configs to `image_source.credential_id` and drops the old key. **Still conflicts** and hasn't been rebased, so a review isn't worth doing yet. cinque_FEED2 is one of the eight, and it failed on `move_images_from_ftp_to_s3_job_sync` twice on 09-30. +52/-32 across 13 files.

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
Draft, already has Changes Requested from someone else, and **now conflicts**. Stale: 34 days untouched.
