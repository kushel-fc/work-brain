# brand-data-pipeline — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Still 17. Three new: #1955 (automated production release, 09-25), #1951 (Polaris iteration 2) and #1947 (schumacher iteration 2). Three left: #1876 (fynchHatton) and #1875 (milestone) merged 09-25 around 07:13 UTC, and #1869 (schumacher iteration 1) closed 09-24 without merging, replaced by #1947. See [`archive/prs/brand-data-pipeline.md`](../../../archive/prs/brand-data-pipeline.md). **Kushel approved #1945**, so it's off his queue. A first read showed many `unknown` mergeable states; a second read resolved them all. #1263, #1120, #1058 and #1055 (none his) still conflict.

```yaml
number: 1955
title: Production Release - 2026-09-25
author: FCMachineUser
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, abirprantofc]
updated: 2026-09-25
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1955
```
New 09-25 08:45 UTC. Automated production-release PR, triggered by irembbt. Not his.

```yaml
number: 1951
title: Polaris FEED brand migration
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: (no decision yet)
requested_reviewers: []
updated: 2026-09-25
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1951
```
New 09-24, not his. Polaris iteration 2 (branch `bdd-polaris-FEED-iteration-2`), paired with product-service#2773. dwiajik approved 09-25 05:56 UTC, but GitHub's aggregate decision is still empty and merge state is `BLOCKED`. It overlaps with the older #1878 (iteration 1), which still names Kushel.

```yaml
number: 1947
title: schumacher brand migration
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: []
updated: 2026-09-25
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1947
```
New 09-24, not his. Schumacher iteration 2, replacing #1869 (closed 09-24 without merging). dwiajik approved 09-25. Paired with product-service#2769.

```yaml
number: 1945
title: "feat(image-sync): branch to collect + download for external brands"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [abirprantofc]
updated: 2026-09-24
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1945
```
The Dagster half of BDD-3273. **Kushel approved it 09-24 15:12 UTC**, so it has left his queue. `CLEAN`, but the description says product-service#2764 must merge first. #2764 is approved now too (he approved it 09-25 08:28 UTC).

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
mergeable_state: mergeable
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
mergeable_state: mergeable
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
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [kushel-fc]
updated: 2026-09-16
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1878
```
Individually his to review, sole named reviewer. dwiajik commented, marianabassi approved - his own review still outstanding. No activity since 09-16. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 1872
title: dorisStreich - FEED - INTEX migration
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [irembbt, abirprantofc]
updated: 2026-09-15
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1872
```
Not his. No change.

```yaml
number: 1815
title: "build(deps): bump the npm_and_yarn group across 1 directory with 3 updates"
author: dependabot
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
author: copilot-swe-agent
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
