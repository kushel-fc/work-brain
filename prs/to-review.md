# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

Queue down to 4 (was 5) — **he reviewed and approved [product-service#2748](../sources/github/product-service/open-prs.md) himself this morning** (09-22 08:45 UTC, shoeMaterial attribute validation), so GitHub no longer lists him as a requested reviewer on it. dwiajik is the only one left outstanding there. No new PRs landed naming him this cycle.

```yaml
number: 2683
repo: product-service
title: swing brand migration
author: abirprantofc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), kushel-fc, alirezaMoazenFashion]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2683
```
Untouched since opening, now over a week stale. Companion brand-data-pipeline#1871 (below) already has an approval and a clean mergeable state — this half doesn't yet.

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
Sole named reviewer. dwiajik commented, marianabassi approved, but GitHub's aggregate `reviewDecision` is still empty — his own review is what's outstanding. No change since last cycle.

```yaml
number: 1871
repo: brand-data-pipeline
title: swing brand migration
author: abirprantofc
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [marianabassi, kushel-fc]
updated: 2026-09-14
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1871
```
`mergeable_state` resolved from `unknown` to a clean `mergeable` this cycle. Approved by dwiajik (correcting a prior sync's note that attributed the approval to marianabassi) — Kushel still listed as an outstanding requested reviewer.

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
Draft, already has Changes Requested from someone else. Still stale — now 25 days untouched.
