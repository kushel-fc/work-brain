# Today

## Earmarks triggered
None. No active earmarks.

## Priorities
1. **Get his own [frontend#7203](prs/mine.md) reviewed** (video reprocessing admin page, BDD-3499, In Review). It is the last piece of the Video Reprocessing project; the endpoints it calls (#3017) merged 10-21 and are in production by release timing. It's `BLOCKED` with no review requested yet.
2. **Review [product-service#3035](prs/to-review.md)** (dwiajik, export PDS payloads job, 2/3). It names him, no human has reviewed it, and 3/3 (#3036, draft) sits behind it. CodeRabbit's last review is an approval.
3. **Unassigned FD tickets that landed since yesterday** (all Medium or Low, none his by default): [BDD-3512](support/open.md) (Olymp image merge rules, says it blocks images on the platform), [BDD-3514](support/open.md) (watermark on API images) and [BDD-3513](support/open.md) (HANRO merge rule, Low).

## Worth noting (not urgent)
- **#3017 and #3028 merged.** The `{ videos: 1 }` index (#3028) was written because `validate` timed out at 120s on development without it. By timing it is in production release #3039 (10-22 08:04 UTC); I haven't confirmed the index finished building or that `validate` is fast there. BDD-3498 Done, BDD-3455 (the old parent) Canceled.
- **PCS 5xx alerts overnight:** two Warn/recover pairs 00:37 to 00:59 UTC (ALB ratio and content API rate, peak 0.5%). No thread, no deploy at the time. See the [Dagster log](dagster-alerts/log.md).
- **New brand failures, none his:** ultimoFashion_FEED failed three times 10-21 (two hand-started retries, then the schedule), calida_FEED a second day running.
- **fynchHatton's image-sync schedule is still on:** two 3h hangs on 10-21, third day running, from the schedule he disabled 09-30.
- **Review queue:** two (#3035 and the dependabot bump brand-data-pipeline#2019, since 10-07). He already approved #3040.
- **Support:** eight open and unassigned, three new (see [support/open.md](support/open.md)).
