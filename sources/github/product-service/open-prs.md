# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

3 to 3, but all three are different. Off the list: **his own #2929 (merged 10-13 08:48 UTC)**, Chamindu36's #2928 (merged 09:21 UTC) and dwiajik's draft #2845 (closed unmerged 09:39 UTC). New, all three naming him: irembbt's #2930, Chamindu36's #2940 and #2941. Opened and merged inside the window: **his own #2939** (Fashion Cloud Test brand on PIPE, merged 10-14 08:22 UTC), #2931 to #2937, staging release #2936 and production release #2938 (10-13 14:21 UTC, which carried #2929). See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md).

```yaml
number: 2941
title: "Refactor package references to use @fashioncloud scope and update dependency paths"
author: Chamindu36
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev, dwiajik, kushel-fc]
updated: 2026-10-14
url: https://github.com/fashioncloud/product-service/pull/2941
```
Opened 10-14 08:16 UTC, +2166/-1406, no description. Names him. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2940
title: "Full workflow orchestration for PDS replay worker"
author: Chamindu36
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [brand-data-dev, irembbt, julsjacinto, dwiajik, kushel-fc]
updated: 2026-10-14
url: https://github.com/fashioncloud/product-service/pull/2940
```
Opened 10-13 15:58 UTC, +3120/-59. The PDS replay Fargate task (claims the queued job, reads the stream, finishes the job). Changes Requested is CodeRabbit's only. Names him. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2930
title: "Exclude BACKEND_DB from global certificate merge sources"
author: irembbt
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [kushel-fc]
updated: 2026-10-13
url: https://github.com/fashioncloud/product-service/pull/2930
```
Opened 10-13 09:37 UTC, +25/-0, no description. Looks like the fix for BDD-3388 (Suri certificates kept via `backend_db` in the merge), which Irem took out of Triage at 09:20 UTC. He is the only human reviewer requested. See [`prs/to-review.md`](../../../prs/to-review.md).
