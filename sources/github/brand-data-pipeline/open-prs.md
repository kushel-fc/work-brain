# brand-data-pipeline — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

17 to 15. Off the list, all merged: marianabassi's #2069 (ftcCashmere credential ID, 10-19 08:51 UTC, in production release #2076), staging release #2068, and dwiajik's #2067 (deletion publishing Dagster job, 10-19 10:05 UTC, without his review). New: physicalattraction's #2077 (CODEOWNERS). Opened and merged inside the window: **his own #2074** (BDD-3495, publish after `download_videos`, 10-19 15:28 UTC, not in a release yet), production releases #2070 (10-19 10:03 UTC) and #2076 (10-20 07:59 UTC), staging release #2073, dushansilva's #2072 (Willen material), inga-ar's #2071, honeypsabu's #2075, marianabassi's #2078 (oneil), dwiajik's #2079 (vanDeVelde FEED to size M, 10-20 08:38 UTC). Mergeable states for the older PRs mostly read `unknown` again and are left at their last known values. See [`archive/prs/brand-data-pipeline.md`](../../../archive/prs/brand-data-pipeline.md).

```yaml
number: 2077
title: "Update CODEOWNERS file"
author: physicalattraction
state: open
mergeable_state: unstable
review_state: approved
requested_reviewers: [irembbt]
updated: 2026-10-20
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2077
```
Opened 10-19 15:55 UTC. Approved, a check failing or pending. The product-service counterpart (#3000) merged 10-19 17:09 UTC. Doesn't name him.

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
