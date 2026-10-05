# PRs — mine

PRs Kushel opened, across both repos. Populated on sync.

**Zero open in product-service or brand-data-pipeline**, and he opened none this cycle (or the two before). **backend#7043 now has a merge conflict** with `staging` (second read confirmed `DIRTY`). His last one, [brand-data-pipeline#1978](../archive/prs/brand-data-pipeline.md) (fynchHatton/milestone config), merged 09-29. The fynchHatton run-limit alerts that followed turned out to be the brand's image FTP, not his config. He disabled the schedule 09-30, see [`dagster-alerts/log.md`](../dagster-alerts/log.md).

## Outside the tracked repos (backend)

These aren't part of the regular pull. They're listed because BDD-3206, one of his In Review tickets, depends on them.

```yaml
number: 7043
repo: backend
title: "BDD-3206: Route video+CSV requests to PCS and append its CSV to the archive"
author: kushel-fc
state: open
mergeable_state: conflicting
review_state: changes-requested
requested_reviewers: [dwiajik, abubakarwase, msamprz, maria-subero, irembbt]
updated: 2026-09-27
url: https://github.com/fashioncloud/backend/pull/7043
```
The backend half of Slice 3.2. aledileo requested changes and then approved (09-23). **irembbt's Changes Requested from 09-24 11:59 UTC is still the standing verdict.** He pushed again 09-27 19:10 UTC and nobody has re-reviewed, now eight days on. **New this cycle: it conflicts with `staging`.** It was mergeable at the 10-02 sync, so something landed on `staging` between 10-02 and 10-05. It needs a rebase before irembbt's re-review is worth asking for. Now that the PCS side has merged, this is the last blocker on BDD-3206/BDD-3223.

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
dwiajik approved it 09-23. Still mergeable after a second read and ready for him to merge, unmerged twelve days later. No change this cycle.

His earlier self-closed PR (#2545, GTIN cleanup batch) is still parked in the archive, unrevisited.
