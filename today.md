# Today

1. **Dagster: mosMosh/ara OOM sprees still running unabated after 4 days, zero owner.** `mosMosh__FEED__process_images` (21+ occurrences) and `ara__PRICAT__process_images` (26+ occurrences) have fired continuously since 09-17 with no thread, no reaction, no fix. [BDD-3268](support/open.md) — the Triage ticket asking to bump resource size for long-running integrations, which looked like the likely fix — was picked up by abubakarwase 09-18 and is In Progress, but the failures kept firing after he started it. See `dagster-alerts/log.md`.
2. **[BDD-3251](archive/linear/team-transfers.md) — his own In Review ticket got pulled to another team.** Transferred to Replenishment as RPL-2346 and reset to Todo status there — different from the usual pattern of unassigned Triage backlog items leaving BDD; this was active work in review.
3. **Review queue down to 5** (was 6) — [#2732](archive/prs/product-service.md) and [#2723](archive/prs/product-service.md) both merged without him ever reviewing them. New: [product-service#2748](prs/to-review.md) (shoeMaterial validation, alongside dwiajik). [#2683](prs/to-review.md) now a week stale; [#2514](prs/to-review.md) now 24 days stale; [brand-data-pipeline#1878](prs/to-review.md)/[#1871](prs/to-review.md) both Approved-and-waiting-on-him.
4. **[BDD-2258](sources/linear/my-issues.md) — still not started**, unblocked since BDD-2567 shipped 08-31, now over five weeks since its own last update.
5. **Zero open PRs of his own** — unchanged.

## Good news this cycle
- **[BDD-3206](sources/linear/my-issues.md) — first real movement on Video Delivery Slice 3.2 backend work**, advanced Ready To Start → In Progress today (09-21).
- **[BDD-3246](support/recently-closed.md) shipped** — Kultivate Becosoft image issue, In Review → Done.
- **Quiet Triage cycle** — zero new items landed; backlog down to 6 (was 9), all three departures resolved cleanly (one shipped, two picked up by abubakarwase).

## Worth noting (not urgent)
- **Workload-shift pattern continues**: abubakarwase now handling BDD-3268 and BDD-3266 from Triage (plus already shipped BDD-3278) — same pattern flagged in recent syncs.
- **New Dagster failure signature**: `meyer__FEED__map`, single occurrence, distinct from the already-shipped BDD-3155 meyer ticket.
- **PDS Kinesis-throttling flare hit a new all-time high** (metric 609, above the prior max of 257) but self-resolved within ~15 min as usual — root cause still not holding under peak load.
- **process_enrichment_flow exceeded its 3h limit again** — chronic, unexplained pattern since 09-08, still no owner.
- **brand-data-pipeline#1912** (vanDeVelde reversed season labels fix) closed without merging shortly after last sync, same day product-service#2697 also closed unmerged — never confirmed if related.
- **PR churn**: product-service 17→18 open, brand-data-pipeline 20→17 (two merged, one closed unmerged, no new). Two PRs (#2737/#2738) plus their pipeline companion #1919 came out of draft today with real reviewers requested — none name Kushel.
