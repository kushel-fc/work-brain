# PRs — to review

PRs where Kushel is a requested reviewer. Populated on sync.

Queue down to 3 (was 4). He approved **brand-data-pipeline#1945** 09-24 15:12 UTC (and, unasked, its dependency product-service#2764 on 09-25 08:28 UTC). **product-service#2683** (swing) closed without merging 09-24 after 11 days with no human review. One new: **product-service#2783** (dushansilva), which already has three approvals.

```yaml
number: 2783
repo: product-service
title: "otto-image-upload: temporarily switch to CloudWatch logging (diagnostic)"
author: dushansilva
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [kushel-fc]
updated: 2026-09-25
url: https://github.com/fashioncloud/product-service/pull/2783
```
New 09-25 08:20 UTC. A one-flag diagnostic change (`enable_firelens_logging = false`) to find out why INFO/WARNING logs from otto-image-upload never reach Datadog. Chamindu36, CodeRabbit and dwiajik approved it within 8 minutes and it's `CLEAN`, so his review doesn't block the merge.

```yaml
number: 1878
repo: brand-data-pipeline
title: polaris brand migration
author: alirezaMoazenFashion
state: open
mergeable_state: mergeable
review_state: (no decision yet)
requested_reviewers: [kushel-fc]
updated: 2026-09-16
url: https://github.com/fashioncloud/brand-data-pipeline/pull/1878
```
Sole named reviewer, 9 days idle. marianabassi approved, but it's still `BLOCKED`. The author opened a Polaris iteration 2 on 09-24 (brand-data-pipeline#1951, approved by dwiajik, with product-service#2773), which may supersede this one. Worth checking with alirezaMoazenFashion before reviewing it.

```yaml
number: 2514
repo: product-service
title: "feat(llm-based-agent-setup): add mutations tool group for SKU reprocessing and mapping-rule updates"
author: dushansilva
state: open
draft: true
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [brand-data-dev (team), irembbt, kushel-fc, dwiajik, julsjacinto]
updated: 2026-08-28
url: https://github.com/fashioncloud/product-service/pull/2514
```
Draft, already has Changes Requested from someone else. Stale, 28 days untouched.
