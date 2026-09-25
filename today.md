# Today

1. **Answer the 7 human review threads on his own [product-service#2767](prs/mine.md) (3/4, PCS CSV generation module).** Chamindu36 and irembbt reviewed it 09-24 (TSDoc, moving helpers out of the service class, `language` on the multi-download DTO, per-language failure behaviour, filename date format vs backend, where `multi-download/resolve` is called). Neither approved or requested changes. It's still `BLOCKED`, and part 4/4 of Slice 3.2 comes after it.
2. **Review queue is 3** (was 4), and nothing in it is blocking a merge:
   - **New:** [product-service#2783](prs/to-review.md) (dushansilva, otto-image-upload CloudWatch diagnostic). It already has three approvals and is `CLEAN`, so this is a quick look at most.
   - [brand-data-pipeline#1878](prs/to-review.md) (polaris iteration 1): he's the sole named reviewer, 9 days idle. The author opened iteration 2 (brand-data-pipeline#1951 + product-service#2773) on 09-24, so check whether #1878 still matters before reviewing.
   - [#2514](prs/to-review.md): stale draft, 28 days.
3. **[BDD-2258](sources/linear/my-issues.md) (High) is still not started.** It's been unblocked since 08-31 and hasn't been updated since 08-18.

## Worth noting (not urgent)
- **He cleared two BDD-3273 reviews:** approved [brand-data-pipeline#1945](sources/github/brand-data-pipeline/open-prs.md) 09-24 and its dependency product-service#2764 09-25. Both are approved; #2764 has to merge first.
- **The swing migration's product-service half ([#2683](archive/prs/product-service.md)) closed without merging** 09-24, so it's off his queue. The swing FEED then failed twice on `download_images` (missing `filename_pattern`); Abir fixed the config in-thread.
- **Triage went 10 to 12, with 3 High items now (was 1)** ([support/open.md](support/open.md)). [BDD-3312](support/open.md) (new, Citizen asks to remove an image shared by accident, unassigned) and [BDD-3311](support/open.md) (Xsensible full sync, back in Triage, still Oleh's) join BDD-3248. Also new: BDD-3309 (Medium, Falke placeholder images) and BDD-3310 (Low, royRobson config). BDD-3304 shipped and BDD-3296 was picked up by abubakarwase.
- **Dagster: 6 alerts.** The stuck viaVai image-sync run from 09-23 was stopped manually after about 43h. woden/FEED and stateOfArt/PRICAT each had 11 asset failures (both first occurrences). The `analytics` step failure came back after 8 quiet days. See [dagster-alerts/log.md](dagster-alerts/log.md).
