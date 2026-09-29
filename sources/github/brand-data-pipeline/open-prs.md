# brand-data-pipeline — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Up from 13 to 14. Two new: #1972 (09-29 staging release, which he approved) and **#1969 (dwiajik, retire `image_sync.credential_id`, BDD-3280, names Kushel)**. One left: **#1878 (Polaris iteration 1, on his review list) closed 09-28 14:21 UTC**, as expected. Opened and merged inside the window: #1971 (09-28 staging release), #1970, #1968 (sarto sketch-image refactor) and #1967 (enable image_sync for brands that missed it during migration). See [`archive/prs/brand-data-pipeline.md`](../../../archive/prs/brand-data-pipeline.md). After a second read: #1956 (Hugo Boss adjustments) **newly conflicts**, and #1880, #1879, #1263, #1120, #1058 and #1055 still conflict. None of those are his.

```yaml
number: 1972
title: Staging Release - 2026-09-29
author: FCMachineUser
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: []
updated: 2026-09-29
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1972
```
New 09-29 08:24 UTC, automated (triggered by irembbt). Approved by Kushel and dwiajik. CI state is `CLEAN`. Paired with product-service#2809.

```yaml
number: 1969
title: "refactor(image-source): retire image_sync.credential_id"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, kushel-fc]
updated: 2026-09-28
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1969
```
New 09-28 11:42 UTC, **names Kushel individually**. Closes BDD-3280. It moves eight brand configs (cinque_FEED2, holyfashion, lugina x2, marcOPolo_PRICAT, profuomo, royRobson_FEED2, studioanneloes) from `image_sync.credential_id` to `image_source.credential_id` and drops the old key. Several of those brands had recent `download_images`/FTP-move alerts, so a mis-migrated credential would show up in Dagster. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 1956
title: Hugo boss adjustments
author: MuniaL
state: open
mergeable_state: conflicting
review_state: approved
requested_reviewers: []
updated: 2026-09-25
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1956
```
Opened 09-25, not his. Hugo Boss config adjustments, approved by Chamindu36. **It now conflicts**, probably because Chamindu36's product-service#2804 (removing Hugo Boss publishing logic) and other 09-28 merges landed first.

```yaml
number: 1941
title: config
author: Busra040
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-23
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1941
```
New, not his. No reviewers requested.

```yaml
number: 1910
title: Enable experimental SAX XML parsing for falke, fraas, meierLederwaren and gstar
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [hakansoylu1, dims (team)]
updated: 2026-09-22
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1910
```
Not his. Requested reviewers now [hakansoylu1, dims (team)].

```yaml
number: 1880
title: blueSeven brand migration
author: alirezaMoazenFashion
state: open
mergeable_state: conflicting
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-14
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1880
```
Not his. No change.

```yaml
number: 1879
title: Add blueSeven FEED2 migration
author: alirezaMoazenFashion
state: open
mergeable_state: conflicting
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1879
```
Not his. No change.

```yaml
number: 1815
title: "build(deps): bump the npm_and_yarn group across 1 directory with 3 updates"
author: app/dependabot
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, abubakarwase]
updated: 2026-09-06
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1815
```
Not his. No change.

```yaml
number: 1811
title: Fan out one job invocation per input chunk, mirroring production
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-04
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1811
```
Not his. No change.

```yaml
number: 1472
title: Remove obsolete Qubz mapping from No Excess transformation
author: MuniaL
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-08-04
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1472
```
Not his. No change.

```yaml
number: 1263
title: "fix: address lexson review comments"
author: FCMachineUser
state: open
mergeable_state: conflicting
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, irembbt]
updated: 2026-07-23
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1263
```
Not his. No change.

```yaml
number: 1120
title: Support/bestseller feed2
author: Busra040
state: open
mergeable_state: conflicting
review_state: approved
requested_reviewers: []
updated: 2026-07-16
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1120
```
Not his. No change.

```yaml
number: 1058
title: Fix grpcio/protobuf version conflict breaking Dagster Cloud deployment job
author: app/copilot-swe-agent
state: open
draft: true
mergeable_state: conflicting
review_state: awaiting-first-review
requested_reviewers: [Chamindu36]
updated: 2026-07-07
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1058
```
Not his. No change.

```yaml
number: 1055
title: Fix Falke order settings transformation
author: MuniaL
state: open
mergeable_state: conflicting
review_state: approved
requested_reviewers: []
updated: 2026-07-07
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1055
```
Not his. No change.
