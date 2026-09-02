# Today

1. **[BDD-2957](sources/linear/my-issues.md) — High, In Review.** G-star dual-archive output malformed, blocking Megatron price import.
2. **[BDD-3164](sources/linear/my-issues.md) — High, In Progress.** "Bestseller - reprocess data to enable all B2B images with type 'pack'" (FD: 674996). Its reprocessing job has fired two "exceeded 3h limit" [Dagster alerts](dagster-alerts/log.md) since yesterday — both self-explained by Kushel in-thread, not bugs, but worth knowing before treating a third one as a surprise.
3. **[PR #1791](prs/mine.md) — his own, brand-data-pipeline, ready to merge.** "Fix fcKeys default fallbacks that mask real merge data" — already Approved by dwiajik and Chamindu36; irembbt and alirezaMoazenFashion are still-outstanding requested reviewers but the approval bar is met.
4. **[PR #2611](prs/to-review.md) — new review request, product-service.** "Added `create-variants` package" — he's the sole named reviewer, after Chamindu36 already went 17+ rounds ending in Changes Requested. Worth checking those are addressed before reviewing.
5. **[PR #2607](prs/to-review.md) — new review request, product-service.** O'Neill brand migration — team + individually names him; he's already left a comment, julsjacinto has approved.

## Resolved since last sync (no action needed, noted for context)
- **[BDD-3167](support/recently-closed.md) closed** — "Data completely missing - DKcompany," resolved 2026-09-01. It was speculatively tied to the [onaDkCompany Dagster run](dagster-alerts/log.md) stuck since 2026-08-26, but no Slack signal confirmed that run itself got fixed — the correlation stays unconfirmed and the run's Dagster status is now stale.
- **[PR #2605](archive/prs/product-service.md) merged** — his review request (StreamPublisher partition keys) resolved via merge without his review.
- **[PR #1791 / #2594 backfill]** — his prior PR #2594 (LANGUAGE_CODES fix) was missed in the 2026-09-01 sync's archiving; caught up this cycle.
