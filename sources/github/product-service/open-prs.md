# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Down from 13 to 11. Five new: #2802 (Enable Polaris brands on PIPE, 09-27), **#2801 (Enable DOROTHEE SCHUMACHER on PIPE, names Kushel)**, #2798 (PDS Streams SDK stage 2/4, draft), **#2792 (blueSeven FEED/FEED2 mapping rules, names Kushel)** and **#2785 (PDS Streams SDK `subscribe()` API surface, names Kushel)**. Seven left: **Kushel's own #2767 (3/4) merged 09-28 07:41 UTC**, #2784 (09-25 production release) and #2764 (BDD-3273 collect job) merged 09-25, and #2783, #2773, #2769 and #2684 closed without merging. See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). A first read showed several `unknown` mergeable states; a second read resolved them, and only #1737 (not his) conflicts.

```yaml
number: 2802
title: Enable Polaris brands on PIPE
author: FCMachineUser
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, abirprantofc]
updated: 2026-09-27
url: https://github.com/fashioncloud/product-service/pull/2802
```
New 09-27, automated (FCMachineUser). Moves the four Polaris brand IDs from `brands_on_megatron` to `brands_on_pipe`, following Polaris iteration 2 (brand-data-pipeline#1951) merging 09-25. Not his.

```yaml
number: 2801
title: Enable DOROTHEE SCHUMACHER on PIPE
author: FCMachineUser
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, kushel-fc]
updated: 2026-09-27
url: https://github.com/fashioncloud/product-service/pull/2801
```
New 09-27, automated (FCMachineUser), **names Kushel individually**. Fully routes DOROTHEE SCHUMACHER (schumacher_FEED) EventBridge traffic from Megatron to PIPE, following schumacher iteration 2 (brand-data-pipeline#1947) merging 09-25. No reviews yet, `BLOCKED`. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2798
title: "PDS Streams SDK: thin receive-decode-ack path (stage 2/4)"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: (no decision yet)
requested_reviewers: []
updated: 2026-09-28
url: https://github.com/fashioncloud/product-service/pull/2798
```
New 09-25, draft, not his. Stage 2/4 of the PDS Streams SDK (BDD-3093): wires `subscribe()`/`iterate()` to a real SQS queue with the minimum receive-decode-ack path. Stacked on #2785.

```yaml
number: 2792
title: blueSeven FEED and FEED2 mapping rules
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, kushel-fc]
updated: 2026-09-25
url: https://github.com/fashioncloud/product-service/pull/2792
```
New 09-25, **names Kushel individually**. The shared manufacturer-scoped blueSeven mapping-rule payload for the FEED and FEED2 INTEX migrations (112 rules, DRY_RUN defaults to true). No reviews yet. The older blueSeven PRs (#2694, #2693) are still open alongside it. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2785
title: "PDS Streams SDK: subscribe() API surface"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), julsjacinto, kushel-fc, Chamindu36]
updated: 2026-09-28
url: https://github.com/fashioncloud/product-service/pull/2785
```
New 09-25, **names Kushel individually** (with julsjacinto and Chamindu36). Stage 1/4 of the PDS Streams SDK (BDD-3093): the typed public API surface only, where `subscribe()`/`iterate()` throw `NotImplementedError`, up for review of the contract shape. CodeRabbit went through three Changes Requested rounds with dwiajik, then approved. No human review yet. See [`prs/to-review.md`](../../../prs/to-review.md).

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
