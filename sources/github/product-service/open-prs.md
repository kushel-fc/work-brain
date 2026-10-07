# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

3 to 3. **No open PR names him.** #2824 (BDD-3328, pin the product-data-schema to the zod schemas) merged 10-06 13:46 UTC. New: #2862 (dwiajik, BDD-3284 PCS probe on the PDS queues). Opened and merged inside the window: **his own #2866** (BDD-3223, cap the CSV artifact signed-URL lifetime at the 7-day S3 limit, opened 13:31 and merged 13:48 UTC 10-06, approved by Chamindu36), dwiajik's #2864 (BDD-3328 AsyncAPI regen), Chamindu36's #2868 (AssistantController Product Support persona), and releases #2863, #2865 (production, 11:54 UTC) and #2867 (staging, 15:28 UTC). #2866 merged after the production release, so it's only in staging so far. See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). Mergeable states for #2845 and #2744 read `unknown` first, `mergeable` on a second read.

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
number: 2862
title: "BDD-3284 PCS to receive from the PDS queues and measure"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [julsjacinto, alirezaMoazenFashion]
updated: 2026-10-07
url: https://github.com/fashioncloud/product-service/pull/2862
```
Opened 10-06 08:45 UTC. +149/-2. A probe in PCS that subscribes to the PDS queues, acks everything and emits metrics through `MetricsService`, to prove the relay to FIFO queue to SDK path before PCS relies on it. irembbt approved 10-07 08:40 UTC. The Changes Requested is CodeRabbit's, two minutes later. Not his.

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
