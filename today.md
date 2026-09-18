# Today

1. **Review queue up to 6** (was 5) — [product-service#2732](prs/to-review.md) is new (otto-image-upload ECS skeleton, already Approved, low-effort). [brand-data-pipeline#1878](prs/to-review.md) (polaris) and [#1871](prs/to-review.md) (swing) are both Approved-and-waiting-on-him. [product-service#2683](prs/to-review.md) (swing half) is still untouched, now 4 days stale. [#2723](prs/to-review.md) flipped to Changes Requested — not blocking on him right now. [#2514](prs/to-review.md) is the stale draft, now 21 days untouched.
2. **[BDD-2258](sources/linear/my-issues.md) — still not started**, unblocked since BDD-2567 shipped 08-31, now nearly five weeks since its own last update.
3. **Zero open PRs of his own** — unchanged.
4. **New Dagster pattern worth a look if picking up Triage work**: `mosMosh__FEED` hit 10 OOM kills plus 2 run-time-limit breaches on the same sync job overnight — see `dagster-alerts/log.md`. [BDD-3268](support/open.md) (Triage, asking to bump integration resource size) looks more relevant than ever.

## Good news this cycle
- **[BDD-3237](support/recently-closed.md) shipped** — Superdry image-deletion ticket, In Review → Deployed.
- **[brand-data-pipeline#1825](archive/prs/brand-data-pipeline.md) (pmeLegend SAX-parsing flag) finally merged**, weeks after opening — closes the loop on the earmark dismissed 09-15 when BDD-3150 shipped without it.

## Worth noting (not urgent)
- **Workload-shift pattern continues**: BDD-3259 and BDD-3238 both individually picked up by Syed Muhammad Abu Bakar Wase (abubakarwase) from Triage this cycle — same pattern flagged in recent syncs, not necessarily actionable by Kushel.
- **vanDeVelde brand migration ([product-service#2697](archive/prs/product-service.md)) closed without merging** the same day a separate fix PR landed ([brand-data-pipeline#1912](sources/github/brand-data-pipeline/open-prs.md), "reversed season labels") and `ona__vanDeVelde_FEED` hit a 3h run-time-limit alert — possibly related, not confirmed.
- **PDS Kinesis-throttling flare hit a new high** (publish-failure metric 257, above the prior max of 150) but self-resolved within ~20 min as usual — root cause still not fully holding.
- **New one-off OOM/failure signatures this cycle, no owner yet**: `ara__PRICAT__process_images` (7x in 16 min), `fuchsSchmitt__FEED__process_images_sync`, `ammann__FEED__process_images`, `collect_reprocessing_candidates`. `garcia`/`riani` `trigger_enrichment_from_map` failures do have an owner — Dushan Silva said he'd check.
