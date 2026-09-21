# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

Queue down to 5 (was 6) — both [#2732](../archive/prs/product-service.md) and [#2723](../archive/prs/product-service.md) merged without him ever reviewing them. One new PR landed naming him: [product-service#2748](../sources/github/product-service/open-prs.md) (shoeMaterial attribute validation, alongside dwiajik).

```yaml
number: 2748
repo: product-service
title: "Require all four shoeMaterial parts before keeping the attribute"
author: abubakarwase
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [dwiajik, kushel-fc]
updated: 2026-09-18
url: https://github.com/fashioncloud/product-service/pull/2748
```
New. Individually his to review, alongside dwiajik. Untouched so far.

```yaml
number: 2683
repo: product-service
title: swing brand migration
author: abirprantofc
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), kushel-fc, alirezaMoazenFashion]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2683
```
Untouched since opening, now a week stale. Companion brand-data-pipeline#1871 (below) already has an approval — this half doesn't yet.

```yaml
number: 1878
repo: brand-data-pipeline
title: polaris brand migration
author: alirezaMoazenFashion
state: open
mergeable_state: unknown
review_state: approved
requested_reviewers: [kushel-fc]
updated: 2026-09-16
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1878
```
Sole named reviewer — `review_state` flipped from awaiting-first-review to approved this cycle (someone else reviewed it despite him being the only requested reviewer on record). Lowest-friction of the group now — already vetted, just needs his sign-off or a merge.

```yaml
number: 1871
repo: brand-data-pipeline
title: swing brand migration
author: abirprantofc
state: open
mergeable_state: unknown
review_state: approved
requested_reviewers: [marianabassi, kushel-fc]
updated: 2026-09-14
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1871
```
marianabassi already approved; Kushel still listed as an outstanding requested reviewer.

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
Draft, already has Changes Requested from someone else. Still stale — now 24 days untouched.
