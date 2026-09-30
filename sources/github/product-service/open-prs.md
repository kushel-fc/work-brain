# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Down from 8 to 6. Three new: **#2826 (Chamindu36, package version management and publishing scripts, names Kushel)**, #2827 (dwiajik, CI tarball-path fix for the npm publish that #2822 broke) and #2824 (dwiajik, BDD-3328, draft). Five left. Merged: #2813 (PDS SDK stage 3/4, dwiajik, 09-30 08:23 UTC, merged without his review) and #2809 (09-28 staging release, which he approved, 09-29 11:54 UTC). Closed without merging 09-29 ~17:08 UTC: #2694 and #2693 (blueSeven mapping rules) and #2686 (polaris mappings), all alirezaMoazenFashion's and stale since 09-14. Opened and merged inside the window: #2825/#2819 (production releases), #2823/#2820 (staging releases), #2822 (BDD-3329, publish product-data-schema to npm), #2821 (assistant persona management), #2817 (Hugo Boss POS catalog import), #2816 (SWING, Hey Kyla and FYNCH-HATTON on PIPE), #2815 (milestone on PIPE), #2814 (BDD-3327, product-data-schema package) and #2812. None were his. See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). A first read showed `unknown` mergeable states; a second read resolved them all to mergeable, so nothing on product-service conflicts.

```yaml
number: 2827
title: "fix(ci): pass the tarball to npm as an absolute path"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abirprantofc, alirezaMoazenFashion]
updated: 2026-09-30
url: https://github.com/fashioncloud/product-service/pull/2827
```
New 09-30 08:00 UTC. The first npm publish run after #2822 merged failed because npm treated the relative tarball path as a git URL. One-line fix, CodeRabbit-approved. Not his.

```yaml
number: 2826
title: Add scripts for package version management and publishing workflows
author: Chamindu36
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), julsjacinto, kushel-fc]
updated: 2026-09-30
url: https://github.com/fashioncloud/product-service/pull/2826
```
New 09-30 07:59 UTC, **names Kushel individually**. +588/-108 across 6 files. CodeRabbit requested changes and then approved within the first 25 minutes. No human review yet. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2824
title: "BDD-3328 Pin the stream schemas to the published types and to what the producer emits"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-29
url: https://github.com/fashioncloud/product-service/pull/2824
```
New 09-29 14:54 UTC, draft. Follow-up to #2814 that ties `@fashioncloud/product-data-schema` to the zod schemas and to the producer's actual output. No reviewers yet. Not his.

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
**Names Kushel individually.** Still no reviews, two days in. BlueSeven's migration stays stuck at the ONA Phase 3 extract until this lands. See [`prs/to-review.md`](../../../prs/to-review.md).

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
Individually his to review. Draft, already Changes Requested from someone else, now 33 days unchanged. See [`prs/to-review.md`](../../../prs/to-review.md).
