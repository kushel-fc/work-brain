# Today

1. **[BDD-3167](sources/linear/my-issues.md) — High, In Progress, new.** "Data completely missing - DKcompany" (FD: 675069). Likely tied to the [onaDkCompany FEED run](dagster-alerts/log.md) that's been stuck past its 3h limit since 2026-08-26 (now ~6 days) with zero Slack follow-up — check that run before treating this as a fresh bug.
2. **[BDD-3164](sources/linear/my-issues.md) — High, In Progress, new.** "Bestseller - reprocess data to enable all B2B images with type 'pack'" (FD: 674996).
3. **[BDD-2957](sources/linear/my-issues.md) — High, now his and In Review.** G-star dual-archive output malformed, blocking Megatron price import — was sitting unassigned in Triage last sync.
4. **[PR #2605](prs/to-review.md) — new review request, product-service.** He and alirezaMoazenFashion are requested; alireza already left Changes Requested — worth checking that's addressed before reviewing.
5. **[PR #1744](prs/to-review.md) — new review request, brand-data-pipeline.** Flipped out of draft and now individually requests him; no reviews yet. Companion to product-service#2574 (BDD-3159), which doesn't request him.
6. **[BDD-2258](sources/linear/my-issues.md) — High, Ready to Start, now unblocked.** Sample XML/CSV with video links + test manufacturer on SFTP — the FTP/SFTP support it depends on (BDD-2567) shipped this cycle.

## Resolved since last sync (no action needed, noted for context)
- **[PR #2520](archive/prs/product-service.md) merged** — his own video-download PR, finally cleared Chamindu36's outstanding Changes Requested after sitting on it since 2026-08-24.
- **[BDD-3103](support/recently-closed.md) closed** — the fcKey deadline ticket flagged as overdue for six straight sync cycles is finally Done.
- **Dagster: platform-wide incident, self-resolved.** ~36 brand pipelines failed 12:31–13:06 UTC 2026-08-31 when ECS tasks couldn't pull the datadog-agent sidecar image (ECR permissions). Chamindu owned the fix; no explicit all-clear posted, but the failure pattern changed after ~14:12 UTC. See [`dagster-alerts/log.md`](dagster-alerts/log.md) for the full brand list and the secondary enrichment-service 504 wave that followed it (unresolved as of last Slack activity).
