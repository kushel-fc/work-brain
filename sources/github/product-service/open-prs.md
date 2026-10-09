# product-service — open PRs

Full raw open-PR list. Populated on sync. Kushel's curated view (his own + requested-of-him) lives in [`prs/mine.md`](../../../prs/mine.md) / [`prs/to-review.md`](../../../prs/to-review.md).

4 to 5. Off the list: **his own #2870** (BDD-3214 1/3) merged 10-08 12:31 UTC and went out in production release #2893 (14:27 UTC). Production release #2878 (carrying his #2866) merged 10-08 08:39 UTC, a few minutes before last sync wrote it up as open. New: #2899 (10-09 production release), #2900 and #2902 (dwiajik, ALB 5xx SLOs for PDS and PCS). Opened and merged inside the window: #2879 to #2898 and #2901, mostly dwiajik's PDS/PCS work (PDS probe on, CPU autoscaling, Mongo secondary reads #2894, stream throughput, image reprocessing candidates by status #2892) plus Chamindu36's delete-brand-product-data script (#2879), irembbt's NOS season fix (#2881), dushansilva's otto-image-upload fix (#2882), betomoretti's dev Atlas clusters (#2895), and production releases #2886 and #2893. See [`archive/prs/product-service.md`](../../../archive/prs/product-service.md).

```yaml
number: 2902
title: "PCS: Add ALB target 5xx ratio SLO and monitor, enable prod monitoring"
author: dwiajik
state: open
mergeable_state: blocked
review_state: approved
requested_reviewers: [brand-data-dev (team), abirprantofc, alirezaMoazenFashion]
updated: 2026-10-09
url: https://github.com/fashioncloud/product-service/pull/2902
```
Opened 10-09 08:17 UTC, +59/-2. 99.5% ALB availability SLO and 5xx-ratio monitor for product-content-service, and turns PCS monitoring on in production. Follows Aji's ask for a PCS monitor in the 10-08 PDS 5xx thread. Kushel approved 08:45 UTC. Not his.

```yaml
number: 2900
title: "PDS: Add ALB target request widget, 5xx ratio monitor and SLO"
author: dwiajik
state: open
mergeable_state: blocked
review_state: approved
requested_reviewers: [brand-data-dev (team), irembbt, julsjacinto]
updated: 2026-10-09
url: https://github.com/fashioncloud/product-service/pull/2900
```
Opened 10-09 08:03 UTC, +103/-0. Same SLO and monitor for product-data-service plus a dashboard widget. GitHub's aggregate says Changes Requested, but that's CodeRabbit's first pass (dwiajik answered in-thread); Kushel approved 08:45 UTC. Not his.

```yaml
number: 2899
title: "Production Release - 2026-10-09"
author: app/github-actions
state: open
mergeable_state: unstable
review_state: approved
requested_reviewers: [dwiajik, alirezaMoazenFashion]
updated: 2026-10-09
url: https://github.com/fashioncloud/product-service/pull/2899
```
Opened 10-09 08:02 UTC. Kushel approved 08:28 UTC. Unstable because the `product-service-mongo-clusters-staging` Spacelift check failed (gitleaks still running at sync time). Carries #2891, #2892, #2894 (PDS reads from Mongo secondaries, Aji's fix for the 10-08 PDS 5xx), #2895, #2896, #2897. Not his.

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
Opened 10-01 11:40 UTC, draft. +486/-0. A local helper for reading a consumer's SQS queue with the PDS SDK. Not his. No change. Mergeable state read `unknown` this pass, left at last known value.

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
Not his. No change. Mergeable state read `unknown` this pass, left at last known value.
