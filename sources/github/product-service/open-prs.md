# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Down to 13 (was 14). Two new: **#2767 (Kushel's own, 3/4 of the Slice 3.2 stack)** and #2764 (dwiajik, collect job for external image sources, BDD-3273). Three merged 09-23: **#2754 (his 2/4, 15:46 UTC)**, #2762 (studioAnneloes) and #2746 (otto-image-upload Phase 2), see [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). A first read showed several `unknown` mergeable states (GitHub recomputing after the merges); a second read a minute later resolved them all, so the values below are the resolved ones. #1737 (not his) still conflicts.

```yaml
number: 2767
title: "3/4: Add PCS CSV generation module"
author: kushel-fc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), julsjacinto, alirezaMoazenFashion]
updated: 2026-09-23
url: https://github.com/fashioncloud/product-service/pull/2767
```
**His own.** 3/4 of the Video Delivery Slice 3.2 stack (BDD-3205/BDD-3223), opened 09-23 18:04 UTC against `development`. CodeRabbit requested changes at 18:14 UTC; he replied to six threads around 19:51 UTC and CodeRabbit approved at 20:00 UTC. No human reviews yet. 9 checks pass, 1 skipped. `mergeStateStatus: BLOCKED`, waiting on human review. See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 2764
title: "feat(collect-images): add the collect job for external image sources"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [brand-data-dev (team), irembbt, julsjacinto]
updated: 2026-09-23
url: https://github.com/fashioncloud/product-service/pull/2764
```
New, not his. BDD-3273 (product-service half). The Changes Requested so far is CodeRabbit's only. Its pipeline companion brand-data-pipeline#1945 does name Kushel and says this one must merge first.

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

```yaml
number: 2738
title: "BDD-3277 PoC: relay PDS style stream into per-consumer SQS queues"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [abubakarwase, abirprantofc, physicalattraction]
updated: 2026-09-23
url: https://github.com/fashioncloud/product-service/pull/2738
```
Not his. Requested reviewers now [abubakarwase, abirprantofc, physicalattraction].

```yaml
number: 2694
title: blueSeven mapping rules
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, julsjacinto]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2694
```
Not his. No change.

```yaml
number: 2693
title: Add blueSeven FEED2 mapping rules
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, abirprantofc]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2693
```
Not his. No change.

```yaml
number: 2692
title: fynchHatton brand migration
author: abirprantofc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, julsjacinto]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2692
```
Not his. No change.

```yaml
number: 2690
title: milestone brand migration
author: abirprantofc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, alirezaMoazenFashion]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2690
```
Not his. No change.

```yaml
number: 2686
title: polaris brand migration mappings
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, abirprantofc]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2686
```
Not his. No change.

```yaml
number: 2684
title: dorisStreich - FEED - INTEX mapping rules
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, abubakarwase]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2684
```
Not his. No change.

```yaml
number: 2683
title: swing brand migration
author: abirprantofc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), kushel-fc, alirezaMoazenFashion]
updated: 2026-09-23
url: https://github.com/fashioncloud/product-service/pull/2683
```
Individually his to review, no reviews yet from anyone (only Spacelift bot comments, which bumped `updated` to today). Companion brand-data-pipeline#1871 merged 09-23 without him. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2514
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
Individually his to review. Draft, already Changes Requested from someone else, now 26 days unchanged. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 1737
title: add histogram endpoint to pdo
author: irembbt
state: open
mergeable_state: conflicting
review_state: awaiting-first-review
requested_reviewers: [julsjacinto]
updated: 2026-07-07
url: https://github.com/fashioncloud/product-service/pull/1737
```
Not his. No change.
