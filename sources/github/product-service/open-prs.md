# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Big wave this cycle: #2651, #2650, #2639, #2634, #2608 all left the open list (merged/closed) — see [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). One new PR, #2655.

```yaml
number: 2655
title: BDD-3161 Add image-reprocessing-collector-job
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [abubakarwase, abirprantofc]
updated: 2026-09-10
url: https://github.com/fashioncloud/product-service/pull/2655
```
New — team-requested (brand-data-dev) plus abubakarwase/abirprantofc individually; Kushel not individually named. Re-submission of BDD-3161 after the earlier draft (#2608) closed unmerged 09-09. Companion to brand-data-pipeline#1839.

```yaml
number: 2647
title: royRobson brand migration
author: marianabassi
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [dwiajik, abirprantofc]
updated: 2026-09-08
url: https://github.com/fashioncloud/product-service/pull/2647
```
Not his. Companion brand-data-pipeline#1826 merged 09-09; this one still open.

```yaml
number: 2644
title: Update README.md to reflect repository structure and clarify product data pipeline overview
author: Chamindu36
state: open
mergeable_state: unknown
review_state: changes-requested
requested_reviewers: [julsjacinto, abirprantofc]
updated: 2026-09-08
url: https://github.com/fashioncloud/product-service/pull/2644
```
Not individually his. CodeRabbit's changes-requested pass is the only thing keeping the aggregate state from clearing.

```yaml
number: 2643
title: add multi download module to pcs
author: irembbt
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [Chamindu36]
updated: 2026-09-10
url: https://github.com/fashioncloud/product-service/pull/2643
```
Not his — sole named reviewer is Chamindu36.

```yaml
number: 2622
title: Add architecture rules glossary and test suite documentation
author: Chamindu36
state: open
mergeable_state: unknown
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
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [irembbt, kushel-fc, dwiajik, julsjacinto]
updated: 2026-08-28
url: https://github.com/fashioncloud/product-service/pull/2514
```
Individually his to review. Draft, already has Changes Requested from someone else, now stale — 13 days unchanged (mergeable_state flipped unknown → mergeable this cycle, not a real signal since it's still nobody reviewing). See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 1737
title: add histogram endpoint to pdo
author: irembbt
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [julsjacinto]
updated: 2026-07-07
url: https://github.com/fashioncloud/product-service/pull/1737
```
Not his — sole named reviewer is julsjacinto. `mergeable_state` flapped back to `unknown` (was `conflicting` last cycle) — the established recompute noise.
