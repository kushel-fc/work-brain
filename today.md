# Today

1. **lugina is root-caused but still failing hourly — fix expected today, not yet landed.** [dagster-alerts/log.md](dagster-alerts/log.md): the brand's images arrive on a different FTP/SFTP than its product data. Dushan flagged it again this morning (09-10 09:16 CEST) before seeing Kushel had already looped Munia in; Kushel confirmed 10:18 CEST the brand will update their setup "today." Worth a glance to confirm it actually lands — `profuomo` hit the same failure mode 09-09, unconfirmed if same cause.
2. **[process_enrichment_flow](dagster-alerts/log.md) — recurred again, still fully unexplained.** First flagged by Kushel 09-08, recurred 09-08 and now again 09-10 01:10 UTC. No root cause or owner in-channel across three occurrences.
3. **His to-review queue is down to one stale PR.** [PR #2514](prs/to-review.md) (product-service, LLM-agent mutations tool group) — draft, Changes Requested from someone else, now 13 days untouched. Nothing else currently names him individually as reviewer.
4. **He has zero open PRs on either repo** — his own [#2639](prs/mine.md) merged and [#2650](prs/mine.md) closed unmerged, both 09-09. See `prs/mine.md`.
5. **[BDD-3150](sources/linear/my-issues.md) — still worth checking now that a second piece landed.** The SAX-parser fix ([brand-data-pipeline#1744](archive/prs/brand-data-pipeline.md)) merged 09-08; its flag-enable follow-up ([brand-data-pipeline#1825](sources/github/brand-data-pipeline/open-prs.md)) is open now too. Check whether this PIPE/Megatron price-file ticket can close once #1825 lands.

## Good news this cycle
- **The bestseller/cecil OOM saga looks resolved and BDD-3226 shipped.** [BDD-3226](support/recently-closed.md) (bestseller images not reaching `mappedskus`) — his own ticket — shipped via [brand-data-pipeline#1838](archive/prs/brand-data-pipeline.md), opened and merged same-day 09-09. Separately, the OOM fix ([product-service#2640](archive/prs/product-service.md)) has now stayed quiet over 48h.
- **Two more of the 09-04 bulk-assignment batch cleared**: [BDD-3163](support/recently-closed.md) (brand offboarding delete) shipped; [BDD-3189](sources/linear/my-issues.md) (sketch tag info) moved to In Progress. Batch down to 6 still-unstarted items.
- **[BDD-1495](support/recently-closed.md)** (old PIPE CWF reprocessing ticket) also shipped.
- No new Urgent/High tickets landed unassigned; no deadline currently overdue.
