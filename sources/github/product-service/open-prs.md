# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

5 to 5. Off the list: **his own #2951** (merged by him 10-15 14:45 UTC, in staging release #2967), Chamindu36's #2940 (merged 11:56 UTC without his review) and #2954, dwiajik's #2955. New: dwiajik's #2969 (SDK delete events, conflicting), dushansilva's #2966 (move-images subdirectories), #2961 (Luisa Cerano mapping rules) and **#2960 (Willen mapping rules, names him)**. Opened and merged inside the window: **his own #2956 (BDD-3215 3/3, 11:52 UTC)**, dwiajik's #2957, #2959, #2963, #2964, Chamindu36's #2958, #2962, #2965, #2968, #2970, and staging release #2967 (15:06 UTC, triggered by dushansilva). No production release since #2952. See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md).

```yaml
number: 2969
title: "BDD-3471: T1.3: SDK accepts and delivers delete events"
author: dwiajik
state: open
mergeable_state: dirty
review_state: awaiting-first-review
requested_reviewers: [abubakarwase, julsjacinto]
updated: 2026-10-16
url: https://github.com/fashioncloud/product-service/pull/2969
```
Opened 10-15 15:13 UTC, +248/-48. Consumer half of PDS Streams deletion events: the SDK now accepts the delete types from #2955 instead of treating them as malformed. Conflicts with the base. Only CodeRabbit has reviewed (its latest review is an approval). Doesn't name him.

```yaml
number: 2966
title: "feat(move-images): optionally list images in subdirectories"
author: dushansilva
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [dwiajik, abubakarwase]
updated: 2026-10-15
url: https://github.com/fashioncloud/product-service/pull/2966
```
Opened 10-15 13:58 UTC, +281/-5. Opt-in `IMAGE_RECURSIVE` / `IMAGE_MAX_DEPTH` for the move-images job; companion brand-data-pipeline#2060 already merged. Only CodeRabbit has reviewed (Changes Requested). Doesn't name him.

```yaml
number: 2961
title: "Luisa Cerano brand migration"
author: dushansilva
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: [irembbt, julsjacinto]
updated: 2026-10-15
url: https://github.com/fashioncloud/product-service/pull/2961
```
Opened 10-15 12:08 UTC, +48/-0. Mapping-rule payload (40 rules) for the Luisa Cerano FEED migration; pipeline side #2058 merged. CodeRabbit approved. Doesn't name him.

```yaml
number: 2960
title: "Willen brand migration mapping rules"
author: dushansilva
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [irembbt, kushel-fc]
updated: 2026-10-15
url: https://github.com/fashioncloud/product-service/pull/2960
```
Opened 10-15 11:49 UTC, +148/-15. Names him. See [`prs/to-review.md`](../../../prs/to-review.md).

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
