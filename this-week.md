# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 5**: [BDD-3213](sources/linear/my-issues.md), In Progress since 10-01 with no movement. N3 ([BDD-3193](https://linear.app/fashioncloud/issue/BDD-3193/n3-decide-where-the-pcs-audit-collection-lives)) is Done but the chosen store isn't written in the ticket. The intent-vs-delivery decision is still open. See [shaping](shaping/video-download-delivery.md).
- **Video Delivery Slice 3.2 follow-ups**: backend#7066 merged 10-07, product-service#2866 merged 10-06 (staging only, earmarked for production). BDD-3223 and BDD-3206 are Done.
- **[BDD-2258](sources/linear/my-issues.md)**: Sample XML/CSV with video links + test manufacturer on SFTP. High priority, Ready to Start and unblocked since 08-31, still not started (last updated 08-18).
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, long parked, still assigned to Kushel.

## PR backlog
- **None of his own open anywhere** ([prs/mine.md](prs/mine.md)). backend#7066 and product-service#2866 both merged this cycle.
- **Review queue is empty** ([prs/to-review.md](prs/to-review.md)).
- **Churn:** product-service stays at 3. #2824 (BDD-3328) merged, #2862 (dwiajik's PCS probe on the PDS queues, irembbt approved, CodeRabbit Changes Requested) is new. #2863 to #2868 opened and merged inside the window, including his #2866 and the 10-06 production release #2865. brand-data-pipeline 11 to 12: #2011 (hakansoylu1, brand migration agent, draft) is new, #2006 to #2010 and #2012 opened and merged inside the window. #1956, #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still conflict.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **None aged past a week.** BDD-3344 (Marc O'Polo PRICAT reprocessing) is five days old, BDD-3349 and BDD-3350 two days, BDD-3351 (Zalando PSERR_62, Medium) new today. BDD-3305 is an internal feature request that Dushan owns.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): Slice 3.2 and its follow-ups merged. Slice 5 needs the intent-vs-delivery decision, and the N3 outcome should be written down.

## Dagster (recurring patterns to watch)
- **gabor**: quiet about 48h, earmark fired, entry marked `self-resolved`.
- **carsJeans** `sync_images` 3h hang: five hits (09-30 to 10-06), all from the 10:10 UTC schedule. Not fixed by #2851. No owner.
- **process_enrichment_flow** 3h hang and the **Datadog log index quota**: both recurred 10-06 after a quiet stretch, both still no owner.
- **PDS stream relay undelivered** alarms (new, 10-06): watch for a repeat on the next release.
- **fynchHatton FEED2** and **skiny**: no new alerts since 10-04.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
