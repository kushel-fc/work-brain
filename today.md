# Today

**Earmark fired: gabor's FTP problem looks fixed.** No gabor alert since 10-05 08:55 UTC, about 48h across two full cycles, most likely thanks to product-service#2851's FTP command timeouts. carsJeans is not fixed: it hit the 3h limit a fifth time on 10-06. See [dagster-alerts/log.md](dagster-alerts/log.md) and [_meta/earmarks.md](_meta/earmarks.md).

**Slice 3.2 follow-ups are merged.** backend#7066 merged 10-07 07:07 UTC (dwiajik and irembbt approved), and his product-service#2866 (cap the PCS CSV signed-URL lifetime at 7 days) merged 10-06. He has zero open PRs and an empty review queue. See [prs/mine.md](prs/mine.md).

1. **Get [product-service#2866](archive/prs/product-service.md) into production before `enable_pcs_csv_generation` goes on there.** It merged after the 10-06 production release, so it's only in staging. Without it, PCS's CSV store fails in production when a caller leaves out `ttlSeconds`. Earmarked.
2. **Start [BDD-3213](sources/linear/my-issues.md) (Slice 5).** Now the only open Video Delivery item on him, no movement since 10-01. First write down the N3 store decision ([BDD-3193](https://linear.app/fashioncloud/issue/BDD-3193/n3-decide-where-the-pcs-audit-collection-lives) is Done but doesn't say) and decide intent vs delivery for the audit. See [shaping](shaping/video-download-delivery.md).

## Worth noting (not urgent)
- **New Medium support ticket, unassigned: [BDD-3351](support/open.md)** (FD 679762). Zalando gets PSERR_62 on some image downloads and blames the signed CloudFront URL's query string. Touches PDS image links, so it's close to his area, but it isn't assigned to him.
- **New PDS stream relay alarms** 10-06 11:59 UTC: `style` and `color` relays dropped records a consumer queue refused (26 style records in one 5-minute window), in the same window as the 10-06 production release. Undelivered records can be replayed from Kinesis until about 10-08 11:54 UTC. Not his, one :eyes: each, no thread.
- **carsJeans hit the 3h limit a fifth time** (10-06, same 10:10 UTC scheduled start). Two new first-time alerts: bazlen_FEED2 3h hang and unitedBrands FEED 11 asset failures. process_enrichment_flow hung 3h again (first since 09-18). The Datadog product-service log index hit its daily quota mid-afternoon 10-06, so logs weren't indexed for about 14h.
- [BDD-2258](sources/linear/my-issues.md) (High) is still Ready To Start, about seven weeks untouched.
