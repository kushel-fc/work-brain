# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

9 to 5. Off the list, all merged unless noted: **his own #2981** (10-19 10:27 UTC, in production release #2999), Chamindu36's #2983 (he approved 09:28 UTC, merged a minute later), dwiajik's #2977 and #2980 (10:05 UTC, without his review), staging release #2982, and irembbt's #2930 (**closed unmerged** 10-20 08:09 UTC). New: **his own #3002** (video reprocessing 2/4) and dwiajik's #3003 (draft). Opened and merged inside the window: **his own #2996 (1/4) and #3001 (JMeter test)**, production releases #2984 (10-19 10:03 UTC) and #2999 (10-20 07:58 UTC), staging release #2994, dwiajik's #2985, #2986, #2987, #2992, #2993, #2995, #2997, #2998 and #3004, Chamindu36's #2989 and #2990, honeypsabu's #2988, physicalattraction's #3000 (CODEOWNERS). See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md).

```yaml
number: 3003
title: "Longer timeout and more retries for PD stream credentials"
author: dwiajik
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: []
updated: 2026-10-20
url: https://github.com/fashioncloud/product-service/pull/3003
```
Draft, opened 10-20 07:38 UTC, +85/-4. Follows the 10-19 21:48 UTC `PUBLISHING_JOB_PD_STREAMS_FAILED` alert (`CredentialsProviderError`: the SDK couldn't get credentials from the task's credentials endpoint). CodeRabbit requested changes, then approved. Doesn't name him.

```yaml
number: 3002
title: "BDD-3496: video reprocessing API query layer and shared media strategies (2/4)"
author: kushel-fc
state: open
mergeable_state: blocked
review_state: approved
requested_reviewers: [julsjacinto]
updated: 2026-10-20
url: https://github.com/fashioncloud/product-service/pull/3002
```
His. See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 2966
title: "feat(move-images): optionally list images in subdirectories"
author: dushansilva
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [brand-data-dev, dwiajik, abubakarwase]
updated: 2026-10-19
url: https://github.com/fashioncloud/product-service/pull/2966
```
Opened 10-15 13:58 UTC, +281/-5. Opt-in `IMAGE_RECURSIVE` / `IMAGE_MAX_DEPTH` for the move-images job; companion brand-data-pipeline#2060 already merged. Only CodeRabbit has reviewed (Changes Requested). Back to draft since the last sync. Doesn't name him.

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
Opened 10-15 11:49 UTC, +148/-15. Names him. Five days, no human review. See [`prs/to-review.md`](../../../prs/to-review.md).
