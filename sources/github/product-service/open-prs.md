# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2624
title: "feat: enable mavi on PIPE"
author: FCMachineUser
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [irembbt, abubakarwase, dwiajik]
updated: 2026-09-04
url: https://github.com/fashioncloud/product-service/pull/2624
```
New. Not his.

```yaml
number: 2623
title: "fix: process images taller than they are wide (BDD-3089)"
author: kushel-fc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [abubakarwase, julsjacinto]
updated: 2026-09-03
url: https://github.com/fashioncloud/product-service/pull/2623
```
New — his own PR, implements [BDD-3089](../../../sources/linear/my-issues.md). Team + 2 named reviewers, no human review yet (CodeRabbit has commented/flagged/approved across several passes). See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 2622
title: Add architecture rules glossary and test suite documentation
author: Chamindu36
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [dwiajik, irembbt, physicalattraction, msamprz, dushansilva]
updated: 2026-09-03
url: https://github.com/fashioncloud/product-service/pull/2622
```
New. Not his.

```yaml
number: 2618
title: BDD-3197 Add generic customAttributes field to pipe SKU pipeline
author: dwiajik
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [irembbt, kushel-fc, Chamindu36]
updated: 2026-09-04
url: https://github.com/fashioncloud/product-service/pull/2618
```
New — individually names Kushel. Changes Requested is from Chamindu36 (extensive back-and-forth already), not from Kushel — he hasn't reviewed yet. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2608
title: BDD-3161 Add image-reprocessing-collector-job
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: []
updated: 2026-09-02
url: https://github.com/fashioncloud/product-service/pull/2608
```
Draft, no individual reviewers — not his.

```yaml
number: 2607
title: O'Neill brand migration
author: MuniaL
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [abubakarwase, kushel-fc]
updated: 2026-09-01
url: https://github.com/fashioncloud/product-service/pull/2607
```
Team-requested (brand-data-dev) plus individually names Kushel. Unchanged since 09-01 — the API shows no completed reviews this cycle (a prior sync's note about a COMMENTED/APPROVED review pair could not be reconfirmed; treating as unverified rather than restating it). See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2595
title: PDS Stream - Add datadog monitoring
author: julsjacinto
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [alirezaMoazenFashion]
updated: 2026-09-03
url: https://github.com/fashioncloud/product-service/pull/2595
```
Not his.

```yaml
number: 2574
title: "BDD-3159 add SAX-based streaming XML parser (experimental, opt-in)"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [irembbt, abirprantofc, julsjacinto]
updated: 2026-09-04
url: https://github.com/fashioncloud/product-service/pull/2574
```
Named reviewers (irembbt, abirprantofc, julsjacinto) — Kushel not among them. Companion to [brand-data-pipeline#1744](../brand-data-pipeline/open-prs.md), which does request him — that one is now Approved. `mergeable_state` cleared back from `conflicting` to `mergeable` this cycle.

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
Kushel is a requested reviewer — see [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2130
title: donders brand migration
author: MuniaL
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [dwiajik, julsjacinto]
updated: 2026-07-27
url: https://github.com/fashioncloud/product-service/pull/2130
```

```yaml
number: 1874
title: Add helper script to delete GTINs from the downstream Fashion Cloud API
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [abubakarwase, kushel-fc]
updated: 2026-08-21
url: https://github.com/fashioncloud/product-service/pull/1874
```
Kushel is a requested reviewer (draft) — see [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 1756
title: "BDD-2290 follow-up: Fix trace cell shape + global cell pollution"
author: dushansilva
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [irembbt, kushel-fc]
updated: 2026-06-24
url: https://github.com/fashioncloud/product-service/pull/1756
```
Kushel is a requested reviewer (draft, over 2 months stale) — see [`prs/to-review.md`](../../../prs/to-review.md).

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
Not his. `mergeable_state` resolved from `unknown` to a real conflict this cycle.

```yaml
number: 1728
title: "BDD-2292 + BDD-2293: brand-onboarding transform-run launch + concurrency guards"
author: dushansilva
state: open
draft: true
mergeable_state: conflicting
review_state: awaiting-first-review
requested_reviewers: [irembbt, abubakarwase]
updated: 2026-06-24
url: https://github.com/fashioncloud/product-service/pull/1728
```
Not his. `mergeable_state` resolved from `unknown` to a real conflict this cycle.
