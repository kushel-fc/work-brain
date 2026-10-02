# Today

1. **Finish Video Delivery Slice 3.2 on the backend side.** Still stuck, and still the only thing blocking BDD-3206/BDD-3223:
   - [backend#7043](prs/mine.md): irembbt's Changes Requested from 09-24 still stands. Nobody has re-reviewed since his 09-27 push, five days ago. Ask irembbt directly.
   - [backend#7048](prs/mine.md): approved and mergeable since 09-23. Only he can merge it, and nothing blocks it.
2. **Start [BDD-3213](sources/linear/my-issues.md) (Slice 5).** Correction to yesterday: the N3 gate is already cleared. [BDD-3193](https://linear.app/fashioncloud/issue/BDD-3193/n3-decide-where-the-pcs-audit-collection-lives) (N3, his) has been Done since 09-29, but its ticket doesn't record which store was chosen, so make sure the decision is written down. The intent-vs-delivery question for the audit is still open. See [shaping](shaping/video-download-delivery.md).
3. **Unblock or ask about [product-service#2808](prs/to-review.md)** (ONA Mongo AWS auth). Four days, no review from anyone. blueSeven's data steps got through on 09-30, so ask alirezaMoazenFashion whether it's still needed before reviewing 400+ lines. It's the only reviewable PR left on his list.
4. **gabor's image sync is still hanging after the 10-01 release.** Two more 3h-limit hits started after the release went out (15:00 and 16:15 UTC). He asked in-thread whether the release would fix it and Aji said it should, but it didn't. dwiajik's [product-service#2851](sources/github/product-service/open-prs.md) (timeouts on per-file FTP commands) targets the remaining cause and has no human review yet. Earmarked to confirm once it ships. See [dagster-alerts/log.md](dagster-alerts/log.md).

## Worth noting (not urgent)
- **Two PRs left his review queue without his review.** [#2832](archive/prs/product-service.md) (blueSeven FTP fix) was closed unmerged, superseded by #2846, which merged and shipped 10-01. [#2838](archive/prs/product-service.md) merged with Chamindu36's approval only. Queue is 3.
- **royRobson move-images is failing again**, this time for a known reason: its URL was switched to SFTP (brand-data-pipeline#1984) without the images being moved. abubakarwase and Dushan are on it in-thread, and Büsra's #1993 is open.
- **cinque_FEED2 now fails on every scheduled image-sync run** (four in two days). It's one of the configs in the still-conflicting [#1969](prs/to-review.md).
- **New support ticket [BDD-3343](support/open.md)** (JustBrands B2B orders question, Low, unassigned). BDD-3339 (Pioneer deletion) went to abubakarwase.
- **beltsBugatti FEED** had 11 asset failures on a hand-started run this morning (first occurrence, no thread).
- [BDD-2258](sources/linear/my-issues.md) (High) is still Ready To Start, about seven weeks untouched.
