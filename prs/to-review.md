# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

**Four by name, three new.** #2928 merged 10-13 09:21 UTC without his review (dwiajik and CodeRabbit approved). irembbt's #2930 has him as the only human reviewer. Chamindu36's #2940 and #2941 continue the PDS replay work.

```yaml
number: 2930
repo: product-service
title: "Exclude BACKEND_DB from global certificate merge sources"
author: irembbt
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [kushel-fc]
updated: 2026-10-13
url: https://github.com/fashioncloud/product-service/pull/2930
```
Opened 10-13 09:37 UTC, +25/-0, no description. Likely the fix for [BDD-3388](../support/open.md) (Suri certificates still in `manufacturerAttributes` because the merge takes the `backend_db` feed's data), which Irem moved to In Progress the same morning. He is the only human reviewer requested. dwiajik's review was dismissed; CodeRabbit has Changes Requested. Small and blocking a support ticket, so first in line.

```yaml
number: 2940
repo: product-service
title: "Full workflow orchestration for PDS replay worker"
author: Chamindu36
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [brand-data-dev, irembbt, julsjacinto, dwiajik, kushel-fc]
updated: 2026-10-14
url: https://github.com/fashioncloud/product-service/pull/2940
```
Opened 10-13 15:58 UTC, +3120/-59. The replay Fargate task: claims a `QUEUED` job, reads the stream the way the live relay would, and finishes the job so it can resume. Only CodeRabbit has reviewed (Changes Requested). Five reviewers named, so not his alone.

```yaml
number: 2941
repo: product-service
title: "Refactor package references to use @fashioncloud scope and update dependency paths"
author: Chamindu36
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev, dwiajik, kushel-fc]
updated: 2026-10-14
url: https://github.com/fashioncloud/product-service/pull/2941
```
Opened 10-14 08:16 UTC, +2166/-1406, no description. Package-scope rename. Not reviewed yet.

```yaml
number: 2019
repo: brand-data-pipeline
title: "Bump urllib3 from 2.7.0 to 2.8.0 in /brand-migration in the uv group across 1 directory"
author: app/dependabot
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev, kushel-fc, alirezaMoazenFashion]
updated: 2026-10-07
url: https://github.com/fashioncloud/brand-data-pipeline/pull/2019
```
Dependabot patch bump, opened 10-07 15:38 UTC. Unchanged since. Blocked on review.

Outside the two tracked repos, `gh` still lists dependabot bumps on data-enrichment-service, price-importer and others. Not tracked here.
