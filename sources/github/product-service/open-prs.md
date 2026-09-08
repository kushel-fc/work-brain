# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2643
title: add multi download module to pcs
author: irembbt
state: open
mergeable_state: unknown
review_state: changes-requested
requested_reviewers: [dwiajik, abubakarwase]
updated: 2026-09-08
url: https://github.com/fashioncloud/product-service/pull/2643
```
New. Team + 2 named reviewers, not his.

```yaml
number: 2640
title: "fix(publishing-job): reduce memory footprint of style-group publishing"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [irembbt, abubakarwase]
updated: 2026-09-08
url: https://github.com/fashioncloud/product-service/pull/2640
```
New — the real follow-up fix for the `bestseller_FEED2`/`cecil` OOM cluster, opened after [#2633](../../../archive/prs/product-service.md)'s Terraform-only fix didn't hold (recurred 09-07 16:29 CEST). Not individually his, but directly relevant to [BDD-3164](../../../sources/linear/my-issues.md), which he owns. Worth watching.

```yaml
number: 2639
title: "fix: size watermark against real post-resize dimensions (BDD-3089 follow-up)"
author: kushel-fc
state: open
draft: true
mergeable_state: unknown
review_state: changes-requested
requested_reviewers: [dwiajik, abirprantofc]
updated: 2026-09-07
url: https://github.com/fashioncloud/product-service/pull/2639
```
New — his own PR. See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 2634
title: "pd-observer: TTC episode reconstruction"
author: dwiajik
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [abubakarwase, abirprantofc]
updated: 2026-09-07
url: https://github.com/fashioncloud/product-service/pull/2634
```
New. Team + 2 named reviewers, not his.

```yaml
number: 2628
title: "ci: add scheduled development env replication"
author: betomoretti
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [dwiajik, kushel-fc]
updated: 2026-09-07
url: https://github.com/fashioncloud/product-service/pull/2628
```
Individually his to review. Changes Requested landed this cycle from Chamindu36 — a process objection ("open a PR directly to development that is not cloned from Staging"), not a code review. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2622
title: Add architecture rules glossary and test suite documentation
author: Chamindu36
state: open
mergeable_state: unknown
review_state: changes-requested
requested_reviewers: [irembbt, physicalattraction, msamprz, dushansilva]
updated: 2026-09-07
url: https://github.com/fashioncloud/product-service/pull/2622
```
Not his — 4 named reviewers, none of them Kushel.

```yaml
number: 2618
title: BDD-3197 Add generic `customAttributes` field to pipe SKU pipeline
author: dwiajik
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [irembbt, kushel-fc, julsjacinto, Chamindu36]
updated: 2026-09-07
url: https://github.com/fashioncloud/product-service/pull/2618
```
Individually his to review. Changes Requested still from Chamindu36 (heavy back-and-forth since 09-03), not from Kushel. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2608
title: BDD-3161 Add image-reprocessing-collector-job
author: dwiajik
state: open
draft: true
mergeable_state: unknown
review_state: changes-requested
requested_reviewers: []
updated: 2026-09-02
url: https://github.com/fashioncloud/product-service/pull/2608
```
Draft, no reviewers requested. Not his.

```yaml
number: 2574
title: "BDD-3159 add SAX-based streaming XML parser (experimental, opt-in)"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [irembbt, abirprantofc]
updated: 2026-09-08
url: https://github.com/fashioncloud/product-service/pull/2574
```
Not his — named reviewers are irembbt and abirprantofc. Companion to [brand-data-pipeline#1744](../brand-data-pipeline/open-prs.md), which does request him. Approved and `mergeable`, though `mergeStateStatus` still reads BLOCKED (branch protection / checks, not a real conflict).

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
Individually his to review. Draft, already has Changes Requested from someone else. Unchanged.

```yaml
number: 2130
title: donders brand migration
author: MuniaL
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [dwiajik, julsjacinto]
updated: 2026-07-27
url: https://github.com/fashioncloud/product-service/pull/2130
```
Not his — team + dwiajik + julsjacinto. Old (opened 07-27), first appearance in this file.

```yaml
number: 1874
title: Add helper script to delete GTINs from the downstream Fashion Cloud API
author: dwiajik
state: open
draft: true
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [abubakarwase, kushel-fc]
updated: 2026-08-21
url: https://github.com/fashioncloud/product-service/pull/1874
```
Individually his to review. Draft. Unchanged.

```yaml
number: 1756
title: "BDD-2290 follow-up: Fix trace cell shape + global cell pollution"
author: dushansilva
state: open
draft: true
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [irembbt, kushel-fc]
updated: 2026-06-24
url: https://github.com/fashioncloud/product-service/pull/1756
```
Individually his to review. Draft, stale — over 2 months with no activity.

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
Not his — sole named reviewer is julsjacinto.

```yaml
number: 1728
title: "BDD-2292 + BDD-2293: brand-onboarding transform-run launch + concurrency guards"
author: dushansilva
state: open
draft: true
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [irembbt, abubakarwase]
updated: 2026-06-24
url: https://github.com/fashioncloud/product-service/pull/1728
```
Not his — team + irembbt + abubakarwase.
