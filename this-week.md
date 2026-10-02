# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 5**: [BDD-3213](sources/linear/my-issues.md) is In Progress since 10-01. N3 ([BDD-3193](https://linear.app/fashioncloud/issue/BDD-3193/n3-decide-where-the-pcs-audit-collection-lives)) is Done, so the store question is no longer the blocker, but the chosen option isn't written in the ticket. The intent-vs-delivery decision is still open. See [shaping](shaping/video-download-delivery.md).
- **Video Delivery Slice 3.2**: [BDD-3223](sources/linear/my-issues.md) / [BDD-3206](sources/linear/my-issues.md) are In Review. The product-service stack is done. The backend side ([backend#7043](prs/mine.md), [#7048](prs/mine.md)) didn't move again this cycle.
- **[BDD-2258](sources/linear/my-issues.md)**: Sample XML/CSV with video links + test manufacturer on SFTP. High priority, Ready to Start and unblocked since 08-31, still not started (last updated 08-18).
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, long parked, still assigned to Kushel.

## PR backlog
- **None of his own open in the two tracked repos.** The backend PRs are in [prs/mine.md](prs/mine.md).
- **Review queue is 3:** [#2808](prs/to-review.md) (ONA Mongo auth, four days unreviewed), [#1969](prs/to-review.md) (still conflicting) and [#2514](prs/to-review.md) (stale draft, conflicting). #2832 closed (superseded) and #2838 merged, neither with his review.
- **Churn:** product-service stayed at 9. New: #2851 (FTP command timeouts), #2850 (PDS stream relay), #2845 (draft). Gone: #2832 (closed), #2838 and #2829 (merged), plus #2846, #2847, #2844, #2843 and the 10-01 releases opened and merged inside the window. #2827 and #2514 still conflict. brand-data-pipeline stayed at 12. New: #1993 (royRobson config). Merged: #1990, plus #1996, #1994, #1991 and two releases inside the window. #1969, #1956, #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still conflict.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **None aged past a week.** BDD-3343 (JustBrands B2B orders) is new today. BDD-3305 is an internal feature request that Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): active. Slice 3.2 is waiting on the backend review. Slice 5 needs the intent-vs-delivery decision, and the N3 outcome should be written down.

## Dagster (recurring patterns to watch)
- **Image-sync FTP hangs** (09-29 to 10-01): gabor is still hanging after the 10-01 release (`recurring`). carsJeans repeated too, but Aji called it expected. tamaris, gantFootwear, hanro and authenticstyle were quiet. Aji killed the hanging tasks (gabor, blueSeven, swing) 10-01 ~14:00 UTC. The next fix is product-service#2851 (earmarked).
- **cinque FEED2** fails on every scheduled move-images run (`recurring`, 09-27 to 10-01).
- **royRobson FEED2** move-images is failing again, caused by the SFTP URL switch without the images being moved. Being handled in-thread.
- **blueSeven ONA FEED2**: the stuck seed was killed. Its fix (#2846) shipped 10-01, and no re-run shows yet.
- **beltsBugatti FEED** 11 asset failures (10-02, first occurrence). **skiny** exit 137 (09-30) didn't repeat.
- PDS stream publishing, dorisStreich, mosMosh and `analytics` were quiet. One routine galvatron health-check blip.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
