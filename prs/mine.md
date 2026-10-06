# PRs — mine

PRs Kushel opened, across both repos. Populated on sync.

**Zero open in product-service or brand-data-pipeline**, and he opened none there this cycle. **Both backend PRs behind Slice 3.2 merged 10-05.** irembbt approved backend#7043 11:00 UTC, he cleared the `staging` conflict and merged it and #7048 at 11:39 UTC (moved to [`archive/prs/backend.md`](../archive/prs/backend.md)). He then opened **backend#7066**, a BDD-3223 follow-up, which is approved and waiting to merge.

## Outside the tracked repos (backend)

These aren't part of the regular pull. They're listed because they carry his Video Delivery work.

```yaml
number: 7066
repo: backend
title: "BDD-3223: Serve the CSV of every download initiator through one POST and GET /downloads/:id"
author: kushel-fc
state: open
mergeable_state: mergeable
review_state: approved
requested_reviewers: [abirprantofc]
updated: 2026-10-06
url: https://github.com/fashioncloud/backend/pull/7066
```
Opened 10-05 18:54 UTC, against `staging`. +1300/-246 across 16 files. `POST /downloads/request` and `/request/bulk` take a `csv` option, so every initiator gets its CSV in the same call and downloads it from `GET /downloads/:id`. With `enable_pcs_csv_generation` on, PCS builds the CSV at request time; with it off, the token carries the GTINs and the backend builds it on redemption. A PCS failure never falls back to the backend generator. **dwiajik approved it** after several comment rounds (he answered twice). abirprantofc is still requested. His last push was 10-06 08:43 UTC, so CI was still running at sync time (unit tests and CodeRabbit pending, integration and setup passing), hence GitHub's `UNSTABLE`.

His earlier self-closed PR (#2545, GTIN cleanup batch) is still parked in the archive, unrevisited.
