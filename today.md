# Today

1. **Earmark triggered: his #2951 hit production without the `videos` merge rule.** Release product-service#2973 (10-16 11:33 UTC) carried it, and katag, polaris and florez failed at map/merge within 25 minutes. He said in-thread he'd update the global merge rule. There have been no merge failures since, so it looks fixed. **Still to do: the `video_processing_enabled` backfill** (rerun from `merge` with `FORCE_UPDATE`), which isn't visible as done. See [`_meta/earmarks.md`](_meta/earmarks.md) and the [Dagster log](dagster-alerts/log.md).
2. **Review dwiajik's deletion-publishing pair: [product-service#2977 and brand-data-pipeline#2067](prs/to-review.md).** He and irembbt are the requested humans, and Chamindu36 approved both on 10-19, so either of them unblocks it. #2977 asks reviewers a direct question (should `ENABLE_DELETE_PUBLISHING` switch off the whole run?) and needs retargeting now that #2971 merged.
3. **Review dushansilva's [product-service#2960](prs/to-review.md)** (Willen mapping rules). It's been waiting four days, the pipeline side merged 10-15, and he and irembbt are the only humans requested.
4. **Get his own [#2981](prs/mine.md) unblocked** (BDD-3223 CSV and PDS-call speed-ups). dwiajik approved it, but it's still `BLOCKED`. Its staging and production-parity checks are still unticked. The muted PCS p95 monitor is waiting on it.

## Worth noting (not urgent)
- **New review request: Chamindu36's [#2983](prs/to-review.md)** (AI origin for product images, likely BDD-3484, High). Opened 08:32 UTC, no human review yet.
- **Ask Irem about [#2930](prs/to-review.md).** He's the only reviewer, it's six days old, and BDD-3388 is already Done.
- **PCS read-path p95 monitor muted** by him 10-16 after about 30 warn notifications on multi-download resolves. Agreed with Aji: pause it until the CSV optimisations land and there's a multi-download SLO.
- **Support:** nothing new over the weekend. ftcCashmere_FEED2's failures are a missing credential (Aji), and brand-data-pipeline#2069 changes the credential ID. Whether that covers [BDD-3357](support/open.md)'s 403 isn't confirmed.
- **Dagster:** adidas sixth, lawOfTheSea and bugatti second (now `recurring`), new skiny OOM, process_enrichment_flow 3h on 10-17 and 10-18, carsJeans thirteenth (10-16, quiet since). See the [Dagster log](dagster-alerts/log.md).
