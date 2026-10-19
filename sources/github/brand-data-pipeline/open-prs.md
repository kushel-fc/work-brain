# brand-data-pipeline — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

15 to 17. Off the list: dwiajik's #2062 (`expectedHeaders` config cleanup, closed unmerged 10-16 14:25 UTC). New: **dwiajik's #2067 (Dagster job for deletion publishing, names him)**, marianabassi's #2069 (ftcCashmere credential ID) and staging release #2068. Opened and merged inside the window, none his: inga-ar's #2065, honeypsabu's #2063 and #2066, and production release #2064 (10-16 11:33 UTC, paired with product-service#2973). Mergeable states for the older PRs mostly read `unknown` again and are left at their last known values. See [`archive/prs/brand-data-pipeline.md`](../../../archive/prs/brand-data-pipeline.md).

```yaml
number: 2069
title: "ftcCashmere: change credentialID"
author: marianabassi
state: open
mergeable_state: clean
review_state: approved
requested_reviewers: []
updated: 2026-10-19
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2069
```
Opened 10-19 08:19 UTC, +1/-1, approved. Follows Aji's 10-19 "credential not found" reply on the ftcCashmere_FEED2 alert. Not his. Relevant to [BDD-3357](../../../support/open.md).

```yaml
number: 2068
title: "Staging Release - 2026-10-19"
author: FCMachineUser
state: open
mergeable_state: clean
review_state: approved
requested_reviewers: []
updated: 2026-10-19
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2068
```
Opened 10-19 07:50 UTC, paired with product-service#2982. Nothing of his.

```yaml
number: 2067
title: "BDD-3469 T4.1: Dagster job for deletion publishing"
author: dwiajik
state: open
mergeable_state: blocked
review_state: approved
requested_reviewers: [irembbt, kushel-fc]
updated: 2026-10-19
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2067
```
Opened 10-16 14:29 UTC, +306/-0. Names him. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2044
title: "implement material normalization"
author: inga-ar
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-10-13
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2044
```
Opened 10-13 08:42 UTC, +52/-6. No reviewers yet. Not his.

```yaml
number: 2039
title: "Enable SAX XML parsing for bugatti, profuomo, mustang and schmidtGroup"
author: dwiajik
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: [hakansoylu1]
updated: 2026-10-13
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2039
```
Opened 10-12 14:32 UTC, +936/-395. Only CodeRabbit has commented. Not his.

```yaml
number: 2019
title: "Bump urllib3 from 2.7.0 to 2.8.0 in /brand-migration in the uv group across 1 directory"
author: app/dependabot
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev, kushel-fc, alirezaMoazenFashion]
updated: 2026-10-07
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2019
```
Opened 10-07 15:38 UTC. Dependabot bump, names him individually. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2011
title: "Feat/brand migration agent local"
author: hakansoylu1
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-10-13
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2011
```
Opened 10-06 13:31 UTC, draft, no description, updated 10-09. +856/-311, a local CLI agent under `brand-migration/agent/` with steps for feed transform, global transform, mapping and merge jobs. Not his.

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
Opened 09-25, not his. Hugo Boss config adjustments, approved by Chamindu36. Still conflicts, probably because Chamindu36's product-service#2804 (removing Hugo Boss publishing logic) and other 09-28 merges landed first.

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
