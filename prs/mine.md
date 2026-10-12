# PRs — mine

PRs Kushel opened, across both repos (plus backend, checked for his own PRs only). Populated on sync.

**Three open, opened 10-09. One conflicts.**

```yaml
number: 7085
repo: backend
title: "BDD-3223: Report CSV omission reasons and give PCS two minutes to resolve a download"
author: kushel-fc
state: open
mergeable_state: conflicting
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), platform (team), abubakarwase, alirezaMoazenFashion, msamprz, aledileo]
updated: 2026-10-12
url: https://github.com/fashioncloud/backend/pull/7085
```
Opened 10-09 15:04 UTC, +770/-302. Step 2 of the 3-PR deploy order in #2916 (PCS, then this, then frontend). **Now conflicts with its base.** Most likely cause: aledileo's backend#7078 (run the monolith from `apps/backend` as an Nx app) merged 10-10 10:52 UTC and went out in production deployment #7086. Only CodeRabbit has commented. No human review yet.

```yaml
number: 2916
repo: product-service
title: "BDD-3223: Accept 2000 GTINs per resolve and fix the CSV image extension, description and dropped-GTIN reporting"
author: kushel-fc
state: open
mergeable_state: blocked
review_state: awaiting-first-review
requested_reviewers: [brand-data-dev (team), dwiajik, abirprantofc]
updated: 2026-10-09
url: https://github.com/fashioncloud/product-service/pull/2916
```
Opened 10-09 15:04 UTC, +397/-38. PCS side of the CSV parity follow-up: `MAX_BULK_GTINS` 1000 to 2000, PCS to PDS timeout a flat 60s, an optional `imageSize` request field for the image file extension, `longDescription` for the description column, and a `csvSkipped` list of GTINs left out of the CSV. Deploys first of the three. CodeRabbit asked for changes, then approved 16:07 UTC. No human review yet. Mergeable, blocked on review.

```yaml
number: 2912
repo: product-service
title: "BDD-3214: map a resolve request to its download audit entry (2/3)"
author: kushel-fc
state: open
mergeable_state: clean
review_state: approved
requested_reviewers: [irembbt, abirprantofc]
updated: 2026-10-12
url: https://github.com/fashioncloud/product-service/pull/2912
```
Opened 10-09 12:45 UTC, +808/-21. Slice 5 part 2/3: pure `toAuditEntry` mapper (not called yet), `initiator` now validated against `DownloadInitiator` (unknown values get a 400), optional `organizationType`. Chamindu36 left five comments 10-09, approved 10-12 08:22 UTC. **Clean and ready to merge.** Part 3/3 (writing the entry) isn't open.

His earlier self-closed PR (#2545, GTIN cleanup batch) is still parked in the archive, unrevisited.
