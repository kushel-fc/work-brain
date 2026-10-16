# Today

1. **Earmark (partly met): his [#2951](prs/mine.md) is in staging.** He merged it 10-15 14:45 UTC and it went out in staging release #2967 (15:06 UTC). Confirm `fill-global-merge-rules` from that branch was run against staging, because if it wasn't, every staging merge run fails (staging failures don't post to #brand-data-dev-alerts). **Run it against production before the next production release**, then the `video_processing_enabled` backfill from `merge` with `FORCE_UPDATE`. See [`_meta/earmarks.md`](_meta/earmarks.md).
2. **Review dushansilva's [product-service#2960](prs/to-review.md)** (Willen mapping rules, +148/-15). He and irembbt are the only humans requested, and the pipeline side (#2057) already merged 10-15, so the migration is waiting on this.
3. **Ask Irem whether [product-service#2930](prs/to-review.md) is still needed.** He is its only human reviewer, and BDD-3388 went Done 10-15 with the PR still open.

## Worth noting (not urgent)
- **BDD-3215 is code-complete.** His #2956 (3/3) merged 10-15 11:52 UTC. 2/3 and 3/3 are in staging only; 1/3 is in production. See [shaping](shaping/video-download-delivery.md).
- **New on him: [BDD-3216](sources/linear/my-issues.md)** (5.3 Backend, delivery measurement at redemption), Backlog. The ticket says to settle intent vs delivery before building it.
- **Support:** nothing new. BDD-3457 (Obermeier EDI) closed by Irem 10-15. Four open, all Medium/Low, see [support/open.md](support/open.md).
- **Dagster:** falke failed four ways 10-15, the day after its migration. bugatti_FEED and ftcCashmere_FEED2 both show `Credential lookup failed` (Aji), which may mean BDD-3357 isn't the cause of the ftcCashmere failures. The log index hit its daily quota overnight, so the first lawOfTheSea_FEED failure has no logs. adidas fifth, carsJeans twelfth, process_enrichment_flow fourth. Brief PCS 5xx warn 08:36 UTC, first since 10-12. See [Dagster log](dagster-alerts/log.md).
