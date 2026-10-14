# Today

1. **Review [product-service#2930](prs/to-review.md)** (irembbt, exclude `BACKEND_DB` from the global certificate merge, +25/-0). He is the only human reviewer requested. It looks like the fix for [BDD-3388](sources/linear/triage.md) (Suri certificates kept in `manufacturerAttributes`), a support ticket Irem has In Progress, so it's waiting on him. CodeRabbit has Changes Requested; dwiajik's review was dismissed.
2. **Decide whether the early audit entries need moving.** His #2929 (database rename) merged 10-13 08:48 UTC and is in production via release #2938 (14:21 UTC). Entries written between release #2922 (10-12 12:10 UTC) and #2938 sit in the old `product-content-service` database. See [shaping](shaping/video-download-delivery.md).
3. **Plan the rest of [BDD-3213](sources/linear/my-issues.md).** Still open: the per-SKU download-counts collection, observability (bytes, build duration, failure rate), the N3 write-up and the intent-vs-delivery decision. The ticket hasn't been updated since 10-01.

## Worth noting (not urgent)
- **His PRs are all merged.** #2929 (10-13) and #2939 (Fashion Cloud Test brand on PIPE, 10-14 08:22 UTC, not in a production release yet). frontend#7177 (BDD-3223) merged 10-13. See [prs/mine.md](prs/mine.md).
- **More review requests from Chamindu36:** [#2940](prs/to-review.md) (PDS replay worker orchestration, +3120) and [#2941](prs/to-review.md) (`@fashioncloud` package scope, +2166/-1406). Both name four or five reviewers. #2928 merged 10-13 without his review.
- **PDS stream publish failures 10-13 15:12 UTC** (69 records). The monitor cleared in 15 minutes, but Aji found the cause: Kinesis rejects style `partitionKey`s over 256 characters (brand prefix plus a long list of color names). Those records will keep failing until someone fixes the key. Not his. See [Dagster log](dagster-alerts/log.md).
- **No PCS 5xx since 10-12 22:01 UTC**, about 35h, now that his PCS changes have been in production for two days.
- **Support:** Irem took BDD-3388 and BDD-3410 out of Triage 10-13. Three left, all unassigned, no High. [BDD-3357](support/open.md) (ftcCashmere 403) is a week old and ftcCashmere_FEED2 failed a fifth time 10-13.
- **Dagster:** adidas_FEED failed a third time (10-14 08:05 UTC). carsJeans 3h hang a tenth time, process_enrichment_flow 3h a third time (two days running). comma_FEED2 one-off timeout.
