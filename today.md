# Today

1. **Rebase [backend#7085](prs/mine.md), which now conflicts.** It's his BDD-3223 parity follow-up (CSV omission reasons, two-minute PCS wait), opened 10-09. The base most likely moved when aledileo's backend#7078 (monolith moved to `apps/backend` as an Nx app) merged 10-10 and went to production in #7086. No human review yet. It deploys second, after product-service#2916.
2. **Merge [product-service#2912](prs/mine.md)** (Slice 5 part 2/3, `toAuditEntry` mapper). Chamindu36 approved 10-12 08:22 UTC and it's clean. Then start part 3/3 (write the entry) under [BDD-3213](sources/linear/my-issues.md).
3. **Get a reviewer on [product-service#2916](prs/mine.md)** (PCS: 2000 GTINs, 60s PDS timeout, image extension, description, `csvSkipped`). CodeRabbit approved 10-09. No human review in three days, and it has to deploy before #7085.
4. **Look at the new PCS 5xx alerts.** dwiajik's PCS monitors (#2902, merged 10-09) fired three times: 10-09 15:17 to 15:34 UTC (about 1%), 10-09 22:00 to 23:09 UTC (two cycles, up to 40%), 10-11 16:25 to 16:40 UTC. All self-resolved. No thread, no owner. PCS runs his CSV generation, so check whether `enable_pcs_csv_generation` is back on in production and whether it's involved. See [Dagster log](dagster-alerts/log.md).

## Worth noting (not urgent)
- **Production release #2899 merged 10-09 10:15 UTC**, so Aji's PDS Mongo-secondaries fix (#2894) for the 10-08 PDS 5xx is in production. The PDS media 5xx monitor hasn't fired since.
- **Support:** five unassigned, no High. New Medium [BDD-3388](support/open.md) (merge step still uses `backend_db`, so removed certificates stay in `manufacturerAttributes`) and [BDD-3405](support/open.md) (Ballin GTIN deletion). [BDD-3357](support/open.md) (ftcCashmere 403) is five days old and its Dagster failures are now `recurring` (10-08, 10-09, 10-11). Irem closed BDD-3358, BDD-3359 and BDD-3362.
- **Dagster:** carsJeans 3h hang an eighth time (10-09), none since. process_enrichment_flow 3h again (10-12 03:05 UTC start). skiny (third) and fuchsSchmitt (second) `process_images` exit 137 on 10-11. galvatron ECS blip 10-11 22:07 UTC.
