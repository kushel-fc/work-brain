# Today

**Earmark fired: gabor's FTP fix is in production.** dwiajik's product-service#2851 (timeouts on per-file FTP commands) merged 10-02 and shipped in production release #2854 at 07:37 UTC this morning. The first gabor run since (hand-started, 08:38 UTC) failed on move-images with exit 1 instead of hanging for 3h. That's consistent with the timeouts now firing on a connection that's still bad, but it isn't confirmed. A new earmark waits for a full quiet cycle before calling it fixed. See [dagster-alerts/log.md](dagster-alerts/log.md).

1. **Rebase [backend#7043](prs/mine.md) (Slice 3.2 backend, BDD-3206). It now conflicts with `staging`.** It was mergeable at the 10-02 sync. irembbt's Changes Requested from 09-24 still stands, and nobody has re-reviewed since his 09-27 push (eight days). Rebase first, then ask irembbt directly. It's the only thing blocking BDD-3206/BDD-3223.
2. **Merge [backend#7048](prs/mine.md).** Approved and mergeable since 09-23 (second read confirmed it). Only he can merge it, and nothing blocks it.
3. **Review [brand-data-pipeline#1969](prs/to-review.md)** (retire `image_sync.credential_id`). dwiajik rebased it 10-02 and it's mergeable for the first time since 09-30, with no reviews from anyone. +52/-32.
4. **Ask about [product-service#2808](prs/to-review.md)** (ONA Mongo AWS auth). Seven days, no review from anyone. Check with alirezaMoazenFashion whether it's still needed before reviewing 400+ lines.
5. **Start [BDD-3213](sources/linear/my-issues.md) (Slice 5).** No movement since 10-01. The N3 store decision ([BDD-3193](https://linear.app/fashioncloud/issue/BDD-3193/n3-decide-where-the-pcs-audit-collection-lives), Done) still isn't recorded in the ticket. Earlier working notes say it's PCS's own Mongo on the separate content cluster, so write that down. The intent-vs-delivery question for the audit is still open. See [shaping](shaping/video-download-delivery.md).

## Worth noting (not urgent)
- **fynchHatton FEED2 `download_images` failed three times in one minute** on 10-04 08:35 UTC (exit 1). He disabled the image-sync schedule 09-30 because of the brand's FTP. This is a different job, so it's probably the same FTP problem showing up somewhere else. No thread.
- **cinque_FEED2 is fixed.** Aji found a missing `filename_pattern` in the FTP credential 10-02 and the rerun succeeded. No cinque alerts since. It wasn't #1969.
- **New support ticket [BDD-3344](support/open.md)** (Marc O'Polo PRICAT reprocessing, Low, unassigned). BDD-3343 (JustBrands) moved to the Replenishment team.
- **His review queue lost #2514** (closed unmerged 10-02). Queue is 2. He approved the 10-05 production release #2857.
- **carsJeans** hit the 3h limit again 10-02 (third time), on a run that started before #2851 reached production. **skiny** hit exit 137 again 10-04 (second time).
- [BDD-2258](sources/linear/my-issues.md) (High) is still Ready To Start, about seven weeks untouched.
