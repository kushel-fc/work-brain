# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Three new PRs (#2677, #2676, #2675), two left the list this cycle (#2668, #2666 both merged 09-11) — see [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). Net count up to 8. None of the new PRs name Kushel.

```yaml
number: 2677
title: Enable LLOYD Belts on PIPE
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [abubakarwase, julsjacinto]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2677
```
New, already Approved. Not his.

```yaml
number: 2676
title: Alert on archived files exceeding Node's max string length
author: dwiajik
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [alirezaMoazenFashion]
updated: 2026-09-11
url: https://github.com/fashioncloud/product-service/pull/2676
```
New, already Approved. Not his.

```yaml
number: 2675
title: Fix ona-db-migration validator rejecting customAttributes (Map-of-embedded-schema)
author: dwiajik
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [irembbt, abirprantofc]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2675
```
New, already Approved. Not his, but likely the code fix behind Aji's in-thread "done, please try again" that resolved falke's 09-11 merge-rule failure — same `customAttributes`/`rootLevelAttributes` bug class as iosByMaica. See `dagster-alerts/log.md`.

```yaml
number: 2655
title: BDD-3161 Add image-reprocessing-collector-job
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, abirprantofc]
updated: 2026-09-10
url: https://github.com/fashioncloud/product-service/pull/2655
```
Not his. Companion to brand-data-pipeline#1839. `mergeable_state` resolved back to mergeable this cycle (was flapping unknown last sync).

```yaml
number: 2644
title: Update README.md to reflect repository structure and clarify product data pipeline overview
author: Chamindu36
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [julsjacinto, abirprantofc]
updated: 2026-09-08
url: https://github.com/fashioncloud/product-service/pull/2644
```
Not individually his. CodeRabbit's changes-requested pass is the only thing keeping the aggregate state from clearing.

```yaml
number: 2622
title: Add architecture rules glossary and test suite documentation
author: Chamindu36
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [irembbt, physicalattraction, dushansilva]
updated: 2026-09-08
url: https://github.com/fashioncloud/product-service/pull/2622
```
Not his — 3 named reviewers, none Kushel.

```yaml
number: 2514
title: "feat(llm-based-agent-setup): add mutations tool group for SKU reprocessing and mapping-rule updates"
author: dushansilva
state: open
draft: true
mergeable_state: unknown
review_state: changes-requested
requested_reviewers: [brand-data-dev (team), irembbt, kushel-fc, dwiajik, julsjacinto]
updated: 2026-08-28
url: https://github.com/fashioncloud/product-service/pull/2514
```
Individually his to review. Draft, already has Changes Requested from someone else, now 17 days unchanged. `mergeable_state` flapped mergeable → unknown again this cycle, not a real signal since nobody's reviewing. See [`prs/to-review.md`](../../../prs/to-review.md).

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
Not his — sole named reviewer is julsjacinto. Stale, over two months. `mergeable_state` resolved from unknown to an actual merge conflict this cycle — first real signal on this PR in a while, but not his so no action needed.
