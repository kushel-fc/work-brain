# Today

1. **Merge [product-service#2951](prs/mine.md)** (his, transformedSku videos through to mergedSku/mappedSku). Approved by Chamindu36, dwiajik and CodeRabbit, all checks green, clean. **Before it deploys anywhere, run `fill-global-merge-rules` from the branch against that environment**, or every merge run fails. Then backfill brands with `video_processing_enabled` from `merge` with `FORCE_UPDATE`. Earmarked in [`_meta/earmarks.md`](_meta/earmarks.md).
2. **Ask Irem whether [product-service#2930](prs/to-review.md) is still needed.** He is its only human reviewer, but BDD-3388 (Suri certificates), the ticket it looked like it fixed, went Done 10-15 08:17 UTC with the PR still open. Review it or let it be closed.
3. **Open BDD-3215 part 3/3, or note why not.** #2944 (1/3) is in production via release #2952; #2946 (2/3) merged 10-15 07:31 UTC and isn't in production yet. BDD-3215 already went Done off #2944. See [shaping](shaping/video-download-delivery.md).

## Worth noting (not urgent)
- **Production release #2952 / brand-data-pipeline#2054** (he triggered it, 10-15 07:48 UTC) carried his #2939 (Fashion Cloud Test brand on PIPE) and #2944, plus Chamindu36's PDS replay modules. The first adidas run on the new pipeline commit failed again (fourth time, 08:05 UTC).
- **Review queue down to 3.** #2941 merged without his review. #2940 (PDS replay worker) now has two approvals (dwiajik, abubakarwase), so he's no longer the gate. He approved Chamindu36's #2954 this morning.
- **Support:** two new Medium FD tickets, both unassigned: [BDD-3420](support/open.md) (IOS by Maica, PRICAT prices not processed) and [BDD-3457](support/open.md) (Obermeier EDI). Five open, no High.
- **Dagster:** fcapi-to-sftp-sync-job failed for Luisa Cerano (missing SFTP config, Dushan checking); unitedLegwear_FEED failed for the first time with the same 11-asset shape as adidas. PDS publish failures fired again 10-14 21:49 UTC (likely the unfixed `partitionKey` length). carsJeans 3h (eleventh), ftcCashmere_FEED2 (sixth). See [Dagster log](dagster-alerts/log.md).
