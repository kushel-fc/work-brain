# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

3 to 4. New: **his own #2870** (BDD-3214 1/3, content-models package with the content cluster connection and the `multiDownloadAuditEntries` schema) and the 10-08 production release #2878, which carries his #2866. #2862 (dwiajik, PCS probe on the PDS queues) merged 10-07 09:52 UTC. Opened and merged inside the window: #2869, #2871 (BDD-3283 relay alarms), #2873 to #2875 (CI syncs), #2877 (bestseller brand IDs) and staging release #2876. See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md).

```yaml
number: 2878
title: "Production Release - 2026-10-08"
author: app/github-actions
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: [dwiajik, abirprantofc]
updated: 2026-10-08
url: https://github.com/fashioncloud/product-service/pull/2878
```
Opened 10-08 08:11 UTC, not merged at sync time. Its commits include his #2866 (CSV signed-URL cap), #2862, #2864, #2868, #2869, #2871 and #2824. Once this merges, #2866 is in production (earmarked). Not his.

```yaml
number: 2870
title: "BDD-3214: content-models package with the content cluster connection and the multiDownloadAuditEntries schema (1/3)"
author: kushel-fc
state: open
mergeable_state: blocked
review_state: approved
requested_reviewers: [irembbt, julsjacinto]
updated: 2026-10-08
url: https://github.com/fashioncloud/product-service/pull/2870
```
His. Opened 10-07 09:54 UTC, +981/-4. First of three for Slice 5's audit entry. Chamindu36 requested changes 09:58 UTC 10-07, he replied 20:35 UTC, then Chamindu36 approved 07:44 UTC and dwiajik 08:23 UTC 10-08. Still blocked, with irembbt and julsjacinto requested. See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 2845
title: "Add helper script to pull PDS stream data via the SQS consumer SDK"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-10-01
url: https://github.com/fashioncloud/product-service/pull/2845
```
Opened 10-01 11:40 UTC, draft. +486/-0. A local helper for reading a consumer's SQS queue with the PDS SDK. Not his. No change this cycle.

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
Not his. No change this cycle.
