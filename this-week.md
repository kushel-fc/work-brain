# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 5**: [BDD-3213](sources/linear/my-issues.md) was assigned and moved to In Progress 10-01. It's blocked on N3 (where PCS's Mongo lives) and on the intent-vs-delivery decision for the audit. See [shaping](shaping/video-download-delivery.md).
- **Video Delivery Slice 3.2**: [BDD-3223](sources/linear/my-issues.md) / [BDD-3206](sources/linear/my-issues.md) are In Review. The product-service stack is done. The backend side ([backend#7043](prs/mine.md), [#7048](prs/mine.md)) didn't move this cycle.
- **[BDD-2258](sources/linear/my-issues.md)**: Sample XML/CSV with video links + test manufacturer on SFTP. High priority, Ready to Start and unblocked since 08-31, still not started (last updated 08-18).
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, long parked, still assigned to Kushel.

## PR backlog
- **None of his own open in the two tracked repos.** The backend PRs are in [prs/mine.md](prs/mine.md).
- **Review queue is 5:** [#2832](prs/to-review.md) (blueSeven FTP fix, new), [#2808](prs/to-review.md) (ONA Mongo auth, 3 days unreviewed), [#2838](prs/to-review.md) (release changeset, new), [#1969](prs/to-review.md) (still conflicting) and [#2514](prs/to-review.md) (stale draft, now conflicting).
- **Churn:** product-service went 6 to 9. New: #2840, #2838, #2832, #2829. Merged: #2826, plus 11 more that opened and merged inside the window (#2836 timeout fix, #2833 Changesets, #2834/#2839 agent personas, #2831, #2835, #2842, #2828 and releases). #2827 and #2514 newly conflict. brand-data-pipeline stayed at 12. New: #1990 (draft). Merged: #1910, plus #1989, #1987, #1986, #1984, #1983 and three releases inside the window. #1969, #1956, #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still conflict.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **None aged past a week.** BDD-3339 (Pioneer deletion) is one day old. BDD-3305 is an internal feature request that Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): active. Slice 3.2 is waiting on the backend review, and Slice 5 needs the N3 and intent-vs-delivery decisions.

## Dagster (recurring patterns to watch)
- **Image-sync FTP hangs** (09-29 to 10-01): authenticstyle, fynchHatton, carsJeans, gabor (twice, `recurring`), tamaris, gantFootwear, hanro, and possibly swing_FEED. The likely fix (product-service#2836) merged 10-01 and isn't confirmed yet.
- **blueSeven ONA FEED2** stalled on image download (09-30). The fix is product-service#2832, in his review queue.
- **cinque FEED2** keeps failing on FTP image steps (`recurring`, 09-27, 09-28, 09-30 twice).
- **skiny process_images_sync** exit 137 (09-30, first occurrence, likely OOM).
- **PDS stream publishing** was quiet this cycle. dorisStreich, mosMosh and `analytics` were also quiet.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
