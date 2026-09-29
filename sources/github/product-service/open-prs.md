# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Down from 11 to 8. Three new: #2813 (PDS Streams SDK stage 3/4, draft), #2809 (09-28 staging release, which he approved) and **#2808 (alirezaMoazenFashion, restore Mongo AWS auth for ONA extract, names Kushel)**. Six left. Merged: **#2785 (SDK stage 1/4) 09-28 09:32 UTC and #2798 (stage 2/4) 09-29 07:00 UTC, both of which he approved**, and **#2801 (schumacher + Polaris on PIPE) 09-28 12:24 UTC, also approved by him**. Closed without merging: #2802 (Polaris on PIPE, folded into #2801), #2792 (blueSeven rules) and #1737. Other PRs opened and merged inside the window: **his own #2806 (Slice 3.2 4/4)**, #2812, #2810 (Doris Streich fully on PIPE), #2805, #2804 and #2803. #2811 (a revert of #2801) and #2807 opened and closed without merging. See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). A first read showed several `unknown` mergeable states; a second read resolved them all to mergeable, so nothing on product-service conflicts now.

```yaml
number: 2813
title: "PDS Streams SDK: correct under load and failure (stage 3/4)"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-29
url: https://github.com/fashioncloud/product-service/pull/2813
```
New 09-29 08:36 UTC, draft. Stage 3/4 of the PDS SDK (BDD-3317), covering batched acks, heartbeat and shutdown. No reviewers requested yet. He reviewed stages 1 and 2, so he'll probably be asked on this one too.

```yaml
number: 2809
title: Staging Release - 2026-09-28
author: github-actions
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [irembbt, julsjacinto]
updated: 2026-09-29
url: https://github.com/fashioncloud/product-service/pull/2809
```
New 09-28, automated. Approved by dwiajik and Kushel. CI state is `UNSTABLE`. Paired with brand-data-pipeline#1972.

```yaml
number: 2808
title: "fix(extract): restore Mongo AWS auth and expose ONA startup failures"
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, kushel-fc]
updated: 2026-09-28
url: https://github.com/fashioncloud/product-service/pull/2808
```
New 09-28 14:53 UTC, **names Kushel individually**. BlueSeven's migration is stuck at the ONA Phase 3 extract. The fix adds the missing `aws4` dependency for `MONGODB-AWS` auth and surfaces startup failures that currently only reach Datadog. It replaces #2807, which was closed. `BLOCKED` on review. See [`prs/to-review.md`](../../../prs/to-review.md).

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
