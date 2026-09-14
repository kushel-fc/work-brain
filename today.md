# Today

1. **profuomo's FTP-move failures came back — last sync's "looks resolved" call was wrong.** [dagster-alerts/log.md](dagster-alerts/log.md): `move_images_from_ftp_to_s3_job_sync` fired again 09-11, 09-12, and 09-13, all ~24h apart at the same time of day. The earmark had already closed this out as self-resolved alongside lugina (which *has* stayed quiet). No thread or owner yet on profuomo specifically — this is the one Dagster item that crossed the notification bar this cycle.
2. **Two new High-priority tickets landed unassigned in Triage** — first High-priority items sitting there in a while. [BDD-3248](support/open.md) (Stout! Jeans, images uploading by API) and [BDD-3249](support/open.md) (Bijnen, 403 downloading photos — an oddly old FD number, possibly a reopened report). Neither is Urgent, so no notification, but worth a look given High-priority Triage items have been empty for weeks.
3. **[BDD-3150](sources/linear/my-issues.md) — still waiting on brand-data-pipeline#1825** to merge before this PIPE/Megatron price-file ticket can close. `mergeable_state` flapped again this cycle but the PR itself is unchanged, still unreviewed.
4. **His to-review queue is still just one stale PR.** [PR #2514](prs/to-review.md) (product-service, LLM-agent mutations tool group) — draft, Changes Requested from someone else, now 17 days untouched. He still has zero open PRs of his own.

## Good news this cycle
- **iosByMaica's merge-rule bug spread to falke — and got fixed same day.** Same `customAttributes`/`rootLevelAttributes` gap Kushel diagnosed 09-10 hit falke/FEED 09-11; he flagged it in-thread and Aji shipped a fix within ~30 minutes ("done, please try again"). Likely landed via [product-service#2675](sources/github/product-service/open-prs.md).
- **BDD-3103's long-overdue Aug 25 response deadline is finally closed** — Deployed this cycle, no longer aging on `today.md`.
- **Two more tickets shipped**: [BDD-3091](support/recently-closed.md) (Hugo Boss MM request) and [BDD-3164](support/recently-closed.md) (Bestseller B2B pack images — the `bestseller_FEED2` OOM saga behind it stayed quiet the whole way to shipping).
- **The ammann/garcia OOM cluster and the `process_enrichment_flow` 3h-timeout recurrence both went quiet this cycle** — no new occurrences of either since last sync, though neither has an explicit in-channel confirmation of a fix.
- **One new internal ticket landed**: [BDD-3252](sources/linear/my-issues.md) (Off-Boarded Brands Deletion, Medium, To Do) — not FD-referenced, not started.
