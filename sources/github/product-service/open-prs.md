# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

5 to 3. Off the list, all merged 10-12: **his own #2912 (09:02 UTC, by Chamindu36) and #2916 (10:26 UTC, by him)**, and Chamindu36's #2914 and #2915 (PDS replay worker). New: **his own #2929** (rename PCS's database) and Chamindu36's #2928 (PDS replay writer, names him as reviewer). Opened and merged inside the window: his #2917 (Slice 5 part 3/3), #2918, #2921, #2923, #2924, #2925, #2926, #2927, staging release #2920 and production release #2922 (10-12 12:10 UTC, after #2916 and #2917 merged). See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md).

```yaml
number: 2929
title: "BDD-3214: name PCS's database fc_product_content_service"
author: kushel-fc
state: open
mergeable_state: unstable
review_state: approved
requested_reviewers: [abubakarwase]
updated: 2026-10-13
url: https://github.com/fashioncloud/product-service/pull/2929
```
His. Opened 10-13 08:33 UTC. See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 2928
title: "Implement Replay writer code reusing the pds-relay-core logic."
author: Chamindu36
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [irembbt, kushel-fc]
updated: 2026-10-13
url: https://github.com/fashioncloud/product-service/pull/2928
```
Opened 10-13 08:01 UTC, +1306/-156. PDS replay writer. Names him. See [`prs/to-review.md`](../../../prs/to-review.md).

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
Opened 10-01 11:40 UTC, draft. +486/-0. A local helper for reading a consumer's SQS queue with the PDS SDK. Not his. No change. Mergeable state read `unknown` again, left at last known value.
