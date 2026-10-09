# Today

**Earmark fired: product-service#2866 is in production.** Release [#2878](archive/prs/product-service.md) merged 10-08 08:39 UTC, a few minutes before the last sync called it open. That was the gate for `enable_pcs_csv_generation` in production. See [earmarks](_meta/earmarks.md).

1. **Check `enable_pcs_csv_generation` in production is back on.** He turned it off during the 10-08 PDS media 5xx alert (13:59 to 14:21 UTC). Aji said it could go back on and blamed 2s Mongo timeouts on PDS `find_sizes`; his fix (#2894, read from secondaries) is in production release [#2899](sources/github/product-service/open-prs.md), which Kushel approved this morning and hasn't merged yet (a Spacelift staging check failed). Nothing in the sources says whether the flag went back on. See [Dagster log](dagster-alerts/log.md).
2. **Start Slice 5 part 2/3.** [product-service#2870](archive/prs/product-service.md) (1/3) merged 10-08 12:31 UTC and is in production. Linear closed BDD-3214 at the same moment, probably off the PR link, so either reopen it or track 2/3 and 3/3 under [BDD-3213](sources/linear/my-issues.md). Open questions: is `failed` reachable, does `FILE_DOWNLOADED` get registered, intent vs delivery.

## Worth noting (not urgent)
- **Zero open PRs of his.** brand-data-pipeline#2013 merged 10-08 08:34 UTC. The team-routed review requests (product-service#2899, #2900, #2902) are all approved by him already. Only the dependabot bump [brand-data-pipeline#2019](prs/to-review.md) names him.
- **Support:** Irem Bulut took both High PME Legend tickets (BDD-3358, BDD-3359, In Progress) and shipped BDD-3360 (Högl). New Medium [BDD-3386](support/open.md) (Hatico prices still show a discount that ended 09-30). [BDD-3357](support/open.md) (PIPE 403 on ftcCashmere images) is still unassigned, and ftcCashmere_FEED2 failed 12 assets 10-08 evening.
- **Dagster:** carsJeans hit the 3h limit a seventh time (10-08, same 10:10 UTC start, no owner). bestseller_FEED2 hung again, but that's Irem's 300k-GTIN reprocess for BDD-3362. New: adidas_FEED 11 asset failures this morning (Chamindu tagged Irem).
