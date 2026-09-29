# Today

1. **Finish Video Delivery Slice 3.2 on the backend side.** All four product-service parts are merged ([#2806](archive/prs/product-service.md), 4/4, merged 09-28), and BDD-3205/BDD-3191 are Done. What still holds BDD-3206/BDD-3223 open:
   - [backend#7043](prs/mine.md): irembbt's Changes Requested from 09-24 is still the standing verdict. He pushed 09-27 and nobody has re-reviewed, so ask irembbt to take another look.
   - [backend#7048](prs/mine.md): approved and mergeable. Only he can merge it, and nothing blocks it.
2. **Review [product-service#2808](prs/to-review.md)** (ONA Mongo AWS auth fix, names him). BlueSeven's migration is stuck at the Phase 3 extract until this lands, so it's blocking alirezaMoazenFashion.
3. **Review [brand-data-pipeline#1969](prs/to-review.md)** (retire `image_sync.credential_id`, BDD-3280). cinque_FEED2 is one of the eight configs it touches, and cinque's `download_images` [failed again](dagster-alerts/log.md) at 09-28 23:30 UTC.
4. **[BDD-2258](sources/linear/my-issues.md) (High) is still not started.** It's been Ready To Start since 08-31 and was last touched 08-18. With the Slice 3.2 PCS work merged, it's the next High item that only he can do.

## Worth noting (not urgent)
- **Triage is down to 2 (was 12) and support/open.md is empty.** A 09-28 sweep, mostly by abubakarwase, shipped, canceled or picked up every support ticket. See [support/recently-closed.md](support/recently-closed.md).
- **dorisStreich FEED failed twice 09-28** (9 asset failures, then `publish_from_map`), and "Enable Doris Streich fully on PIPE" (product-service#2810) merged the next morning. It isn't his PR, but check the post-flip runs before assuming the migration is healthy. See [dagster-alerts/log.md](dagster-alerts/log.md).
- **mosMosh has been quiet since the 09-27 run-limit hit.** The `analytics` step failed once more 09-28 (existing `recurring` pattern).
- **His review queue went from 5 to 3.** He approved #2785, #2801 and #2798 (all merged) and both staging releases. PDS SDK stage 3/4 (product-service#2813) is up as a draft, and he may get asked next.
