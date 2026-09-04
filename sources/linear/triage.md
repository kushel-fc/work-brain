# Linear — Triage backlog (team BDD)

Full raw Triage view (team BDD) — https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. The FD-referenced/support-shaped subset of this list is curated into [`support/open.md`](../../support/open.md).

Two items dropped out this cycle, neither via a BDD resolution: BDD-3117 was picked up by Kushel (now in [`sources/linear/my-issues.md`](my-issues.md)); BDD-3128 was moved to the Retailer Data team (now RDD-1648) — see [`archive/linear/team-transfers.md`](../../archive/linear/team-transfers.md).

---

```yaml
id: BDD-3181
title: Frage zu Artikelpreis (FD: 675078)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-01
url: https://linear.app/fashioncloud/issue/BDD-3181/frage-zu-artikelpreis-fd-675078
```
New.

---

```yaml
id: BDD-3189
title: information on sketch tag needed (FD: 675287)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-02
url: https://linear.app/fashioncloud/issue/BDD-3189/information-on-sketch-tag-needed-fd-675287
```
New.

---

```yaml
id: BDD-3180
title: API access permission error (FD: 675082)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-01
url: https://linear.app/fashioncloud/issue/BDD-3180/api-access-permission-error-fd-675082
```
New.

---

```yaml
id: BDD-3168
title: API Image request problem (FD: 675101)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-01
url: https://linear.app/fashioncloud/issue/BDD-3168/api-image-request-problem-fd-675101
```
New.

---

```yaml
id: BDD-3037
title: Artikel data Florez komt niet door (FD: 671579)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-10
url: https://linear.app/fashioncloud/issue/BDD-3037/artikel-data-florez-komt-niet-door-fd-671579
```
Packshots/model photos not arriving via API for LAVIE Womenswear (Florez).

---

```yaml
id: BDD-3043
title: Incorrect delimiter not shown as error (FD: 672084)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-20
url: https://linear.app/fashioncloud/issue/BDD-3043/incorrect-delimiter-not-shown-as-error-fd-672084
```
PIPE silently mis-parses when the configured delimiter doesn't match the file (example: Rosner, `,` configured vs `;` actual).

---

```yaml
id: BDD-3129
title: "Fwd: Dringend: Ansprechpartner (FD: 674136)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-25
url: https://linear.app/fashioncloud/issue/BDD-3129/fwd-dringend-ansprechpartner-fd-674136
```
Forwarded internal German email chain asking for a point of contact — unclear ask, needs triage.

---

```yaml
id: BDD-3137
title: "Via Appia: Please remove duplicate catalogs (FD: 674164)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-26
url: https://linear.app/fashioncloud/issue/BDD-3137/via-appia-please-remove-duplicate-catalogs-fd-674164
```
Duplicate Herbst/Winter catalogs across 4 Via Appia brands need cleanup.

---

```yaml
id: BDD-3150
title: PIPE/Megatron Pipeline mismatch in processing capability for prices (FD: 674378)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-27
url: https://linear.app/fashioncloud/issue/BDD-3150/pipemegatron-pipeline-mismatch-in-processing-capability-for-prices-fd
```
Megatron's XML parser caps out at 500MB; PIPE can process larger files so dual-archives files (PME Legend PD import) that Megatron could never process — previously masked by DIMs manually chunking files. Needs a design decision. The in-flight SAX-parser work ([product-service#2574](../github/product-service/open-prs.md)/[brand-data-pipeline#1744](../github/brand-data-pipeline/open-prs.md)) is a candidate fix; its merge conflict cleared this cycle.

---

```yaml
id: BDD-3163
title: Brand Offboarding - Delete data (FD: 674971)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-31
url: https://linear.app/fashioncloud/issue/BDD-3163/brand-offboarding-delete-data-fd-674971
```
New — cross-check against the Notion "Brands that got offboarded" table before acting.

---

```yaml
id: BDD-3157
title: MAC - deletion of articles (FD: 674486)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-31
url: https://linear.app/fashioncloud/issue/BDD-3157/mac-deletion-of-articles-fd-674486
```
New.

---

```yaml
id: BDD-3107
title: Blue Seven - AI generated image metadata is lost when receiving images via B2X (Intex) (FD: 673177)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-01
url: https://linear.app/fashioncloud/issue/BDD-3107/blue-seven-ai-generated-image-metadata-is-lost-when-receiving-images
```
IPTC metadata on AI-generated model images stripped somewhere in the download pipeline. New activity today (updated timestamp moved) — worth a look at the issue for what changed.

---

```yaml
id: BDD-2497
title: Delete pricelist fails in development (FD: 627912)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-07-08
url: https://linear.app/fashioncloud/issue/BDD-2497/delete-pricelist-fails-in-development-fd-627912
```
Pricelist deletion fails in the development environment after successful create + add-price calls.

---

```yaml
id: BDD-2530
title: PIPE Global transform doesn't catch feed-transform mistakes on string attributes (FD: 645951)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-09-01
url: https://linear.app/fashioncloud/issue/BDD-2530/pipe-global-transform-doesnt-catch-feed-transform-mistakes-on-string
```
Global transform should reject a feed-transform bug (season returned as a language object instead of a string) but doesn't. Already fixed for Secrid, pending release. Updated timestamp jumped from 07-09 to 09-01 — some activity landed, not yet reflected in this summary.

---

```yaml
id: BDD-2969
title: "PIPE: Bestseller value mapping for Detailed Category not working (FD: 669153)"
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-07-28
url: https://linear.app/fashioncloud/issue/BDD-2969/pipe-bestseller-value-mapping-for-detailed-category-not-working-fd
```
Applying value mappings for Detailed Category (7847 unmapped values) times out/errors after 2-3 minutes.

---

```yaml
id: BDD-3005
title: Er doet zich een herhalend probleem voor (FD: 663296)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-03
url: https://linear.app/fashioncloud/issue/BDD-3005/er-doet-zich-een-herhalend-probleem-voor-fd-663296
```
Recurring UI issue — navigating to a brand's Content > Productdata bounces back to the home page, blocking downloads.

---

```yaml
id: BDD-3003
title: Image monitor lacks GTIN filtering without season
priority: No priority
status: Triage
assignee: dushan.silva@fashion.cloud
team: BDD
updated: 2026-08-03
url: https://linear.app/fashioncloud/issue/BDD-3003/image-monitor-lacks-gtin-filtering-without-season
```
Internal bug (no FD ticket) — image monitor requires a season filter alongside GTIN, can't filter by GTIN alone.

---

```yaml
id: BDD-3091
title: "HUGO BOSS: request MM (FD: 672863)"
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-18
url: https://linear.app/fashioncloud/issue/BDD-3091/hugo-boss-request-mm-fd-672863
```
Enable "request marketing material" feature for all Hugo Boss AG brands; also fix a doc link.

---

```yaml
id: BDD-3109
title: Otto - problems due to inconsistent updatedSince timestamp in product API (FD: 673224)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-20
url: https://linear.app/fashioncloud/issue/BDD-3109/otto-problems-due-to-inconsistent-updatedsince-timestamp-in-product
```
updatedSince not guaranteed to bump on every change — Otto missed additional images with the same timestamp as the first.

---

```yaml
id: BDD-3110
title: Maximum download with Art.Numbers is 1000 EANS - but when searching on EAN level it's 2000 (FD: 673275)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-21
url: https://linear.app/fashioncloud/issue/BDD-3110/maximum-download-with-artnumbers-is-1000-eans-but-when-searching-on
```
Inconsistent multidownload EAN limits depending on search type (1000 vs 2000).

---

```yaml
id: BDD-3118
title: Value mapping fails with multiple level1 mappings
priority: No priority
status: Triage
assignee: dushan.silva@fashion.cloud
team: BDD
updated: 2026-08-24
url: https://linear.app/fashioncloud/issue/BDD-3118/value-mapping-fails-with-multiple-level1-mappings
```
Internal bug (no FD ticket) — mapping up to 3 detailed-category level1s returns a comma-joined string instead of an array.

---

```yaml
id: BDD-3152
title: Item deletion Pure Path (FD: 674578)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-28
url: https://linear.app/fashioncloud/issue/BDD-3152/item-deletion-pure-path-fd-674578
```
New.

---

```yaml
id: BDD-3153
title: Preise siehe auch Ticket 610189 (FD: 674585)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-28
url: https://linear.app/fashioncloud/issue/BDD-3153/preise-siehe-auch-ticket-610189-fd-674585
```
New — references an older ticket (610189), needs triage to check that link.
