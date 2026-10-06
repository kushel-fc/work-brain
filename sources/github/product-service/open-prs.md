# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

6 to 3. **#2808 (on his review list) was closed unmerged 10-05 10:02 UTC** by alirezaMoazenFashion, with no reviews. #2857 (10-05 production release, which he approved) merged 08:48 UTC. #2840 (BDD-3330, shared schema in the publisher) came out of draft and merged 10:51 UTC. No new open PRs. Opened and closed inside the window, all dwiajik's PDS-schema work: #2859 and #2860 (BDD-3330, merged), #2861 (PCS as first PDS queue consumer, BDD-3284, merged 10-06 08:29 UTC) and #2858 (a revert, closed unmerged). See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). None of the three left names him.

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
Opened 10-01 11:40 UTC, draft. +486/-0. A local helper for reading a consumer's SQS queue with the PDS SDK. Not his. No change this cycle.

```yaml
number: 2824
title: "Pin the product-data-schema to the zod schemas BDD-3328"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [irembbt, alirezaMoazenFashion]
updated: 2026-10-06
url: https://github.com/fashioncloud/product-service/pull/2824
```
Out of draft and retitled this cycle, with a push 10-06 08:30 UTC and irembbt and alirezaMoazenFashion requested. The Changes Requested is still CodeRabbit's from 09-30. Chamindu36 commented 10-06 08:38 UTC. Not his.

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
Not his. No change this cycle.
