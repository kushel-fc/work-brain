# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

Still 9. Three left: **#2832 (FTP connection fix, was on his review list) was closed unmerged 10-01 14:04 UTC**, superseded by dwiajik's #2846. **#2838 (product-data-schema release changeset, was on his list) merged 14:36 UTC** with Chamindu36's approval only. #2829 (PDS SDK stage 4/4, which he'd approved) merged 08:48 UTC. Three new: #2851 (dwiajik, FTP command timeouts for move-images, the follow-up to the gabor hang), #2850 (dwiajik, productionize the PDS stream relay) and #2845 (dwiajik, draft PDS helper script). None name him individually. Opened and merged inside the window: #2846 (reuse one FTP connection per run), #2847 (block shorttooth for brands fully on PIPE with image sync), #2844, #2843 and the 10-01 staging and production releases (#2848, #2849). See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md). After a second read, mergeable states match last sync: #2827 and #2514 conflict, everything else is mergeable.

```yaml
number: 2851
title: "fix: run FTP commands with timeout"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [brand-data-dev (team), irembbt, alirezaMoazenFashion]
updated: 2026-10-02
url: https://github.com/fashioncloud/product-service/pull/2851
```
New 10-01 19:38 UTC. +294/-57 across 4 files. A move-images run for a 184,189-image brand on plain FTP (the gabor job) hung 4.5h+ on the `MKD` for the archive folder, because none of the per-file commands (`MKD`, `SIZE`, `RENAME`) had a timeout and `promise-ftp` has no keepalive. The PR says it hasn't confirmed why the connection went bad. The Changes Requested is CodeRabbit only (three passes). Not his to review, but it's the open fix for the gabor hangs in [`dagster-alerts/log.md`](../../../dagster-alerts/log.md).

```yaml
number: 2850
title: "Productionize the PDS stream relay"
author: dwiajik
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [brand-data-dev (team), abubakarwase, julsjacinto]
updated: 2026-10-02
url: https://github.com/fashioncloud/product-service/pull/2850
```
New 10-01 14:41 UTC. Part of BDD-3282. +891/-514 across 32 files. Fixes three places where the relay lost records without alerting, and stops the relay writing to consumer DLQs. The Changes Requested is CodeRabbit only. Not his.

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
New 10-01 11:40 UTC, draft. +486/-0. A local helper for reading a consumer's SQS queue with the PDS SDK. Not his.

```yaml
number: 2840
title: "BDD-3330 Use the shared schema in the publisher and the payload builders"
author: dwiajik
state: open
draft: true
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: []
updated: 2026-10-01
url: https://github.com/fashioncloud/product-service/pull/2840
```
Opened 09-30 13:55 UTC, draft. Retitled since last sync (was "Take the level and event types from the shared schema (publisher)"). Not his.

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
Still conflicts, probably since the Changesets publishing work (#2826, #2833) reworked the same workflow. Not his.

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
Draft. The Changes Requested is from CodeRabbit only. Not his. No change.

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
**Names Kushel individually.** Still no reviews from anyone, four days in. See [`prs/to-review.md`](../../../prs/to-review.md).

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
Individually his to review. Draft, already Changes Requested from someone else, 35 days unchanged, and still conflicts. See [`prs/to-review.md`](../../../prs/to-review.md).
