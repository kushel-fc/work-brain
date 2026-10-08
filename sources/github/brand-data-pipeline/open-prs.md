# brand-data-pipeline — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

12 to 16. New: **his own #2013** (fashionCloud FEED/FEED2 videos, `organizationId` and `asLanguages`, approved by dwiajik, clean), #2019 (dependabot urllib3 bump in `/brand-migration`, **names him individually**), #2021 (honeypsabu, bestseller brand IDs) and #2023 (10-08 production release). Opened and merged inside the window: #2015 (lady day onboarding), #2016 (ftcCashmere credential id), #2017 (sartoFashion), #2018 (Triumph status input), #2022 (organizationId) and staging release #2020. #2014 (inga-ar, more mappings) opened and closed unmerged. See [`archive/prs/brand-data-pipeline.md`](../../../archive/prs/brand-data-pipeline.md). Older PRs' mergeable states read `unknown` on this pass and are left at their last known values.

```yaml
number: 2023
title: "Production Release - 2026-10-08"
author: FCMachineUser
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-10-08
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2023
```
Opened 10-08 08:11 UTC. Routine production release. Not his.

```yaml
number: 2021
title: "updated brand IDs"
author: honeypsabu
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-10-08
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2021
```
Opened 10-08 07:52 UTC. +19/-19 in bestseller_FEED and FEED2 transformations: bestseller deleted 7 profiles and the brand IDs need to point at the new ones. Companion product-service#2877 already merged. Not his.

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
number: 2013
title: "fashionCloud FEED/FEED2: add videos, organizationId and asLanguages attributes"
author: kushel-fc
state: open
mergeable_state: clean
review_state: approved
requested_reviewers: []
updated: 2026-10-08
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2013
```
His. Opened 10-07 10:05 UTC, +931/-575. Reads `Video URL` into videos for both fashionCloud feeds, turns on `video_processing_enabled`, and adds `organizationId` and translated `manufacturerAttributes` so product-service's `validateTransformationFile` accepts the files. dwiajik approved 10-08 08:23 UTC. See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 2011
title: "Feat/brand migration agent local"
author: hakansoylu1
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-10-07
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2011
```
Opened 10-06 13:31 UTC, draft, no description. +856/-311, a local CLI agent under `brand-migration/agent/` with steps for feed transform, global transform, mapping and merge jobs. Not his.

```yaml
number: 1993
title: "Support/roy robson"
author: Busra040
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-10-01
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1993
```
Opened 10-01 13:43 UTC. +3/-1 in royRobson_FEED2's `config.json` and `transformation.ts`. Opened the same day royRobson's move-images job failed because its URL was switched to SFTP without the images being moved (see [`dagster-alerts/log.md`](../../../dagster-alerts/log.md)). Not his.

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
