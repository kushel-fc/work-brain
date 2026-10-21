# Today

## Earmarks triggered
- **Video reprocessing releases:** his product-service#2996 (1/4) and brand-data-pipeline#2074 are in **production** since 10-20 ~12:58 UTC (releases #3015 and #2085, product-service first, as the rollout needs). Inferred from release timing, I haven't read the release contents. No `download_videos` or publish failures in the alerts channel since, but nothing has used the new step yet. See [`_meta/earmarks.md`](_meta/earmarks.md).
- **ftcCashmere:** no alert for about 24h since the credential fix (#2069) reached production 10-20 07:59 UTC. Encouraging, not conclusive. Whether it also clears the 403 in [BDD-3357](support/open.md) is still unconfirmed.

## Priorities
1. **Get his own [#3017](prs/mine.md) unblocked** (video reprocessing 4/4, BDD-3498). Chamindu36, irembbt and dwiajik approved 10-20 and checks are green, but it's `BLOCKED` on abubakarwase (probably code owner) and CodeRabbit has requested changes a third time (1 comment left as of 08:33 UTC). He replied to the threads this morning. It's the last endpoint PR, and the publish step it depends on is already in production.
2. **BDD-3455 and BDD-3449 bookkeeping.** BDD-3455 (parent) is In Progress; BDD-3449 (video download parity) moved back to To Do this morning. BDD-3499, the admin page in the frontend repo, is the only unstarted piece of Video Reprocessing.

## Worth noting (not urgent)
- **Review queue is down to one.** product-service#2960 (Willen) was closed unmerged when dushansilva moved Willen to PIPE with #3016, so nothing is waiting on him except the dependabot bump (brand-data-pipeline#2019, since 10-07). The routine staging release PR product-service#3023 also names him.
- **fynchHatton's image-sync schedule is still on:** it hung 3h again 10-20 (second day running) from the schedule he disabled 09-30. See the [Dagster log](dagster-alerts/log.md).
- **PDS relay Lambda** (`pds-stream-relay-style-production`) alerted four times 10-20 13:10 to 16:10 UTC and recovered 16:12. No thread, no cause stated.
- **New brand failures, none his:** calida_FEED (12 assets, 10-20 19:23 UTC), luisacerano_FEED (map/merge/publish, after its migration), falke_FEED hand-started again.
- **Support:** no change, five open and unassigned (see [support/open.md](support/open.md)). Nothing new in Triage.
- **Slice 5 / PCS:** unchanged, closed. The PCS p95 monitor he muted for #2981 is still muted as far as the sources show. See [shaping](shaping/video-download-delivery.md).
