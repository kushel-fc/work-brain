# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

Queue up to 4 (was 3). New: **brand-data-pipeline#1945** (dwiajik, BDD-3273 external image sync), which names him individually. Nothing left the queue.

```yaml
number: 1945
repo: brand-data-pipeline
title: "feat(image-sync): branch to collect + download for external brands"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), kushel-fc, abirprantofc]
updated: 2026-09-23
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1945
```
New 09-23. The Dagster half of BDD-3273. It depends on product-service#2764 (not on his list), which the description says must merge first and which still has CodeRabbit's Changes Requested. So there's no rush to merge, but it's a fresh review ask. Only a CodeRabbit comment so far.

```yaml
number: 2683
repo: product-service
title: swing brand migration
author: abirprantofc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), kushel-fc, alirezaMoazenFashion]
updated: 2026-09-23
url: https://github.com/fashioncloud/product-service/pull/2683
```
Still no human reviews, ten days after opening. Its companion brand-data-pipeline#1871 merged 09-23 without him, so this half is the one holding up the swing migration.

```yaml
number: 1878
repo: brand-data-pipeline
title: polaris brand migration
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: (no decision yet)
requested_reviewers: [kushel-fc]
updated: 2026-09-16
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1878
```
Sole named reviewer. dwiajik commented, marianabassi approved, but GitHub's aggregate `reviewDecision` is still empty, so his review is the one outstanding. `mergeStateStatus` is `BLOCKED`. No activity since 09-16, now 8 days idle.

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
Draft, already has Changes Requested from someone else. Still stale, now 27 days untouched.
