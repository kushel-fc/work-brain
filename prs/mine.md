# PRs — mine

PRs Kushel opened, across both repos. Populated on sync.

**Zero open in product-service or brand-data-pipeline.** He opened and merged one small PR inside the window: [brand-data-pipeline#1978](../archive/prs/brand-data-pipeline.md) (config.json for fynchHatton and milestone, +2/-2, approved by abirprantofc and dwiajik, merged 09-29 14:14 UTC). It went with the automated PIPE-enable PRs for those brands (product-service#2815/#2816). fynchHatton_FEED2 then exceeded its 3h run limit on the run that started 16:41 UTC, see [`dagster-alerts/log.md`](../dagster-alerts/log.md). The Slice 3.2 product-service stack is finished (#2806, 4/4, merged 09-28).

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
The backend half of Slice 3.2. aledileo requested changes and then approved (09-23). **irembbt's Changes Requested from 09-24 11:59 UTC is still the standing verdict.** He pushed again 09-27 19:10 UTC and nobody has re-reviewed, now three days on. No change this cycle. Now that the PCS side has merged, this is the last blocker on BDD-3206/BDD-3223.

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
dwiajik approved it 09-23. It's mergeable and ready for him to merge, still unmerged this cycle.

His earlier self-closed PR (#2545, GTIN cleanup batch) is still parked in the archive, unrevisited.
