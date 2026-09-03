# Today

1. **[BDD-3155](sources/linear/my-issues.md) — High, In Progress, newly assigned.** "PIPE: meyer FEED2 data reprocessing is not working" (FD: 674619). Was sitting unassigned in Triage at Medium priority last sync — now his, bumped to High.
2. **[BDD-3164](sources/linear/my-issues.md) — High, In Progress.** "Bestseller - reprocess data to enable all B2B images with type 'pack'" (FD: 674996). Its reprocessing job keeps firing "exceeded 3h limit" [Dagster alerts](dagster-alerts/log.md), all self-explained by Kushel in-thread — but a *different*, unexplained `publish_from_map` container-exit failure hit the same job on 2026-09-02, worth a look before assuming it's the same known pattern.
3. **[PR #1791](prs/mine.md) — his own, brand-data-pipeline, ready to merge.** "Fix fcKeys default fallbacks that mask real merge data" — already Approved by dwiajik and Chamindu36. `mergeable_state` flapped to `unknown` this cycle (known GitHub recompute noise, not a real conflict).
4. **[PR #2616](prs/to-review.md) — new review request, product-service.** "Every NestJs service keeps the same promises and APIs should have OpenAPI spec" — team + individually names him among 4 other reviewers, no reviews yet.
5. **[PR #2607](prs/to-review.md) — review request, product-service.** O'Neill brand migration — unchanged: he's already left a comment, julsjacinto has approved.

## Resolved since last sync (no action needed, noted for context)
- **[BDD-2957](support/recently-closed.md) closed (Deployed)** — his own "[dual-archive] G-star archiving creates a malformed/incomplete file" ticket, was In Review last sync, now shipped.
- **[PR #2611](archive/prs/product-service.md) merged** — his review request ("Added `create-variants` package") resolved via merge without his review, despite being the sole named reviewer after Chamindu36's 17+ rounds of Changes Requested.
- **[PR #2607 companion](archive/prs/brand-data-pipeline.md)** — brand-data-pipeline#1784 (O'Neill migration companion) merged; product-service#2607 above is still open and still needs him.
