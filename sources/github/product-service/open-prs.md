# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Down to 16 (was 18). One new: #2750 (Staging Release, bot). Three merged off the list: #2742 (CINQUE on PIPE), #2728 (open api), #2622 (architecture rules glossary) — see [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). **Kushel approved #2748 himself this morning (09-22 08:45 UTC)** — dwiajik is now the only outstanding requested reviewer; off `prs/to-review.md`. **#1737's `mergeable_state` resolved from months of `unknown` flapping to a real conflict** (`CONFLICTING`/`DIRTY`) — not his own PR.

```yaml
number: 2750
title: Staging Release - 2026-09-21
author: FCMachineUser
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, alirezaMoazenFashion]
updated: 2026-09-22
url: https://github.com/fashioncloud/product-service/pull/2750
```
New. Not his — routine staging release bot PR.

```yaml
number: 2748
title: "Require all four shoeMaterial parts before keeping the attribute"
author: abubakarwase
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [dwiajik]
updated: 2026-09-22
url: https://github.com/fashioncloud/product-service/pull/2748
```
Kushel reviewed and approved it himself today (09-22 08:45 UTC) — no longer listed as a requested reviewer on him. `mergeStateStatus` reads `UNSTABLE` (a check is failing/pending). dwiajik still outstanding. Off [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2746
title: "otto-image-upload: real business logic (Phase 2)"
author: dushansilva
state: open
draft: true
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: []
updated: 2026-09-21
url: https://github.com/fashioncloud/product-service/pull/2746
```
Not his. Draft, only CodeRabbit has reviewed so far, no human reviewer requested yet.

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
number: 2738
title: "BDD-3277 PoC: relay PDS style stream into per-consumer SQS queues"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [abubakarwase, abirprantofc, physicalattraction, Chamindu36]
updated: 2026-09-22
url: https://github.com/fashioncloud/product-service/pull/2738
```
Not his. Two more reviewers added today (physicalattraction, Chamindu36). `mergeStateStatus` reads `BLOCKED`.

```yaml
number: 2737
title: "feat(image-downloading): resolve FTP/SFTP credentials from 1Password"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, abirprantofc]
updated: 2026-09-21
url: https://github.com/fashioncloud/product-service/pull/2737
```
Not his. No change. `mergeStateStatus` reads `BLOCKED`.

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
Not his. No change, now over a week stale.

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
Not his. Companion to brand-data-pipeline#1880. No change.

```yaml
number: 2692
title: fynchHatton brand migration
author: abirprantofc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, julsjacinto]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2692
```
Not his. Companion to brand-data-pipeline#1876. No change.

```yaml
number: 2690
title: milestone brand migration
author: abirprantofc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, alirezaMoazenFashion]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2690
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
Not his (companion brand-data-pipeline#1878 does name him). No change.

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
number: 2683
title: swing brand migration
author: abirprantofc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), kushel-fc, alirezaMoazenFashion]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2683
```
Individually his to review, still untouched, now over a week stale. Companion to brand-data-pipeline#1871 (already Approved, still names him as outstanding reviewer). See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2681
title: schumacher mapping rules
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, abirprantofc]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2681
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
Individually his to review. Draft, already has Changes Requested from someone else, now 25 days unchanged. See [`prs/to-review.md`](../../../prs/to-review.md).

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
Not his — sole named reviewer is julsjacinto. **`mergeable_state` resolved from months of `unknown` flapping to a real merge conflict** (`CONFLICTING`/`DIRTY`) this cycle — first real signal on this stale PR (over two months old) in a while.
