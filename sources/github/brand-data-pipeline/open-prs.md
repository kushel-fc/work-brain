# brand-data-pipeline — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Five new PRs this cycle (#1882, #1883, #1888, #1889, #1890), one dropped off (#1839, merged 09-15 — see `archive/prs/brand-data-pipeline.md`). Net count up to 22. **His own first PR since 09-09**: #1890 (baldessarini credential fix). #1878's `mergeable_state` flapped from mergeable to unknown (recompute noise, not a real conflict).

```yaml
number: 1890
title: Update credential_id for baldessarini FEED job
author: kushel-fc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1890
```
New — his own PR. Config-only fix (`credential_id` swap) for the baldessarini_FEED job, tied directly to the ongoing baldessarini Dagster incident (see `dagster-alerts/log.md` — "PR to fix this" referenced in-thread 09-15). CodeRabbit found no actionable comments. No human reviewer requested yet. See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 1889
title: images
author: Busra040
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1889
```
New, no reviewers requested yet. Not his.

```yaml
number: 1888
title: Add per-brand image_reprocessing.lookback_days config + S3 sync
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, abirprantofc]
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1888
```
New. Not his (companion product-service#2705 does name him).

```yaml
number: 1883
title: authenticStyle brand migration
author: marianabassi
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1883
```
New, no reviewers requested yet. Not his. Companion to product-service#2698.

```yaml
number: 1882
title: vanDeVelde brand migration
author: marianabassi
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1882
```
New, no reviewers requested yet. Not his. Companion to product-service#2697.

```yaml
number: 1880
title: blueSeven brand migration
author: alirezaMoazenFashion
state: open
mergeable_state: unknown
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
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1879
```
Not his. No change.

```yaml
number: 1878
title: polaris brand migration
author: alirezaMoazenFashion
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [kushel-fc]
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1878
```
Individually his to review, sole named reviewer — still untouched. `mergeable_state` flapped from mergeable to unknown this cycle (GitHub recompute noise, not a real conflict). Companion to product-service#2686 (doesn't name him). See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 1876
title: fynchHatton brand migration
author: abirprantofc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1876
```
Not his. No change.

```yaml
number: 1875
title: milestone brand migration
author: abirprantofc
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [marianabassi]
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1875
```
Not his. No change.

```yaml
number: 1874
title: cinque brand migration
author: abirprantofc
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [marianabassi]
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1874
```
Not his (companion product-service#2689 does name him). No change.

```yaml
number: 1872
title: dorisStreich - FEED - INTEX migration
author: alirezaMoazenFashion
state: open
mergeable_state: unknown
review_state: approved
requested_reviewers: [irembbt, abirprantofc]
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1872
```
Not his. Already Approved. No change.

```yaml
number: 1871
title: swing brand migration
author: abirprantofc
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [marianabassi, kushel-fc]
updated: 2026-09-14
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1871
```
Already Approved by marianabassi, but still names Kushel as an outstanding requested reviewer. Companion to product-service#2683 (also names him). See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 1869
title: schumacher brand migration
author: alirezaMoazenFashion
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1869
```
Not his. No change.

```yaml
number: 1825
title: "pmeLegend: Add `experimental.xmSaxParsing` flag to `feed_config.json`"
author: dwiajik
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [hakansoylu1, dims (team)]
updated: 2026-09-09
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1825
```
Not his. Still open and unreviewed, no change. BDD-3150 (the ticket this PR's earmark was tracking) shipped 09-14 anyway, without this PR merging — see `_meta/earmarks.md`.

```yaml
number: 1815
title: "build(deps): bump the npm_and_yarn group across 1 directory with 3 updates"
author: app/dependabot
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, abubakarwase]
updated: 2026-09-06
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1815
```
Dependabot, not his. No change.

```yaml
number: 1811
title: Fan out one job invocation per input chunk, mirroring production
author: dwiajik
state: open
draft: true
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-09-04
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1811
```
Draft, no reviewers requested. Not his. No change.

```yaml
number: 1472
title: Remove obsolete Qubz mapping from No Excess transformation
author: MuniaL
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-08-04
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1472
```
Not his, stale (over a month).

```yaml
number: 1263
title: "fix: address lexson review comments"
author: FCMachineUser
state: open
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, irembbt]
updated: 2026-07-23
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1263
```
Not his — team + dwiajik + irembbt.

```yaml
number: 1120
title: Support/bestseller feed2
author: Busra040
state: open
mergeable_state: unknown
review_state: approved
requested_reviewers: []
updated: 2026-07-16
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1120
```
Not his. Approved, `mergeable_state` still flapping `unknown`.

```yaml
number: 1058
title: Fix grpcio/protobuf version conflict breaking Dagster Cloud deployment job
author: app/copilot-swe-agent
state: open
draft: true
mergeable_state: unknown
review_state: awaiting-first-review
requested_reviewers: [Chamindu36]
updated: 2026-07-07
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1058
```
Not his — sole named reviewer is Chamindu36. Draft, stale.

```yaml
number: 1055
title: Fix Falke order settings transformation
author: MuniaL
state: open
mergeable_state: unknown
review_state: approved
requested_reviewers: []
updated: 2026-07-07
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1055
```
Not his. Approved, stale.
