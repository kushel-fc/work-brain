# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

5 to 9. Off the list: dwiajik's #2969 (SDK delete events, merged 10-16 10:14 UTC after it stopped conflicting). New: **his own #2981** (BDD-3223 CSV and PDS-call speed-ups), **Chamindu36's #2983 (AI origin for product images, names him)**, **dwiajik's #2977 (publish deletion events, names him)**, dwiajik's #2980 (deletion job Terraform) and staging release #2982. Opened and merged inside the window: **production release #2973** (10-16 11:33 UTC, merged by dushansilva, carrying his #2951, #2946 and #2956), dwiajik's #2971 and #2974, Chamindu36's #2976 and #2979, dushansilva's #2972, honeypsabu's #2975. #2960, #2961 and #2930 resolved from `unknown` to `blocked` (mergeable, waiting on review). See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md).

```yaml
number: 2983
title: "Add AI origin handling for product images"
author: Chamindu36
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev, dwiajik, kushel-fc]
updated: 2026-10-19
url: https://github.com/fashioncloud/product-service/pull/2983
```
Opened 10-19 08:32 UTC, +210/-2, no description. Adds `aiOrigin` to the product-image models package (likely BDD-3484, T2 Models: `metadata.aiProvenance` and `resolveIsAIImage`, High, In Review). CodeRabbit requested changes then approved. Names him. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2982
title: "Staging Release - 2026-10-19"
author: app/github-actions
state: open
mergeable_state: clean
review_state: approved
requested_reviewers: [julsjacinto]
updated: 2026-10-19
url: https://github.com/fashioncloud/product-service/pull/2982
```
Opened 10-19 07:50 UTC. Carries the deletion-publishing work (#2964, #2969, #2971), #2970, #2972, #2974, #2975, #2976 and #2979. Nothing of his.

```yaml
number: 2981
title: "BDD-3223: speed up PCS CSV generation and the PDS call"
author: kushel-fc
state: open
mergeable_state: blocked
review_state: approved
requested_reviewers: []
updated: 2026-10-19
url: https://github.com/fashioncloud/product-service/pull/2981
```
His. See [`prs/mine.md`](../../../prs/mine.md).

```yaml
number: 2980
title: "BDD-3468 T3.4: Terraform and deploy wiring for the deletion publishing job"
author: dwiajik
state: open
mergeable_state: blocked
review_state: approved
requested_reviewers: [abubakarwase, julsjacinto]
updated: 2026-10-19
url: https://github.com/fashioncloud/product-service/pull/2980
```
Opened 10-16 14:16 UTC, +169/-5. ECR repo, Fargate task definition and least-privilege role for the deletion publishing job. Chamindu36 and CodeRabbit approved 10-19. Doesn't name him.

```yaml
number: 2977
title: "BDD-3479 T3.3: publish the deletion events and fail loudly"
author: dwiajik
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [irembbt, kushel-fc]
updated: 2026-10-19
url: https://github.com/fashioncloud/product-service/pull/2977
```
Opened 10-16 11:23 UTC, +617/-85. Names him. See [`prs/to-review.md`](../../../prs/to-review.md).

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
Opened 10-15 11:49 UTC, +148/-15. Names him. See [`prs/to-review.md`](../../../prs/to-review.md).

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
Opened 10-13 09:37 UTC, +25/-0, no activity since 10-13 (six days). BDD-3388, the ticket it looked like it fixed, went Done 10-15. He is the only human reviewer requested. See [`prs/to-review.md`](../../../prs/to-review.md).
