# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Two new PRs this cycle (#2723, #2722, both from dwiajik — PD Kinesis AsyncAPI docs), six dropped off — four merged (#2709, #2708, #2705, #2644) and two closed without merging (#2698, #2689). Net count down from 18 to 14. **#2705** (lookback override, named Kushel) merged 09-16 14:37 — see `prs/to-review.md` and `today.md`. New PR **#2723** individually names Kushel alongside alirezaMoazenFashion.

```yaml
number: 2723
title: "feat(event-definitions): document the PD Kinesis stream events in the AsyncAPI"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [kushel-fc, alirezaMoazenFashion]
updated: 2026-09-17
url: https://github.com/fashioncloud/product-service/pull/2723
```
New — individually his to review. Documentation-only PR for the PD Kinesis streams (same streams behind the recurring Kinesis-throttling Dagster alerts). See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2722
title: "fix(event-definitions): publish the correct event bus in the AsyncAPI"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [julsjacinto]
updated: 2026-09-17
url: https://github.com/fashioncloud/product-service/pull/2722
```
New. Not his — already Approved, companion doc fix to #2723.

```yaml
number: 2697
title: vanDeVelde brand migration
author: marianabassi
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team)]
updated: 2026-09-15
url: https://github.com/fashioncloud/product-service/pull/2697
```
Not his. `mergeable_state` flapped mergeable → unknown. No other change.

```yaml
number: 2694
title: blueSeven mapping rules
author: alirezaMoazenFashion
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, julsjacinto]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2694
```
Not his. `mergeable_state` flapped mergeable → unknown.

```yaml
number: 2693
title: Add blueSeven FEED2 mapping rules
author: alirezaMoazenFashion
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, abirprantofc]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2693
```
Not his. Companion to brand-data-pipeline#1880. `mergeable_state` flapped mergeable → unknown.

```yaml
number: 2692
title: fynchHatton brand migration
author: abirprantofc
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, julsjacinto]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2692
```
Not his. Companion to brand-data-pipeline#1876. `mergeable_state` flapped mergeable → unknown.

```yaml
number: 2690
title: milestone brand migration
author: abirprantofc
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, alirezaMoazenFashion]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2690
```
Not his. `mergeable_state` flapped mergeable → unknown.

```yaml
number: 2686
title: polaris brand migration mappings
author: alirezaMoazenFashion
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, abirprantofc]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2686
```
Not his (companion brand-data-pipeline#1878 does name him, now Approved). `mergeable_state` flapped mergeable → unknown.

```yaml
number: 2684
title: dorisStreich - FEED - INTEX mapping rules
author: alirezaMoazenFashion
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, abubakarwase]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2684
```
Not his. `mergeable_state` flapped mergeable → unknown.

```yaml
number: 2683
title: swing brand migration
author: abirprantofc
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), kushel-fc, alirezaMoazenFashion]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2683
```
Individually his to review, still untouched, now 3 days stale. Companion to brand-data-pipeline#1871 (already Approved by marianabassi, still names him as outstanding reviewer). `mergeable_state` flapped mergeable → unknown. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2681
title: schumacher mapping rules
author: alirezaMoazenFashion
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, abirprantofc]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2681
```
Not his. `mergeable_state` flapped mergeable → unknown.

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
Individually his to review. Draft, already has Changes Requested from someone else, now 20 days unchanged. See [`prs/to-review.md`](../../../prs/to-review.md).

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
Not his — sole named reviewer is julsjacinto. Stale, over two months. `mergeable_state` reads unknown now (was conflicting).
