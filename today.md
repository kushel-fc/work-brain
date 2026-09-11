# Today

1. **iosByMaica recurred and Kushel root-caused it himself — needs a merge-rule fix.** [dagster-alerts/log.md](dagster-alerts/log.md): both the global and manufacturer-specific merge rules are missing `customAttributes` in `rootLevelAttributes`. Explained 09-10 18:27 CEST, not yet fixed — solely actionable by him, unblocked.
2. **lugina and profuomo both look resolved — worth one confirming glance.** The earmark tracking lugina's hourly `move_images_from_ftp_to_s3_job_sync` failures triggered: last failure was 09-10 14:18 UTC, ~19h quiet as of this sync. `profuomo` (same signature) also went quiet after one more recurrence. No explicit in-channel all-clear, just absence of further failures — see `_meta/earmarks.md`.
3. **A new OOM cluster is forming — echoes the bestseller/cecil saga that took two fix attempts to hold.** [ammann](dagster-alerts/log.md) hit `process_images` exit-137 twice (09-10, 09-11) and [garcia](dagster-alerts/log.md) hit `publish_from_process_images` exit-137 once — different steps/brands from the earlier saga, no thread or owner yet.
4. **[process_enrichment_flow](dagster-alerts/log.md) — recurred a fourth time, still fully unexplained.** First flagged 09-08, now recurring roughly every other day with zero root cause or owner in-channel.
5. **[BDD-3150](sources/linear/my-issues.md) — still waiting on brand-data-pipeline#1825** to merge before this PIPE/Megatron price-file ticket can close. No movement this cycle.
6. **His to-review queue is still just one stale PR.** [PR #2514](prs/to-review.md) (product-service, LLM-agent mutations tool group) — draft, Changes Requested from someone else, now 14 days untouched. He still has zero open PRs of his own.

## Good news this cycle
- **A genuinely big clean-out**: six tickets shipped, including two long-stale internal tech-debt items. [BDD-1721](archive/linear/closed-internal.md) ("images failing silently," untouched since May) and [BDD-1417](archive/linear/closed-internal.md) (old error-rate-spike ticket) both finally closed. [BDD-3230](support/recently-closed.md), [BDD-2497](support/recently-closed.md), [BDD-3168](support/recently-closed.md), and [BDD-2538](support/recently-closed.md)/[BDD-3001](support/recently-closed.md) also shipped.
- **BDD-2497 jumped straight from unassigned Triage to Done** without anyone visibly picking it up first — one less oldest-item on `support/open.md`.
- **Three more Triage tickets got individually picked up by Kushel**: [BDD-3237](sources/linear/my-issues.md) (already In Progress), BDD-3236 and BDD-3229 (Ready To Start).
- No new Urgent/High tickets landed unassigned; no deadline currently overdue.
