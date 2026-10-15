# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

3 to 5. Off the list: Chamindu36's #2941 (package scope, merged 10-14 08:59 UTC without his review). New: **his own #2951** (videos through to mergedSku/mappedSku, approved and clean), Chamindu36's #2954 (PDS replay progress endpoint, he approved it) and dwiajik's #2955 (PDS delete event types). Opened and merged inside the window: **his own #2944 (BDD-3215 1/3, 10-14 10:03 UTC) and #2946 (2/3, 10-15 07:31 UTC)**, Chamindu36's #2943, #2948, #2949 (PDS replay), honeypsabu's #2947 (TIMEZONE GmbH on PIPE), dwiajik's #2953 (Datadog units), staging release #2942 and production release #2952 (10-15 07:48 UTC, triggered by him). See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md).

```yaml
number: 2955
title: "BDD-3466: add delete event types to product-data-schema"
author: dwiajik
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: []
updated: 2026-10-15
url: https://github.com/fashioncloud/product-service/pull/2955
```
Opened 10-15 08:33 UTC, +230/-25. First step of deletion events in PDS Streams: `PRODUCT_DATA_SKU/COLOR/STYLE_DELETE` in the schema package. Only CodeRabbit has reviewed. Doesn't name him.

```yaml
number: 2954
title: "feat: GET ednpoint to check progress tracking and detailed error responses for PDS replay runs"
author: Chamindu36
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: []
updated: 2026-10-15
url: https://github.com/fashioncloud/product-service/pull/2954
```
Opened 10-15 08:27 UTC, +335/-32, no description. dwiajik approved 08:33 UTC and he approved 08:37 UTC; CodeRabbit's Changes Requested is what holds the aggregate.

```yaml
number: 2951
title: "Carry transformedSku videos through to mergedSku and mappedSku"
author: kushel-fc
state: open
mergeable_state: clean
review_state: approved
requested_reviewers: [julsjacinto]
updated: 2026-10-15
url: https://github.com/fashioncloud/product-service/pull/2951
```
His. Opened 10-14 14:38 UTC, +487/-87. See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 2940
title: "Full workflow orchestration for PDS replay worker"
author: Chamindu36
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [irembbt, julsjacinto, kushel-fc]
updated: 2026-10-15
url: https://github.com/fashioncloud/product-service/pull/2940
```
Opened 10-13 15:58 UTC, +3120/-59. dwiajik approved 10-14 14:55 UTC and abubakarwase 10-15 07:54 UTC; CodeRabbit's Changes Requested still holds the aggregate. Still names him. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2930
title: "Exclude BACKEND_DB from global certificate merge sources"
author: irembbt
state: open
mergeable_state: unknown
review_state: changes-requested
requested_reviewers: [kushel-fc]
updated: 2026-10-13
url: https://github.com/fashioncloud/product-service/pull/2930
```
Opened 10-13 09:37 UTC, +25/-0, no activity since 10-13. BDD-3388, the ticket it looked like it fixed, went Done 10-15. He is the only human reviewer requested. See [`prs/to-review.md`](../../../prs/to-review.md).
