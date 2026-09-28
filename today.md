# Today

> **Linear wasn't reachable this sync (09-28).** The Linear sections below are carried forward from 09-25. GitHub and Slack are current.

1. **Review queue grew from 3 to 5, with three new asks that name him individually:**
   - [product-service#2785](prs/to-review.md) (dwiajik, PDS Streams SDK `subscribe()` contract, stage 1/4). This one blocks a stack: stage 2/4 (#2798) is waiting on this shape review. CodeRabbit has approved; there's no human review yet.
   - [product-service#2801](prs/to-review.md) (automated, enable DOROTHEE SCHUMACHER on PIPE). This is the go-live flip after schumacher iteration 2 merged 09-25.
   - [product-service#2792](prs/to-review.md) (blueSeven mapping rules, 112 rules). Older blueSeven PRs are still open and conflicting, so ask which set is current first.
   - [brand-data-pipeline#1878](prs/to-review.md) now conflicts, and Polaris iteration 2 has already merged. Ask for it to be closed; don't review it. [#2514](prs/to-review.md) is still a stale draft (31 days).
2. **Open Video Delivery Slice 3.2 part 4/4.** [#2767](archive/prs/product-service.md) (3/4) merged 09-28 07:41 UTC, so he has zero open PRs and 4/4 is next. See [shaping](shaping/video-download-delivery.md).
3. **mosMosh is back: `mosMosh_FEED` went over the 3h run limit 09-27** (run eb61e7cd, started 08:04 UTC). It's the first mosMosh alert since the 09-17 to 09-21 spree ended, and nobody has followed up in-thread. See [dagster-alerts/log.md](dagster-alerts/log.md).
4. **[BDD-2258](sources/linear/my-issues.md) (High) is still not started** as of 09-25. It's been unblocked since 08-31.

## Worth noting (not urgent)
- **Dagster was fairly quiet over the weekend (10 messages):** a new cinque FEED2 `download_images` failure (same shape as swing's missing-`filename_pattern` issue from 09-25), the `analytics` step failing once more, two galvatron health-check blips, and a PDS relay Lambda error burst on 09-25 right after the BDD-3277 PoC merged. Aji deployed a fix for that and it recovered.
- **Brand migrations are moving to PIPE:** Polaris and schumacher iteration 2 merged 09-25, and automated PIPE-enable PRs are open for both (product-service#2802 Polaris, #2801 schumacher). dorisStreich INTEX (product-service#2684 + brand-data-pipeline#1872) closed without merging.
- **Carried from 09-25 (not re-checked):** Triage stood at 12 with 3 High ([BDD-3312](support/open.md) Citizen image deletion unassigned, [BDD-3311](support/open.md), [BDD-3248](support/open.md)).
