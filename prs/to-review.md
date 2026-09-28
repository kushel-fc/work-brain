# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

The queue grew from 3 to 5. Three new requests name him individually: **product-service#2785** (PDS Streams SDK contract, stage 1/4), **product-service#2792** (blueSeven mapping rules) and **product-service#2801** (enable DOROTHEE SCHUMACHER on PIPE). product-service#2783 closed 09-25 without his review. brand-data-pipeline#1878 now conflicts and is very likely superseded.

```yaml
number: 2785
repo: product-service
title: "PDS Streams SDK: subscribe() API surface"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), julsjacinto, kushel-fc, Chamindu36]
updated: 2026-09-28
url: https://github.com/fashioncloud/product-service/pull/2785
```
New 09-25. Stage 1/4 of BDD-3093. It's API shape only, with no implementation behind it, and the author explicitly wants a contract review before stage 2/4 (#2798, draft) builds on it. CodeRabbit approved after three rounds; no human review yet. Of his three new asks, this is the one blocking a stack.

```yaml
number: 2801
repo: product-service
title: Enable DOROTHEE SCHUMACHER on PIPE
author: FCMachineUser
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, kushel-fc]
updated: 2026-09-27
url: https://github.com/fashioncloud/product-service/pull/2801
```
New 09-27, automated. Moves schumacher_FEED traffic from Megatron to PIPE in production, following schumacher iteration 2 merging 09-25. It's a small config flip, but it's the go-live step, so check that the iteration-2 runs came through cleanly.

```yaml
number: 2792
repo: product-service
title: blueSeven FEED and FEED2 mapping rules
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, kushel-fc]
updated: 2026-09-25
url: https://github.com/fashioncloud/product-service/pull/2792
```
New 09-25. It holds 112 manufacturer-scoped mapping rules, with DRY_RUN defaulting to true. The older blueSeven PRs (product-service#2694/#2693, brand-data-pipeline#1880/#1879) are still open, and the pipeline ones now conflict, so ask which set is current before reviewing.

```yaml
number: 1878
repo: brand-data-pipeline
title: polaris brand migration
author: alirezaMoazenFashion
state: open
mergeable_state: conflicting
review_state: (no decision yet)
requested_reviewers: [kushel-fc]
updated: 2026-09-16
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1878
```
Polaris iteration 1. Iteration 2 (brand-data-pipeline#1951) merged 09-25, and product-service#2802 (09-27) moves Polaris onto PIPE. #1878 now conflicts. It's almost certainly superseded, so the useful action is asking alirezaMoazenFashion to close it rather than reviewing it.

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
Draft, and it already has Changes Requested from someone else. Stale: 31 days untouched.
