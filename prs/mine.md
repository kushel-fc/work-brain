# PRs — mine

PRs Kushel opened, across both repos (plus backend, checked for his own PRs only). Populated on sync.

**One open, new: #2981.** His 10-15 PRs (#2951, #2946, #2956) all reached production in release product-service#2973 (10-16 11:33 UTC). **#2951 rollout:** the `videos` global merge rule wasn't in production when that release deployed. katag, polaris and florez failed at map/merge within 25 minutes, and he said in-thread (12:08 UTC) he'd update the global merge rule. No merge-step failures since. The `video_processing_enabled` backfill (rerun from `merge` with `FORCE_UPDATE`) isn't visible as done. No open PRs of his on backend or brand-data-pipeline.

```yaml
number: 2981
repo: product-service
title: "BDD-3223: speed up PCS CSV generation and the PDS call"
author: kushel-fc
state: open
mergeable_state: blocked
review_state: approved
requested_reviewers: []
updated: 2026-10-19
url: https://github.com/fashioncloud/product-service/pull/2981
```
Opened 10-19 07:34 UTC, +488/-167, six commits. CSV rows built as arrays in column order, PDS asked to sign images only at the download's size, one `fcKeys` translation per distinct value per batch, translation limited to the publishing pipeline's `LANGUAGE_CODES`, `Set`-based GTIN dedupe for shared videos, and brotli from PDS. dwiajik approved 07:41 UTC; CodeRabbit left comments only. `BLOCKED` with an approval, so it's probably waiting on unresolved CodeRabbit threads or a required check. Not confirmed. Open test-plan items: a production parity run, staging summary-bar/bulk downloads, and re-running the JMeter 2000-GTIN case. This is the optimisation the PCS p95 monitor was muted for on 10-16.

His earlier self-closed PR (#2545, GTIN cleanup batch) is still parked in the archive, unrevisited.
