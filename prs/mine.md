# PRs — mine

PRs Kushel opened, across both repos. Populated on sync.

**Zero open in product-service or brand-data-pipeline.** Video Delivery Slice 3.2's product-service stack is finished: [product-service#2806](../archive/prs/product-service.md) (4/4, wiring `multi-download/resolve` to CSV generation, with video/csv independence) opened 09-28 10:50 UTC. He merged it himself at 12:23 UTC after approvals from Chamindu36, irembbt and CodeRabbit. The merged and closed parts are in [`archive/prs/product-service.md`](../archive/prs/product-service.md).

## Outside the tracked repos (backend)

These aren't part of the regular pull. They're listed because BDD-3206, one of his In Review tickets, depends on them.

```yaml
number: 7043
repo: backend
title: "BDD-3206: Route video+CSV requests to PCS and append its CSV to the archive"
author: kushel-fc
state: open
mergeable_state: mergeable
review_state: changes-requested
requested_reviewers: [dwiajik, abubakarwase, msamprz, maria-subero, irembbt]
updated: 2026-09-27
url: https://github.com/fashioncloud/backend/pull/7043
```
The backend half of Slice 3.2. aledileo requested changes and then approved (09-23). **irembbt's Changes Requested from 09-24 11:59 UTC is still the standing verdict.** He pushed again 09-27 19:10 UTC but nobody has re-reviewed. Now that the PCS side has merged, this is the last blocker on BDD-3206/BDD-3223.

```yaml
number: 7048
repo: backend
title: "fix(getCsvContent): sort images before resolving filenames, not after"
author: kushel-fc
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [irembbt, abubakarwase, dwiajik]
updated: 2026-09-27
url: https://github.com/fashioncloud/backend/pull/7048
```
dwiajik approved it. It's mergeable and ready for him to merge.

His earlier self-closed PR (#2545, GTIN cleanup batch) is still parked in the archive, unrevisited.
