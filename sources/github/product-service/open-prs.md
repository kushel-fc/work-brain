# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Up from 6 to 9. Four new: **#2832 (FCMachineUser, FTP connection fix for the image downloader, names Kushel)**, **#2838 (dwiajik, product-data-schema release changeset, names Kushel)**, #2829 (dwiajik, PDS Streams SDK stage 4/4, which he approved 10-01 08:06 UTC) and #2840 (dwiajik, BDD-3330, draft). One left: #2826 (Chamindu36, package publishing scripts) merged 09-30 09:47 UTC, 11 minutes after he approved it. Opened and merged inside the window: #2842 (product-data-schema Dates), #2841 (production release), #2839 (agent personas), #2837/#2830 (staging releases), **#2836 (dwiajik, timeout on source-connector directory listings, the likely fix for the 09-30 image-sync hang wave)**, #2835 (verpass on PIPE), #2834 (BDD-3332), #2833 (Changesets), #2831 (PDS stream relay IAM) and #2828. See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). After a second read: **#2827 newly conflicts** and **#2514 newly conflicts**. Neither is Kushel's.

```yaml
number: 2840
title: "BDD-3330 Take the level and event types from the shared schema (publisher)"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-10-01
url: https://github.com/fashioncloud/product-service/pull/2840
```
New 09-30 13:55 UTC, draft. +13/-13. Not his.

```yaml
number: 2838
title: "chore: release @fashioncloud/product-data-schema"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), irembbt, kushel-fc]
updated: 2026-09-30
url: https://github.com/fashioncloud/product-service/pull/2838
```
New 09-30 13:40 UTC, **names Kushel individually**. A one-file changeset (+5) that marks `@fashioncloud/product-data-schema` for a patch release (1.0.1 to 1.0.2). The description warns the first publish is still blocked on npm trusted-publishing setup. No reviews yet. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2832
title: "fix(image-downloader): close FTP connections and bound transfers"
author: FCMachineUser
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [kushel-fc, abirprantofc]
updated: 2026-09-30
url: https://github.com/fashioncloud/product-service/pull/2832
```
New 09-30 11:43 UTC, **names Kushel individually**. +442/-13 across 9 files. Chamindu36 approved 14:21 UTC. It's the fix for blueSeven's stuck ONA image download. See [`prs/to-review.md`](../../../prs/to-review.md).

```yaml
number: 2829
title: "PDS Streams SDK: resolve claim-check payloads (stage 4/4)"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [irembbt, abirprantofc]
updated: 2026-10-01
url: https://github.com/fashioncloud/product-service/pull/2829
```
New 09-30 10:11 UTC. +877/-126 across 21 files. **Kushel approved it 10-01 08:06 UTC**, and CodeRabbit moved from Changes Requested to Approved at 08:41 UTC. The last stage of the PDS Streams SDK series (stages 1 to 3 merged). irembbt and abirprantofc are still requested.

```yaml
number: 2827
title: "fix(ci): pass the tarball to npm as an absolute path"
author: dwiajik
state: open
mergeable_state: conflicting
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abirprantofc, alirezaMoazenFashion]
updated: 2026-09-30
url: https://github.com/fashioncloud/product-service/pull/2827
```
**Newly conflicts**, probably after the Changesets publishing work (#2826, #2833) reworked the same workflow. Not his.

```yaml
number: 2824
title: "BDD-3328 Sync product-data-schema with publishing-job"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: []
updated: 2026-10-01
url: https://github.com/fashioncloud/product-service/pull/2824
```
Draft, retitled since last sync (was "Pin the stream schemas to the published types..."). The Changes Requested is from CodeRabbit only. +547/-87. Not his.

```yaml
number: 2808
title: "fix(extract): restore Mongo AWS auth and expose ONA startup failures"
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), abubakarwase, kushel-fc]
updated: 2026-09-28
url: https://github.com/fashioncloud/product-service/pull/2808
```
**Names Kushel individually.** Still no reviews, three days in. See [`prs/to-review.md`](../../../prs/to-review.md).

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
Not his. No change.

```yaml
number: 2514
title: "feat(llm-based-agent-setup): add mutations tool group for SKU reprocessing and mapping-rule updates"
author: dushansilva
state: open
draft: true
mergeable_state: conflicting
review_state: changes-requested
requested_reviewers: [brand-data-dev (team), irembbt, kushel-fc, dwiajik, julsjacinto]
updated: 2026-08-28
url: https://github.com/fashioncloud/product-service/pull/2514
```
Individually his to review. Draft, already Changes Requested from someone else, 34 days unchanged, and **now conflicts** (likely after the 09-30 agent-persona merges, #2834/#2839). See [`prs/to-review.md`](../../../prs/to-review.md).
