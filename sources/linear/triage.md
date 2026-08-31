# Linear — Triage backlog (team BDD)

Full raw Triage view (team BDD) — https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. The FD-referenced/support-shaped subset of this list is curated into [`support/open.md`](../../support/open.md).

_Last refreshed 2026-08-28 — the 2026-08-31 sync couldn't reach Linear (no interactive OAuth session for the Linear MCP server in this non-interactive run)._

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
New. Megatron's XML parser caps out at 500MB; PIPE can process larger files so dual-archives files (PME Legend PD import) that Megatron could never process — previously masked by DIMs manually chunking files. Needs a design decision.

---

```yaml
id: BDD-2957
title: "[dual-archive] G-star archiving creates a malformed/incomplete file (FD: 662655)"
priority: High
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-26
url: https://linear.app/fashioncloud/issue/BDD-2957/dual-archive-g-star-archiving-creates-a-malformedincomplete-file-fd
```
Dual archiving for Megatron price import — PIPE output is malformed (1-2K lines removed, closing tags missing) vs. the pre-processed copy.

---

```yaml
id: BDD-3112
title: Cancellations SS27 (FD: 673398)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-26
url: https://linear.app/fashioncloud/issue/BDD-3112/cancellations-ss27-fd-673398
```
SS27 cancellations file submitted by Altex/Funky Buddha.

---

```yaml
id: BDD-3103
title: Need response until August 25 – Overview of fcKey Standard Value Translations (FD: 673052)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-26
url: https://linear.app/fashioncloud/issue/BDD-3103/need-response-until-august-25-overview-of-fckey-standard-value
```
Content PSM team wants ownership of fcKey standard-value translations; brands (Bestseller, Adidas) keep sending new-language data (e.g. Baltic) that can't be mapped. Named deadline (Aug 25) has passed.

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
id: BDD-3128
title: Future stock niet zichtbaar (FD: 674093)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-25
url: https://linear.app/fashioncloud/issue/BDD-3128/future-stock-niet-zichtbaar-fd-674093
```
Future stock not visible on Fashion Cloud site for a specific SKU despite being present in the feed.

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
id: BDD-3117
title: "FW: PME stockbase (FD: 672891)"
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-24
url: https://linear.app/fashioncloud/issue/BDD-3117/fw-pme-stockbase-fd-672891
```
Forwarded stockbase question, original contact out of office.

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
id: BDD-3107
title: Blue Seven - AI generated image metadata is lost when receiving images via B2X (Intex) (FD: 673177)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-20
url: https://linear.app/fashioncloud/issue/BDD-3107/blue-seven-ai-generated-image-metadata-is-lost-when-receiving-images
```
IPTC metadata on AI-generated model images stripped somewhere in the download pipeline.

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
id: BDD-3001
title: Corrupted images - GUESS (FD: 671049)
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-08-03
url: https://linear.app/fashioncloud/issue/BDD-3001/corrupted-images-guess-fd-671049
```
Recurring corrupted-image issue across Guess sub-brands — prior ticket (FD 584227) covered the same symptom.

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
id: BDD-2539
title: "Bilder-API liefert „render_requests_exceeded\" – Fragen zum Render-Limit (FD: 645720)"
priority: Medium
status: Triage
assignee: unassigned
team: BDD
updated: 2026-07-13
url: https://linear.app/fashioncloud/issue/BDD-2539/bilder-api-liefert-render-requests-exceeded-fragen-zum-render-limit-fd
```
Image API returning `render_requests_exceeded` since 2026-07-08 for a customer pulling product images — question about the render limit.

---

```yaml
id: BDD-2530
title: PIPE Global transform doesn't catch feed-transform mistakes on string attributes (FD: 645951)
priority: Low
status: Triage
assignee: unassigned
team: BDD
updated: 2026-07-09
url: https://linear.app/fashioncloud/issue/BDD-2530/pipe-global-transform-doesnt-catch-feed-transform-mistakes-on-string
```
Global transform should reject a feed-transform bug (season returned as a language object instead of a string) but doesn't. Already fixed for Secrid, pending release.

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
