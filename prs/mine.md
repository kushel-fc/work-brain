# PRs — mine

PRs Kushel opened, across both repos (plus backend, checked for his own PRs only). Populated on sync.

**None open.** Both of his PRs from the window merged 10-15 and are in staging only, via staging release product-service#2967 (15:06 UTC): [#2951](../archive/prs/product-service.md) (transformedSku videos through to mergedSku/mappedSku, merged by him 14:45 UTC) and [#2956](../archive/prs/product-service.md) (BDD-3215 3/3, count retailer downloads per SKU on every resolve, opened and merged 08:47 to 11:52 UTC). #2946 (BDD-3215 2/3) is in the same staging release. No production release has gone out since #2952 (10-15 07:48 UTC). **#2951 rollout:** `fill-global-merge-rules` from that branch has to have been run against staging before #2967 deployed, and against production before the next production release, or every merge run fails. Then the `video_processing_enabled` backfill from `merge` with `FORCE_UPDATE`. Earmarked in [`_meta/earmarks.md`](../_meta/earmarks.md). No open PRs of his on backend. See [`archive/prs/`](../archive/prs/).

His earlier self-closed PR (#2545, GTIN cleanup batch) is still parked in the archive, unrevisited.
