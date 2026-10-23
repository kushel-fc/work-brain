# Today

## Earmarks triggered
None. No active earmarks. (The 10-21 ftcCashmere earmark's "quiet means fixed" reading did not hold, see below.)

## Priorities
1. **Decide what to pick up next from his five new Backlog tickets, the daily video sweep** ([BDD-3543 to BDD-3547](sources/linear/my-issues.md), created 10-22 16:02 UTC, all assigned to him, none started). He has no open PRs now, so these are the only unblocked work of his own. BDD-3545 (download job ignores hash matches that are unprocessed or failed) looks like the smallest piece; I only read titles, not descriptions.
2. **Review [product-service#3045](prs/to-review.md)** (Chamindu36, CodeQL fix for alert 104, database query built from user-controlled sources). It names him, it's already in changes-requested, and no human has approved. Also in his queue: the routine staging release #3058 (names him and dwiajik).
3. **ftcCashmere_FEED2 failed again 10-22 17:42 UTC**, about two days after the credential fix reached production. [BDD-3357](support/open.md) (the 403 on image URLs) is still unassigned in Triage. Not his by default, but the fix he'd have credited didn't settle it.

## Worth noting (not urgent)
- **Video Reprocessing code is done.** frontend#7203 merged 10-22 12:29 UTC, BDD-3499 Done. His open-PR list is empty. The #2951 `video_processing_enabled` backfill still isn't visible as done.
- **Triage went 9 to 4.** Irem Bulut closed BDD-3512, BDD-3513, BDD-3515 and picked up BDD-3514 and BDD-3349; BDD-3501 was fixed by product-service#3054 and Deployed 10-23. Three Medium FD tickets remain unassigned (see [support/open.md](support/open.md)).
- **Production releases:** product-service #3051 and brand-data-pipeline #2099 (10-22 13:16 UTC), contents not read.
- **New brand failures, none his:** lolaLiza_FEED global_transform OOM (exit 137) three times, fabienne_PRICAT, stateOfArt_PRICAT; luisacerano's hand-started image sync hit the 3h limit. Details in the [Dagster log](dagster-alerts/log.md).
- **Still running:** adidas_FEED failed again 10-23 (first since 10-20), fynchHatton's image-sync schedule is on for a fourth day, carsJeans hit the 3h limit a seventeenth time, and the PDS size relay Lambda alerted and recovered 10-22.
- **Review queue:** three (#3045, #3058, and dependabot brand-data-pipeline#2019 since 10-07).
