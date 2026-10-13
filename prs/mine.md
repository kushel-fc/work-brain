# PRs — mine

PRs Kushel opened, across both repos (plus backend, checked for his own PRs only). Populated on sync.

**One open: #2929, approved by four.** All three from last sync merged 10-12 and are in production: product-service#2912 (09:02 UTC, merged by Chamindu36), #2916 (10:26 UTC) and backend#7085 (10:27 UTC, after its conflict was resolved), plus his #2917 (Slice 5 part 3/3), opened and merged inside the window. product-service release #2922 (12:10 UTC) carried #2912, #2916 and #2917. Backend production deployment #7088 (merged by aledileo 15:08 UTC) carried #7085. See [`archive/prs/`](../archive/prs/).

```yaml
number: 2929
repo: product-service
title: "BDD-3214: name PCS's database fc_product_content_service"
author: kushel-fc
state: open
mergeable_state: unstable
review_state: approved
requested_reviewers: [abubakarwase]
updated: 2026-10-13
url: https://github.com/fashioncloud/product-service/pull/2929
```
Opened 10-13 08:33 UTC, +2/-2. Renames PCS's audit database on the content cluster from `product-content-service` to `fc_product_content_service`, to match the `fc_<service>` naming of the other Mongo databases. Approved within seven minutes by Chamindu36, irembbt, CodeRabbit and dwiajik. `unstable` only because `security / trivy-sast` was still pending at sync time; every other check passed. Mergeable once that finishes.

His earlier self-closed PR (#2545, GTIN cleanup batch) is still parked in the archive, unrevisited.
