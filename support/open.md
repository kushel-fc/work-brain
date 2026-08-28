# Support — open

FD-sourced/support-shaped tickets, by priority then age (oldest first within each tier). Sourced from the team BDD Triage view: https://linear.app/fashioncloud/team/BDD/triage. Populated on sync. Full raw Triage list (including non-FD internal items) lives in [`sources/linear/triage.md`](../sources/linear/triage.md).

## High

```yaml
id: BDD-2957
title: "[dual-archive] G-star archiving creates a malformed/incomplete file (FD: 662655)"
priority: High
updated: 2026-08-26
url: https://linear.app/fashioncloud/issue/BDD-2957/dual-archive-g-star-archiving-creates-a-malformedincomplete-file-fd
```
PIPE's dual-archive output is malformed (truncated, unclosed tags) vs. the pre-archive copy — blocks Megatron price import.

## Medium

```yaml
id: BDD-3150
title: PIPE/Megatron Pipeline mismatch in processing capability for prices (FD: 674378)
priority: Medium
updated: 2026-08-27
url: https://linear.app/fashioncloud/issue/BDD-3150/pipemegatron-pipeline-mismatch-in-processing-capability-for-prices-fd
```
New — PIPE can process price files >500MB that Megatron's parser can't; dual-archiving now writes files Megatron will choke on. Needs a design decision, not just a fix.

```yaml
id: BDD-2539
title: "Bilder-API liefert render_requests_exceeded (FD: 645720)"
priority: Medium
updated: 2026-07-13
url: https://linear.app/fashioncloud/issue/BDD-2539/bilder-api-liefert-render-requests-exceeded-fragen-zum-render-limit-fd
```
Image API render-limit question, open since July 8 — oldest untouched medium item.

```yaml
id: BDD-3001
title: Corrupted images - GUESS (FD: 671049)
priority: Medium
updated: 2026-08-03
url: https://linear.app/fashioncloud/issue/BDD-3001/corrupted-images-guess-fd-671049
```
Recurring — same symptom as a prior closed ticket (FD 584227).

```yaml
id: BDD-3037
title: Artikel data Florez komt niet door (FD: 671579)
priority: Medium
updated: 2026-08-10
url: https://linear.app/fashioncloud/issue/BDD-3037/artikel-data-florez-komt-niet-door-fd-671579
```
Packshots/model photos not arriving via API for LAVIE Womenswear.

```yaml
id: BDD-3043
title: Incorrect delimiter not shown as error (FD: 672084)
priority: Medium
updated: 2026-08-20
url: https://linear.app/fashioncloud/issue/BDD-3043/incorrect-delimiter-not-shown-as-error-fd-672084
```
PIPE silently mis-parses on a delimiter mismatch instead of erroring.

```yaml
id: BDD-3107
title: Blue Seven - AI generated image metadata lost via B2X (FD: 673177)
priority: Medium
updated: 2026-08-20
url: https://linear.app/fashioncloud/issue/BDD-3107/blue-seven-ai-generated-image-metadata-is-lost-when-receiving-images
```
IPTC metadata stripped somewhere in the download pipeline.

```yaml
id: BDD-3129
title: "Fwd: Dringend: Ansprechpartner (FD: 674136)"
priority: Medium
updated: 2026-08-25
url: https://linear.app/fashioncloud/issue/BDD-3129/fwd-dringend-ansprechpartner-fd-674136
```
Forwarded internal email, unclear ask — needs triage to figure out what's being requested.

```yaml
id: BDD-3103
title: Overview of fcKey Standard Value Translations (FD: 673052)
priority: Medium
updated: 2026-08-26
url: https://linear.app/fashioncloud/issue/BDD-3103/need-response-until-august-25-overview-of-fckey-standard-value
```
Named deadline (Aug 25) has passed with no visible movement — ownership question for fcKey standard-value translations.

```yaml
id: BDD-3112
title: Cancellations SS27 (FD: 673398)
priority: Medium
updated: 2026-08-26
url: https://linear.app/fashioncloud/issue/BDD-3112/cancellations-ss27-fd-673398
```
SS27 cancellations file submitted by Altex/Funky Buddha.

```yaml
id: BDD-3137
title: "Via Appia: remove duplicate catalogs (FD: 674164)"
priority: Medium
updated: 2026-08-26
url: https://linear.app/fashioncloud/issue/BDD-3137/via-appia-please-remove-duplicate-catalogs-fd-674164
```
Duplicate Herbst/Winter catalogs across 4 Via Appia brands.

## Low

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
