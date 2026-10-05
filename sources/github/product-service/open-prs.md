# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

9 to 6. Four left: **#2851 (FTP command timeouts, the gabor fix) merged 10-02 10:08 UTC** and shipped to production in release #2854 (merged 10-05 07:37 UTC). #2850 (PDS stream relay) merged 10-02 13:56 UTC. #2827 (CI tarball path) was closed unmerged 10-02 10:38 UTC. **#2514 (on his review list) was closed unmerged 10-02 14:40 UTC.** One new: #2857, the 10-05 production release, which he approved 08:35 UTC. Opened and merged inside the window: #2852 (PDS claim-check payloads to a BDD-owned bucket, BDD-3340), #2855 (pds-stream-relay bestseller filter test), and the 10-02 staging/production and 10-05 staging releases (#2853, #2854, #2856). None of those were his. See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). The `gh pr list` read showed every non-release PR as `UNKNOWN`, but a second read had all six mergeable.

```yaml
number: 2857
title: "Production Release - 2026-10-05"
author: app/github-actions
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [irembbt, julsjacinto]
updated: 2026-10-05
url: https://github.com/fashioncloud/product-service/pull/2857
```
New 10-05 08:35 UTC, triggered by dwiajik. Carries only #2855 (pds-stream-relay test filter for the bestseller org) plus the staging release merge. **Kushel approved it 08:35 UTC.** Not merged yet. brand-data-pipeline had nothing to release.

```yaml
number: 2845
title: "Add helper script to pull PDS stream data via the SQS consumer SDK"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-10-01
url: https://github.com/fashioncloud/product-service/pull/2845
```
Opened 10-01 11:40 UTC, draft. +486/-0. A local helper for reading a consumer's SQS queue with the PDS SDK. Not his. No change.

```yaml
number: 2840
title: "BDD-3330 Use the shared schema in the publisher and the payload builders"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-10-01
url: https://github.com/fashioncloud/product-service/pull/2840
```
Opened 09-30 13:55 UTC, draft. Not his. No change.

```yaml
number: 2824
title: "BDD-3328 Sync product-data-schema with publishing-job"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: []
updated: 2026-10-01
url: https://github.com/fashioncloud/product-service/pull/2824
```
Draft. The Changes Requested is from CodeRabbit only. Not his. No change.

```yaml
number: 2808
title: "fix(extract): restore Mongo AWS auth and expose ONA startup failures"
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, kushel-fc]
updated: 2026-09-28
url: https://github.com/fashioncloud/product-service/pull/2808
```
**Names Kushel individually.** Still no reviews from anyone, seven days in, and no push since 09-28. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2744
title: "fix(ona-db-migration): fail closed on environment, verify AWS account before publish"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-18
url: https://github.com/fashioncloud/product-service/pull/2744
```
Not his. No change.

