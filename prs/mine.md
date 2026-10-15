# PRs — mine

PRs Kushel opened, across both repos (plus backend, checked for his own PRs only). Populated on sync.

**One open, approved and clean.** Merged inside the window: #2944 (BDD-3215 1/3, `skuDownloadCounts` collection in `@repo/content-models`, 10-14 10:03 UTC), in production via release #2952 (10-15 07:48 UTC, which he triggered), and #2946 (BDD-3215 2/3, increment SKU download counts and map a download to its SKUs, 10-15 07:31 UTC), which merged after the 10-14 staging release and is not in production yet. #2939 (Fashion Cloud Test brand on PIPE) is in production via #2952. Part 3/3 isn't open. No open PRs of his on backend. See [`archive/prs/`](../archive/prs/).

```yaml
number: 2951
repo: product-service
title: "Carry transformedSku videos through to mergedSku and mappedSku"
author: kushel-fc
state: open
mergeable_state: clean
review_state: approved
requested_reviewers: [julsjacinto]
updated: 2026-10-15
url: https://github.com/fashioncloud/product-service/pull/2951
```
Opened 10-14 14:38 UTC, +487/-87, no ticket in the description. Videos on transformedSkus now reach mergedSku and mappedSku like images do (new `videos` global merge rule, `StyleMerger`/`StyleFlattener` changes); `PRODUCT_STYLE_UPDATED` events drop videos because PIPE videos have no `mediaServiceId` for the backend. Chamindu36 approved 10-14, dwiajik and CodeRabbit 10-15 07:25 UTC; all checks green. **Rollout order matters:** run `fill-global-merge-rules` from this branch against each environment before deploy, or every merge run fails; then backfill brands with `video_processing_enabled` from `merge` with `FORCE_UPDATE`.

His earlier self-closed PR (#2545, GTIN cleanup batch) is still parked in the archive, unrevisited.
