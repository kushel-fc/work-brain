# Today

**Slice 3.2 shipped.** irembbt approved backend#7043 10-05 11:00 UTC, he cleared the conflict and merged it and #7048, and BDD-3206 and BDD-3223 are both Done. His review queue is empty too: he approved #1969 (merged), and #2808 was closed by its author. See [prs/mine.md](prs/mine.md).

1. **Merge [backend#7066](prs/mine.md)** (BDD-3223 follow-up, one POST plus `GET /downloads/:id` for every initiator's CSV) once CI goes green. dwiajik approved it. His last push was 10-06 08:43 UTC and unit tests were still running at sync time. abirprantofc is still a requested reviewer, so check whether that review is needed before merging.
2. **Start [BDD-3213](sources/linear/my-issues.md) (Slice 5).** It's now the only open Video Delivery item on him and hasn't moved since 10-01. Two things to settle first: write down the N3 store decision ([BDD-3193](https://linear.app/fashioncloud/issue/BDD-3193/n3-decide-where-the-pcs-audit-collection-lives) is Done but doesn't say; earlier notes say PCS's own Mongo on the separate content cluster) and decide intent vs delivery for the audit. See [shaping](shaping/video-download-delivery.md).

## Worth noting (not urgent)
- **gabor earmark not met yet.** Two more hand-started move-images runs failed with exit 1 at 08:47 and 08:55 UTC 10-05, just after the last sync. Quiet since, about 24h. One more clean cycle and it fires. See [dagster-alerts/log.md](dagster-alerts/log.md).
- **carsJeans hit the 3h limit again** on a run that started 10-05 10:10 UTC, about 2.5h after #2851 (FTP command timeouts) reached production. So #2851 didn't fix carsJeans' hang. Fourth hit. No thread.
- **Two new Low support tickets, unassigned** ([support/open.md](support/open.md)): BDD-3349 (alchemists export forces the brand-data-dev IAM role, AccessDenied) and BDD-3350 (retailer can't open product pages on Android). BDD-3344 (Marc O'Polo PRICAT reprocessing) is four days unassigned.
- Slack was quiet otherwise: three alerts this cycle in total.
- [BDD-2258](sources/linear/my-issues.md) (High) is still Ready To Start, about seven weeks untouched.
