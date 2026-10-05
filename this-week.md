# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 5**: [BDD-3213](sources/linear/my-issues.md) has been In Progress since 10-01 with no movement. N3 ([BDD-3193](https://linear.app/fashioncloud/issue/BDD-3193/n3-decide-where-the-pcs-audit-collection-lives)) is Done, but the chosen store isn't written in the ticket. The intent-vs-delivery decision is still open. See [shaping](shaping/video-download-delivery.md).
- **Video Delivery Slice 3.2**: [BDD-3223](sources/linear/my-issues.md) / [BDD-3206](sources/linear/my-issues.md) are In Review. The product-service stack is done. On the backend side, [backend#7043](prs/mine.md) now conflicts with `staging` and still has irembbt's Changes Requested. [#7048](prs/mine.md) is approved and unmerged.
- **[BDD-2258](sources/linear/my-issues.md)**: Sample XML/CSV with video links + test manufacturer on SFTP. High priority, Ready to Start and unblocked since 08-31, still not started (last updated 08-18).
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, long parked, still assigned to Kushel.

## PR backlog
- **None of his own open in the two tracked repos.** The backend PRs are in [prs/mine.md](prs/mine.md). #7043 is newly conflicting.
- **Review queue is 2:** [#1969](prs/to-review.md) (rebased 10-02, mergeable, unreviewed) and [#2808](prs/to-review.md) (ONA Mongo auth, seven days unreviewed). #2514 was closed unmerged 10-02.
- **Churn:** product-service 9 to 6. Merged: #2851 (FTP command timeouts, now in production) and #2850 (PDS stream relay). Closed unmerged: #2827 and #2514. New: #2857 (10-05 production release, he approved it). Opened and merged inside the window: #2852, #2855 and the 10-02/10-05 releases. brand-data-pipeline stayed at the same 12. Opened and merged inside the window: #1997, #1998, #1999, #2001 and two releases. #1969 no longer conflicts. #1956, #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still do.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **None aged past a week.** BDD-3344 (Marc O'Polo PRICAT reprocessing) is three days old. BDD-3305 is an internal feature request that Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): active. Slice 3.2 needs the #7043 rebase and irembbt's re-review. Slice 5 needs the intent-vs-delivery decision, and the N3 outcome should be written down.

## Dagster (recurring patterns to watch)
- **Image-sync FTP hangs** (09-29 to 10-02): the next fix (product-service#2851) reached production 10-05 07:37 UTC. gabor's first run since failed fast (exit 1) instead of hanging, which isn't proof either way yet (earmarked). carsJeans hit the 3h limit a third time on 10-02, before the fix shipped.
- **fynchHatton FEED2** `download_images` failed three times 10-04 (`recurring`). The brand's image FTP problem from 09-30 is probably still open.
- **cinque FEED2** is fixed (missing `filename_pattern`, Aji, 10-02). sOliver FEED had an ETIMEDOUT that Aji reran successfully.
- **skiny** exit 137 again 10-04 (`recurring`, second time).
- royRobson, blueSeven, beltsBugatti, galvatron, PDS, mosMosh, dorisStreich and `analytics` were quiet. A Slackbot AWS SNS subscription confirmation was posted 10-05 07:39 UTC (not an alert).
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
