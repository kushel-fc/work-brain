# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 5**: [BDD-3213](sources/linear/my-issues.md), In Progress since 10-01 with no movement. N3 ([BDD-3193](https://linear.app/fashioncloud/issue/BDD-3193/n3-decide-where-the-pcs-audit-collection-lives)) is Done but the chosen store isn't written in the ticket. The intent-vs-delivery decision is still open. See [shaping](shaping/video-download-delivery.md).
- **Video Delivery Slice 3.2 follow-up**: [backend#7066](prs/mine.md), approved by dwiajik, CI running. BDD-3223 and BDD-3206 are Done (10-05).
- **[BDD-2258](sources/linear/my-issues.md)**: Sample XML/CSV with video links + test manufacturer on SFTP. High priority, Ready to Start and unblocked since 08-31, still not started (last updated 08-18).
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, long parked, still assigned to Kushel.

## PR backlog
- **None of his own open in the two tracked repos.** backend#7066 is his only open PR ([prs/mine.md](prs/mine.md)). #7043 and #7048 merged 10-05.
- **Review queue is empty** ([prs/to-review.md](prs/to-review.md)). He approved #1969 (merged 10-05). #2808 was closed unmerged by its author.
- **Churn:** product-service 6 to 3. Merged: #2857 (10-05 production release), #2840, plus #2859, #2860 and #2861 opened and merged inside the window (dwiajik's PDS schema/consumer work). Closed unmerged: #2808, #2858. brand-data-pipeline 12 to 11. Merged: #1969, plus #2003 (image sync once a day for 34 quiet brands), #2004 and #2005 inside the window. #1956, #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still conflict.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **None aged past a week.** BDD-3344 (Marc O'Polo PRICAT reprocessing) is four days old, BDD-3349 and BDD-3350 one day. BDD-3305 is an internal feature request that Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): Slice 3.2 done. Slice 5 needs the intent-vs-delivery decision, and the N3 outcome should be written down.

## Dagster (recurring patterns to watch)
- **Image-sync FTP problems after #2851** (in production since 10-05 07:37 UTC): gabor failed fast (exit 1) three times on 10-05 by hand, then went quiet about 24h (earmarked). carsJeans hung 3h again on a post-release run (fourth hit), so #2851 didn't fix it.
- **fynchHatton FEED2** `download_images` (`recurring`, last 10-04) and **skiny** exit 137 (`recurring`, last 10-04): no new alerts this cycle.
- Everything else was quiet. Only three alerts this cycle.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
