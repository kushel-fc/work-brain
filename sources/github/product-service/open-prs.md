# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

5 to 5, but all different except #2845. Off the list: #2899 (production release with Aji's #2894 PDS fix, merged 10-09 10:15 UTC), #2900 and #2902 (dwiajik's PDS/PCS ALB 5xx SLOs, merged 09:14/09:15 UTC), #2744 (dwiajik's draft, closed unmerged). New: **his own #2912 and #2916**, plus Chamindu36's #2914 and #2915 (PDS replay worker). Opened and merged inside the window: #2904, #2906, #2907, #2909, #2910, staging releases #2905 and #2911, and production release #2913 (merged 10-12 07:54 UTC). See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md).

```yaml
number: 2916
title: "BDD-3223: Accept 2000 GTINs per resolve and fix the CSV image extension, description and dropped-GTIN reporting"
author: kushel-fc
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, abirprantofc]
updated: 2026-10-09
url: https://github.com/fashioncloud/product-service/pull/2916
```
His. Opened 10-09 15:04 UTC. See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 2915
title: "Add replay worker infrastructure and IAM roles for ECS"
author: Chamindu36
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [irembbt, julsjacinto]
updated: 2026-10-09
url: https://github.com/fashioncloud/product-service/pull/2915
```
Opened 10-09 14:41 UTC, +300/-0. PDS Replay infrastructure. dwiajik approved; GitHub's aggregate still says Changes Requested from CodeRabbit's first pass. Not his.

```yaml
number: 2914
title: "Implement replay job db module and supportive functions to handle slot claiming."
author: Chamindu36
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [abubakarwase, alirezaMoazenFashion]
updated: 2026-10-09
url: https://github.com/fashioncloud/product-service/pull/2914
```
Opened 10-09 14:10 UTC, +1055/-3. PDS Replay job DB module. dwiajik approved after a long thread; aggregate still shows CodeRabbit's Changes Requested. Not his.

```yaml
number: 2912
title: "BDD-3214: map a resolve request to its download audit entry (2/3)"
author: kushel-fc
state: open
mergeable_state: clean
review_state: approved
requested_reviewers: [irembbt, abirprantofc]
updated: 2026-10-12
url: https://github.com/fashioncloud/product-service/pull/2912
```
His. Approved by Chamindu36 10-12 08:22 UTC, clean. See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 2845
title: "Add helper script to pull PDS stream data via the SQS consumer SDK"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-10-01
url: https://github.com/fashioncloud/product-service/pull/2845
```
Opened 10-01 11:40 UTC, draft. +486/-0. A local helper for reading a consumer's SQS queue with the PDS SDK. Not his. No change. Mergeable state read `unknown` again, left at last known value.
