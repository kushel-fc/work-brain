# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Still 13. Four new: #2784 (automated production release, 09-25), **#2783 (dushansilva, otto-image-upload CloudWatch diagnostic, names Kushel)**, #2773 (Polaris mapping rules) and #2769 (schumacher). Four left: #2738 (BDD-3277 PoC) merged 09-25 07:37 UTC; #2692 (fynchHatton), #2690 (milestone) and **#2683 (swing, which was on his review list)** closed without merging. See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). A first read showed several `unknown` mergeable states; a second read resolved them all. #1737 (not his) still conflicts.

```yaml
number: 2784
title: Production Release - 2026-09-25
author: github-actions
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, alirezaMoazenFashion]
updated: 2026-09-25
url: https://github.com/fashioncloud/product-service/pull/2784
```
New 09-25 08:45 UTC. Automated production-release PR, triggered by irembbt. Not his.

```yaml
number: 2783
title: "otto-image-upload: temporarily switch to CloudWatch logging (diagnostic)"
author: dushansilva
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [kushel-fc]
updated: 2026-09-25
url: https://github.com/fashioncloud/product-service/pull/2783
```
New 09-25 08:20 UTC, **names Kushel individually**. Diagnostic-only: turns off Firelens so the `app` container logs go to CloudWatch, because INFO/WARNING logs from production runs never reached Datadog. Chamindu36, CodeRabbit and dwiajik approved it within 8 minutes, and it's `CLEAN`. His review isn't blocking the merge. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2773
title: Polaris mapping rules
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, abirprantofc]
updated: 2026-09-24
url: https://github.com/fashioncloud/product-service/pull/2773
```
New 09-24, not his. Polaris iteration 2 (103 mapping-rule upserts), paired with brand-data-pipeline#1951.

```yaml
number: 2769
title: schumacher brand migration
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, julsjacinto]
updated: 2026-09-24
url: https://github.com/fashioncloud/product-service/pull/2769
```
New 09-24, not his. Schumacher iteration 2 (30 mapping rules), paired with brand-data-pipeline#1947.

```yaml
number: 2767
title: "3/4: Add PCS CSV generation module"
author: kushel-fc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [julsjacinto, alirezaMoazenFashion]
updated: 2026-09-24
url: https://github.com/fashioncloud/product-service/pull/2767
```
**His own.** 3/4 of the Video Delivery Slice 3.2 stack (BDD-3205/BDD-3223). CodeRabbit approved 09-23. On 09-24 **Chamindu36 (2 threads) and irembbt (5 threads plus a top-level question) left review comments**, with no approve or request-changes verdict. Kushel hasn't replied yet. Still `BLOCKED`. See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 2764
title: "feat(collect-images): add the collect job for external image sources"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [irembbt, julsjacinto]
updated: 2026-09-25
url: https://github.com/fashioncloud/product-service/pull/2764
```
Not his, but **Kushel approved it 09-25 08:28 UTC** (he wasn't a named reviewer). CodeRabbit went through five more Changes Requested rounds before approving at 07:55 UTC. Still `BLOCKED` on merge rules. BDD-3273 product-service half; brand-data-pipeline#1945 waits on it.

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
number: 2684
title: dorisStreich - FEED - INTEX mapping rules
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, abubakarwase]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2684
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
