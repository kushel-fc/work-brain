# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Down to 14 (was 16). Two new: **#2754 (Kushel's own, 2/4 of the Video Delivery Slice 3.2 CSV-generation stack)** and #2762 (studioAnneloes @work enable, marianabassi). Four dropped off: #2748 (merged 09-22 12:38 UTC, the one he approved last cycle), #2737 (merged), #2750 (staging release, merged), #2681 (schumacher mapping rules, closed unmerged) - see [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). He also opened and merged #2753 (1/4, PCS S3 bucket infra) and closed #2752 (the pre-split parent) inside the same window; both archived. All mergeable states resolved to a real read this cycle (no `unknown`s) - #1737 (not his) still reads a real conflict (`CONFLICTING`/`DIRTY`), confirming last cycle's read.

```yaml
number: 2762
title: "studioAnneloes: enable @work by studioAnneloes"
author: marianabassi
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, julsjacinto]
updated: 2026-09-23
url: https://github.com/fashioncloud/product-service/pull/2762
```
New. Not his.

```yaml
number: 2754
title: "2/4: Add @repo/csv-generation package"
author: kushel-fc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [abubakarwase]
updated: 2026-09-23
url: https://github.com/fashioncloud/product-service/pull/2754
```
**His own.** 2/4 of the split of #2752 (BDD-3205/BDD-3223 CSV generation on PCS): new `@repo/csv-generation` package. Opened 09-22 10:01 UTC; heavy review day - Chamindu36 requested changes 09-22 13:31 UTC, Kushel iterated through the evening, and Chamindu36 approved 09-23 08:17 UTC. Also approved by irembbt; CodeRabbit's latest review is an approval. All checks green. `mergeStateStatus` still `BLOCKED` with GitHub's aggregate `reviewDecision` empty and abubakarwase still requested - likely waiting on a required/code-owner review. See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 2746
title: "otto-image-upload: real business logic (Phase 2)"
author: dushansilva
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [julsjacinto]
updated: 2026-09-23
url: https://github.com/fashioncloud/product-service/pull/2746
```
Not his. Requested reviewers now [julsjacinto]; came out of draft.

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
