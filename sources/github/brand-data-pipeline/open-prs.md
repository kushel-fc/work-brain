# brand-data-pipeline — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Down from 17 to 13. One new: #1956 (MuniaL, Hugo Boss adjustments, approved by Chamindu36). Five left: #1955 (09-25 production release), #1951 (Polaris iteration 2), #1947 (schumacher iteration 2) and #1945 (BDD-3273, which Kushel approved) all merged 09-25, and #1872 (dorisStreich INTEX) closed without merging. See [`archive/prs/brand-data-pipeline.md`](../../../archive/prs/brand-data-pipeline.md). **#1878 (polaris iteration 1, on his review list) now conflicts**, and so do #1880 and #1879 (blueSeven). All three are probably fallout from the iteration-2 migrations merging. #1263, #1120, #1058 and #1055 (none his) still conflict.

```yaml
number: 1956
title: Hugo boss adjustments
author: MuniaL
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: []
updated: 2026-09-25
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1956
```
New 09-25, not his. Hugo Boss config adjustments. Chamindu36 approved it and it's `CLEAN`, but it isn't merged yet.

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
number: 1878
title: polaris brand migration
author: alirezaMoazenFashion
state: open
mergeable_state: conflicting
review_state: awaiting-first-review
requested_reviewers: [kushel-fc]
updated: 2026-09-16
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1878
```
Individually his to review, sole named reviewer. marianabassi approved, and his own review is still outstanding. **Now conflicts**, after Polaris iteration 2 (#1951) merged 09-25 and product-service#2802 opened 09-27 to move Polaris onto PIPE. That makes it very likely superseded. No activity since 09-16. See [`prs/to-review.md`](../../../prs/to-review.md).

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
