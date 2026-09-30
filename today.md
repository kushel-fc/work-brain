# Today

1. **Finish Video Delivery Slice 3.2 on the backend side.** Nothing moved here since 09-27. BDD-3206/BDD-3223 are still held open by:
   - [backend#7043](prs/mine.md): irembbt's Changes Requested from 09-24 is still the standing verdict. He pushed 09-27 and nobody has re-reviewed in three days, so ask irembbt directly.
   - [backend#7048](prs/mine.md): approved and mergeable since 09-23. Only he can merge it, and nothing blocks it.
2. **Review [product-service#2808](prs/to-review.md)** (ONA Mongo AWS auth fix). It's now two days with no review from anyone, and blueSeven's migration stays stuck at the Phase 3 extract until it lands. It's blocking alirezaMoazenFashion.
3. **Check fynchHatton_FEED2's next run.** It [exceeded its 3h limit](dagster-alerts/log.md) on the run that started 16:41 UTC 09-29. That was go-live day, about 2.5h after his own config PR ([brand-data-pipeline#1978](prs/mine.md)) merged. Someone claimed it with a reaction but didn't write anything. It's probably a big first run, but it's his change, so confirm.
4. **Review [product-service#2826](prs/to-review.md)** (Chamindu36, package version/publishing scripts, new this morning, names him).
5. **[BDD-2258](sources/linear/my-issues.md) (High) is still not started.** It's been Ready To Start since 08-31, now a month. It's the next High item that only he can do.

## Worth noting (not urgent)
- **[brand-data-pipeline#1969](prs/to-review.md) (on his review list) newly conflicts.** dwiajik needs to rebase before a review is worth doing.
- **PDS stream publishing flared twice** (09-29 14:47 and 09-30 01:56 UTC), and both cleared within 15 min. Aji traced the first to a transient DNS failure (`EAI_AGAIN`) reaching the Kinesis endpoint. See [dagster-alerts/log.md](dagster-alerts/log.md).
- **authenticstyle_FEED_sync_images exceeded 3h** (first occurrence, no thread).
- **Busy release day 09-29, none of it his to review:** PDS SDK stage 3/4 (#2813) merged 09-30 without being sent to him, `product-data-schema` got created and published to npm (#2814, #2822, CI fix #2827 pending), and weekend-blackout plus once-a-day feed crons landed on brand-data-pipeline (#1979, #1975).
- **Triage is down to 1** (BDD-3325 canceled). support/open.md is still empty.
