# Today

1. **Merge [brand-data-pipeline#2013](prs/mine.md)** (fashionCloud FEED/FEED2 videos, `organizationId`, `asLanguages`). dwiajik approved 10-08 08:23 UTC and it's clean.
2. **Move [product-service#2870](prs/mine.md) forward** (BDD-3214 1/3, content-models package and audit schema on the content cluster). Chamindu36 requested changes 10-07, he answered, and Chamindu36 then approved, as did dwiajik. GitHub still shows it blocked with irembbt and julsjacinto requested, so check what's blocking it, then carry on with 2/3.
3. **Watch the 10-08 production release ([product-service#2878](sources/github/product-service/open-prs.md)).** It carries his #2866 (CSV signed-URL cap). Once it merges the earmark fires and `enable_pcs_csv_generation` can go on in production. Not merged at sync time.

## Worth noting (not urgent)
- **Two new High support tickets, unassigned: [BDD-3358 and BDD-3359](support/open.md)** (Hakan Soylu, 10-07 evening). The image reprocessing tool fails on PME Legend Image URLs and shows no failed images for NOS even though some are unprocessed. Brands and retailers have been waiting on these images for weeks. Close to his image-pipeline area, but not assigned to him. Two Medium ones also landed (BDD-3357 PIPE image 403, BDD-3360 Högl deletion).
- **[BDD-2258](archive/linear/closed-internal.md) was Canceled** 10-08, after about seven weeks at Ready To Start. Off his list.
- **Dagster:** carsJeans hit the 3h limit a sixth time (10-07, same 10:10 UTC start). bestseller_FEED2 hit the 3h limit for the first time (10-07 14:20 UTC), the same day bestseller's brand IDs were changed (brand-data-pipeline#2021 still open). liebeskind's download_images credential timeout was rerun by Aji and passed. See [dagster-alerts/log.md](dagster-alerts/log.md).
- **One review request:** dependabot urllib3 bump, [brand-data-pipeline#2019](prs/to-review.md).
