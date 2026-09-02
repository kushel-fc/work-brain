# Support — open

FD-sourced/support-shaped tickets, by priority then age (oldest first within each tier). Sourced from the team BDD Triage view: https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. Full raw Triage list (including non-FD internal items) lives in [`sources/linear/triage.md`](../sources/linear/triage.md).

No High-priority tickets currently sitting unassigned in Triage — the one High item here last sync (BDD-2957) has been picked up and moved to [`sources/linear/my-issues.md`](../sources/linear/my-issues.md).

## Medium

```yaml
id: BDD-3181
title: Frage zu Artikelpreis (FD: 675078)
priority: Medium
updated: 2026-09-01
url: https://linear.app/fashioncloud/issue/BDD-3181/frage-zu-artikelpreis-fd-675078
```
New.

```yaml
id: BDD-3037
title: Artikel data Florez komt niet door (FD: 671579)
priority: Medium
updated: 2026-08-10
url: https://linear.app/fashioncloud/issue/BDD-3037/artikel-data-florez-komt-niet-door-fd-671579
```
Packshots/model photos not arriving via API for LAVIE Womenswear — oldest untouched medium item.

```yaml
id: BDD-3043
title: Incorrect delimiter not shown as error (FD: 672084)
priority: Medium
updated: 2026-08-20
url: https://linear.app/fashioncloud/issue/BDD-3043/incorrect-delimiter-not-shown-as-error-fd-672084
```
PIPE silently mis-parses on a delimiter mismatch instead of erroring.

```yaml
id: BDD-3129
title: "Fwd: Dringend: Ansprechpartner (FD: 674136)"
priority: Medium
updated: 2026-08-25
url: https://linear.app/fashioncloud/issue/BDD-3129/fwd-dringend-ansprechpartner-fd-674136
```
Forwarded internal email, unclear ask — needs triage to figure out what's being requested.

```yaml
id: BDD-3137
title: "Via Appia: remove duplicate catalogs (FD: 674164)"
priority: Medium
updated: 2026-08-26
url: https://linear.app/fashioncloud/issue/BDD-3137/via-appia-please-remove-duplicate-catalogs-fd-674164
```
Duplicate Herbst/Winter catalogs across 4 Via Appia brands.

```yaml
id: BDD-3150
title: PIPE/Megatron Pipeline mismatch in processing capability for prices (FD: 674378)
priority: Medium
updated: 2026-08-27
url: https://linear.app/fashioncloud/issue/BDD-3150/pipemegatron-pipeline-mismatch-in-processing-capability-for-prices-fd
```
PIPE can process price files >500MB that Megatron's parser can't; dual-archiving now writes files Megatron will choke on. Needs a design decision, not just a fix.

```yaml
id: BDD-3155
title: "PIPE: meyer FEED2 data reprocessing is not working (FD: 674619)"
priority: Medium
updated: 2026-08-28
url: https://linear.app/fashioncloud/issue/BDD-3155/pipe-meyer-feed2-data-reprocessing-is-not-working-fd-674619
```
New.

```yaml
id: BDD-3163
title: Brand Offboarding - Delete data (FD: 674971)
priority: Medium
updated: 2026-08-31
url: https://linear.app/fashioncloud/issue/BDD-3163/brand-offboarding-delete-data-fd-674971
```
New — cross-check against the Notion "Brands that got offboarded" table before acting.

```yaml
id: BDD-3157
title: MAC - deletion of articles (FD: 674486)
priority: Medium
updated: 2026-08-31
url: https://linear.app/fashioncloud/issue/BDD-3157/mac-deletion-of-articles-fd-674486
```
New.

```yaml
id: BDD-3107
title: Blue Seven - AI generated image metadata lost via B2X (FD: 673177)
priority: Medium
updated: 2026-09-01
url: https://linear.app/fashioncloud/issue/BDD-3107/blue-seven-ai-generated-image-metadata-is-lost-when-receiving-images
```
IPTC metadata stripped somewhere in the download pipeline. Got new activity today (updated timestamp moved from 08-20 to 09-01) after weeks untouched — worth checking what changed.

## Low

```yaml
id: BDD-3180
title: API access permission error (FD: 675082)
priority: Low
updated: 2026-09-01
url: https://linear.app/fashioncloud/issue/BDD-3180/api-access-permission-error-fd-675082
```
New.

```yaml
id: BDD-3168
title: API Image request problem (FD: 675101)
priority: Low
updated: 2026-09-01
url: https://linear.app/fashioncloud/issue/BDD-3168/api-image-request-problem-fd-675101
```
New.

```yaml
id: BDD-2497
title: Delete pricelist fails in development (FD: 627912)
priority: Low
updated: 2026-07-08
url: https://linear.app/fashioncloud/issue/BDD-2497/delete-pricelist-fails-in-development-fd-627912
```

```yaml
id: BDD-2530
title: PIPE Global transform doesn't catch feed-transform mistakes (FD: 645951)
priority: Low
updated: 2026-07-09
url: https://linear.app/fashioncloud/issue/BDD-2530/pipe-global-transform-doesnt-catch-feed-transform-mistakes-on-string
```
Fix already shipped for Secrid, pending release for others.

```yaml
id: BDD-2969
title: "PIPE: Bestseller value mapping for Detailed Category not working (FD: 669153)"
priority: Low
updated: 2026-07-28
url: https://linear.app/fashioncloud/issue/BDD-2969/pipe-bestseller-value-mapping-for-detailed-category-not-working-fd
```

```yaml
id: BDD-3005
title: Er doet zich een herhalend probleem voor (FD: 663296)
priority: Low
updated: 2026-08-03
url: https://linear.app/fashioncloud/issue/BDD-3005/er-doet-zich-een-herhalend-probleem-voor-fd-663296
```
Recurring — Content > Productdata navigation bounces to home, blocks downloads.

```yaml
id: BDD-3091
title: "HUGO BOSS: request MM (FD: 672863)"
priority: Low
updated: 2026-08-18
url: https://linear.app/fashioncloud/issue/BDD-3091/hugo-boss-request-mm-fd-672863
```

```yaml
id: BDD-3109
title: Otto - inconsistent updatedSince timestamp in product API (FD: 673224)
priority: Low
updated: 2026-08-20
url: https://linear.app/fashioncloud/issue/BDD-3109/otto-problems-due-to-inconsistent-updatedsince-timestamp-in-product
```

```yaml
id: BDD-3110
title: Multidownload EAN limit inconsistent (1000 vs 2000) (FD: 673275)
priority: Low
updated: 2026-08-21
url: https://linear.app/fashioncloud/issue/BDD-3110/maximum-download-with-artnumbers-is-1000-eans-but-when-searching-on
```

```yaml
id: BDD-3117
title: "FW: PME stockbase (FD: 672891)"
priority: Low
updated: 2026-08-24
url: https://linear.app/fashioncloud/issue/BDD-3117/fw-pme-stockbase-fd-672891
```

```yaml
id: BDD-3128
title: Future stock niet zichtbaar (FD: 674093)
priority: Low
updated: 2026-08-25
url: https://linear.app/fashioncloud/issue/BDD-3128/future-stock-niet-zichtbaar-fd-674093
```

```yaml
id: BDD-3152
title: Item deletion Pure Path (FD: 674578)
priority: Low
updated: 2026-08-28
url: https://linear.app/fashioncloud/issue/BDD-3152/item-deletion-pure-path-fd-674578
```
New.

```yaml
id: BDD-3153
title: Preise siehe auch Ticket 610189 (FD: 674585)
priority: Low
updated: 2026-08-28
url: https://linear.app/fashioncloud/issue/BDD-3153/preise-siehe-auch-ticket-610189-fd-674585
```
New — references an older ticket (610189), needs triage to check that link.
