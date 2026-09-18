# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Five new PRs this cycle (#2738, #2737, #2735, #2732, #2728), two dropped off — #2722 merged, #2697 (vanDeVelde) closed without merging. Net count up from 14 to 17. **#2732** individually names Kushel (alongside dwiajik), already Approved. **#2723** flipped from awaiting-first-review to Changes Requested — see `prs/to-review.md`.

```yaml
number: 2738
title: "BDD-3277 PoC: relay PDS style stream into per-consumer SQS queues"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-18
url: https://github.com/fashioncloud/product-service/pull/2738
```
New. Draft, no reviewers requested. Not his.

```yaml
number: 2737
title: "feat(image-downloading): resolve FTP/SFTP credentials from 1Password"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: []
updated: 2026-09-18
url: https://github.com/fashioncloud/product-service/pull/2737
```
New. Draft, already Changes Requested, no reviewers requested. Not his.

```yaml
number: 2735
title: Enhance size variant handling by adding articleNumber to relevant payloads and tests
author: Chamindu36
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, alirezaMoazenFashion]
updated: 2026-09-18
url: https://github.com/fashioncloud/product-service/pull/2735
```
New. Not his — team + abubakarwase + alirezaMoazenFashion named, not him individually.

```yaml
number: 2732
title: "otto-image-upload: ECS Fargate scheduled task skeleton (Phase 1)"
author: dushansilva
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [dwiajik, kushel-fc]
updated: 2026-09-18
url: https://github.com/fashioncloud/product-service/pull/2732
```
New — individually his to review, alongside dwiajik. Already Approved by someone else. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2728
title: add open api
author: irembbt
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [brand-data-dev (team), dwiajik, abirprantofc]
updated: 2026-09-17
url: https://github.com/fashioncloud/product-service/pull/2728
```
New. Not his.

```yaml
number: 2723
title: "feat(event-definitions): document the PD Kinesis stream events in the AsyncAPI"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [kushel-fc, alirezaMoazenFashion]
updated: 2026-09-18
url: https://github.com/fashioncloud/product-service/pull/2723
```
Individually his to review. `review_state` flipped awaiting-first-review → changes-requested this cycle — someone else left comments before he got to it. See [`prs/to-review.md`](../../../prs/to-review.md).

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
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, abirprantofc]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2693
```
Not his. Companion to brand-data-pipeline#1880. `mergeable_state` flapped back to mergeable.

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
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, abubakarwase]
updated: 2026-09-14
url: https://github.com/fashioncloud/product-service/pull/2684
```
Not his. `mergeable_state` flapped back to mergeable.

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
Individually his to review, still untouched, now 4 days stale. Companion to brand-data-pipeline#1871 (already Approved by marianabassi, still names him as outstanding reviewer). See [`prs/to-review.md`](../../../prs/to-review.md).

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
Individually his to review. Draft, already has Changes Requested from someone else, now 21 days unchanged. See [`prs/to-review.md`](../../../prs/to-review.md).

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
