# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

**Three by name, none new.** #2941 (package scope) merged 10-14 08:59 UTC without his review. He approved Chamindu36's new #2954 (PDS replay progress endpoint) 10-15 08:37 UTC; it doesn't list him as requested, so it isn't tracked here. #2930 is now two days old with BDD-3388 already Done.

```yaml
number: 2930
repo: product-service
title: "Exclude BACKEND_DB from global certificate merge sources"
author: irembbt
state: open
mergeable_state: unknown
review_state: changes-requested
requested_reviewers: [kushel-fc]
updated: 2026-10-13
url: https://github.com/fashioncloud/product-service/pull/2930
```
Opened 10-13 09:37 UTC, +25/-0, no description, no activity since 10-13. It looked like the fix for BDD-3388 (Suri certificates kept in `manufacturerAttributes` because the merge takes the `backend_db` feed's data), but Irem closed BDD-3388 10-15 08:17 UTC with this still open. He is the only human reviewer requested. Worth asking Irem whether it's still needed before reviewing.

```yaml
number: 2940
repo: product-service
title: "Full workflow orchestration for PDS replay worker"
author: Chamindu36
state: open
mergeable_state: blocked
review_state: changes-requested
requested_reviewers: [irembbt, julsjacinto, kushel-fc]
updated: 2026-10-15
url: https://github.com/fashioncloud/product-service/pull/2940
```
Opened 10-13 15:58 UTC, +3120/-59. The replay Fargate task: claims a `QUEUED` job, reads the stream the way the live relay would, and finishes the job so it can resume. dwiajik approved 10-14 14:55 UTC and abubakarwase 10-15 07:54 UTC; only CodeRabbit's Changes Requested holds the aggregate. Two approvals in, so his review is no longer the gate.

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
