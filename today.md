# Today

1. **His own [product-service#2767](prs/mine.md) (3/4, PCS CSV generation module) needs a human reviewer.** Opened 09-23 18:04 UTC. CodeRabbit is satisfied (approved 20:00 UTC after he answered its threads) and checks pass, but no human has reviewed it and it's `BLOCKED`. The requested reviewers are julsjacinto, alirezaMoazenFashion and the team. It's the next step of the Slice 3.2 stack, and part 4/4 comes after it.
2. **Review queue up to 4** (was 3):
   - [product-service#2683](prs/to-review.md) (swing): 10 days, zero human reviews. Its pipeline half already merged, so this is what's holding up the swing migration.
   - [brand-data-pipeline#1878](prs/to-review.md) (polaris): he's the sole named reviewer, 8 days idle.
   - **New:** [brand-data-pipeline#1945](prs/to-review.md) (dwiajik, BDD-3273 external image sync). It can't merge before product-service#2764, so it isn't urgent.
   - [#2514](prs/to-review.md): stale draft, 27 days.
3. **[BDD-2258](sources/linear/my-issues.md) (High) is still not started.** It's been unblocked since 08-31 and hasn't been updated since 08-18.

## Worth noting (not urgent)
- **[product-service#2754](archive/prs/product-service.md) (2/4) merged** 09-23 15:46 UTC, so 2 of the 4 Slice 3.2 PRs are in.
- **[BDD-3252](sources/linear/my-issues.md) (Off-Boarded Brands Deletion) is off his list.** It was reassigned to Mariana and moved to In Review on 09-21, which earlier syncs missed. He now has 7 open issues.
- **Three new Triage tickets on 09-24** ([support/open.md](support/open.md)). [BDD-3306](support/open.md) (Medium) is the one with impact: a GTIN of `0` on CWF is reportedly blocking the Showroom stock importer. The others are [BDD-3304](support/open.md) (routine Blackstone EAN deletion) and BDD-3305 (internal feature request, already Dushan's).
- **Dagster was quiet: 2 alerts in 24h**, both new for their brands and with no follow-up yet. `viaVai_FEED_sync_images` exceeded the 3h run limit, and digel/FEED had 12 asset materializations fail. riani and sOliver didn't recur. See [dagster-alerts/log.md](dagster-alerts/log.md).
