# Today

1. **Review [product-service#2832](prs/to-review.md)** (FTP connection fix in the image downloader). blueSeven's production ONA seed stalled on image download 09-30 and stays blocked at Phase 3 Step 1 until this lands. Chamindu36 approved it, and he and abirprantofc are the only individual reviewers requested.
2. **Unblock or ask about [product-service#2808](prs/to-review.md)** (ONA Mongo AWS auth). Three days with no review from anyone. blueSeven's data steps got through on 09-30, so ask alirezaMoazenFashion whether it's still needed before reviewing 400+ lines.
3. **Finish Video Delivery Slice 3.2 on the backend side.** Still stuck:
   - [backend#7043](prs/mine.md): irembbt's Changes Requested from 09-24 still stands. Nobody has re-reviewed since his 09-27 push, four days ago. Ask irembbt directly.
   - [backend#7048](prs/mine.md): approved and mergeable since 09-23. Only he can merge it, and nothing blocks it.
4. **Decide the open questions on [BDD-3213](sources/linear/my-issues.md)** (Slice 5, new, In Progress as of this morning). The ticket says it can't start until the PCS Mongo location (N3) is settled, and it needs a decision on whether the audit records intent or delivery. See [shaping](shaping/video-download-delivery.md).
5. **Check the image-sync hang wave is over.** Five `*_sync_images` jobs (carsJeans, gabor x2, tamaris, gantFootwear, hanro) plus swing_FEED hit the 3h limit 09-30 to 10-01. dwiajik's directory-listing timeout fix (product-service#2836) merged 10-01 08:18 UTC, after all of them. Confirm the next runs finish, and check for hanging ECS tasks behind cancelled runs. See [dagster-alerts/log.md](dagster-alerts/log.md).
6. **Review [product-service#2838](prs/to-review.md)**: a 5-line release changeset, quick.

## Worth noting (not urgent)
- **fynchHatton is handled.** He traced the run-limit hits to the brand's image FTP, disabled the schedule, and stopped the hanging ECS tasks (including one from about 5 days ago). Honey is following up with the brand. dwiajik's draft brand-data-pipeline#1990 will make cancelling a run stop its ECS task.
- **New support ticket [BDD-3339](support/open.md)** (Delete Pioneer, Medium, unassigned). The PIPE config was already removed (brand-data-pipeline#1987), but the Mongo deletion isn't shown anywhere.
- **cinque_FEED2 failed twice more** on the FTP-to-S3 move step. It's one of the configs in the still-conflicting [#1969](prs/to-review.md).
- He approved #2826 (merged) and PDS SDK stage 4/4 (#2829, still open).
- [BDD-2258](sources/linear/my-issues.md) (High) is still Ready To Start, six weeks untouched.
