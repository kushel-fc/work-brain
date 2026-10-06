# Earmarks (signal-triggered reminders)

Resurface something when a **real-world signal** happens, rather than on a date — for the "when X lands/happens, check Y" cases a daily diff alone won't catch (e.g. a ticket that can only close once an unrelated PR merges).

Each earmark has a `Trigger signal` (plain-language condition to watch for during the sync), the `Surface` content (what to check/do/say when it fires), related links, and a `Status` (`active`, `triggered`, `dismissed`).

**When to check** (during Phase 2 of the sync, alongside the normal source diff): scan `Active` earmarks against this cycle's fresh Linear/GitHub/Slack pull. On a match, surface it at the top of `today.md` for that cycle, then move the entry to `Triggered / Dismissed` below (or leave it `active` if it's a recurring watch rather than a one-shot).

## Active

- **Trigger signal**: gabor (`gabor_FEED_sync_images` or `gabor__FEED__move_images_from_ftp_to_s3_job_sync`) goes a full sync cycle with no alerts, now that product-service#2851 is in production
- **Surface**: Only then call the gabor FTP problem fixed. The first post-release gabor run (07445ae6, 10-05 08:38 UTC) failed with exit 1 instead of hanging, which looks like #2851's timeouts firing on a still-bad connection. Also check carsJeans (3h limit 09-30, 10-01, 10-02) and whether anyone works out why the gabor FTP connection goes bad, since #2851 says it couldn't confirm that.
- **Related**: [dagster-alerts/log.md](../dagster-alerts/log.md), [archive/prs/product-service.md](../archive/prs/product-service.md)
- **Status**: active (added 2026-10-05). Not met at the 10-06 sync: two more hand-started gabor move-images runs failed with exit 1 at 08:47 and 08:55 UTC 10-05, ten minutes after the last sync. Quiet since 08:55 UTC (about 24h), so if the next cycle is also clean it fires. carsJeans hit the 3h limit again on a run that started 10:10 UTC 10-05, after #2851 reached production, so #2851 didn't fix carsJeans.

## Triggered / Dismissed

- **Trigger signal**: `product-service#2851` (dwiajik, "run FTP commands with timeout") merges and ships in a production release
- **Surface**: Confirm `gabor_FEED_sync_images` stops hitting the 3h limit. gabor kept hanging after the 10-01 release that carried #2836 and #2846, so those fixes weren't enough, and #2851 is the next candidate. Also check whether cinque_FEED2's move-images failures (exit 1, a different signature) change with it.
- **Related**: [dagster-alerts/log.md](../dagster-alerts/log.md), [sources/github/product-service/open-prs.md](../sources/github/product-service/open-prs.md)
- **Status**: triggered 2026-10-05. #2851 merged 10-02 10:08 UTC and shipped in production release #2854 (merged 10-05 07:37 UTC). The only gabor alert since was a hand-started move-images run at 08:38 UTC that exited 1 rather than hanging 3h, about an hour after the release, so it's too early to say the hangs are fixed. Replaced by the gabor-quiet earmark above. cinque_FEED2's failures were a separate cause (missing `filename_pattern`, fixed by Aji 10-02), so they don't tell us anything about #2851.

- **Trigger signal**: mosMosh/ara OOM sprees (`mosMosh__FEED__process_images`, `ara__PRICAT__process_images`) stay quiet for another full sync cycle
- **Surface**: Confirm the 4-day, 45+-occurrence spree (09-17 through 09-21) is actually over before calling it resolved — it went quiet after 09-21 08:53 UTC (3 more mosMosh hits, then nothing for ~24h), but [BDD-3268](../support/open.md) (the resource-size-bump ticket that looked like the fix) is still In Progress, not shipped, so the quiet spell isn't yet attributable to a confirmed fix.
- **Related**: [dagster-alerts/log.md](../dagster-alerts/log.md)
- **Status**: triggered 2026-09-23. Second full quiet cycle (zero mosMosh/ara alerts 09-22 08:50 to 09-23 08:45 UTC, ~48h total since the last hit at 09-21 08:53 UTC). Treating the spree as over. It still can't be credited to BDD-3268, which is In Progress with no update since 09-18, so it stopped for some other reason or on its own. If it comes back, reopen it as a new `recurring` entry in the Dagster log instead of reviving this earmark.

- **Trigger signal**: `brand-data-pipeline#1890` (baldessarini `credential_id` fix) merges
- **Surface**: Confirm `baldessarini_FEED` actually stops failing — it failed on essentially every hourly run for ~21h straight (09-15/09-16) before this PR was even open, so merging alone isn't proof; check for a clean run afterward.
- **Related**: [dagster-alerts/log.md](../dagster-alerts/log.md), [prs/mine.md](../prs/mine.md)
- **Status**: dismissed 2026-09-17 — PR merged 09-16 09:39 UTC; baldessarini_FEED failed once more at 10:18 UTC (most likely deploy lag) then stayed clean through the rest of the ~19h capture window. Reasonably confident this is resolved, but the observation window is short — worth a glance next cycle if it recurs.

- **Trigger signal**: Kushel's "next release" ships (referenced 09-15 for both holyfashion and beheim's `move_images_from_ftp_to_s3_job_sync` failures)
- **Surface**: Confirm both brands actually stop failing — the promise was made in-thread but both kept failing afterward through the end of this sync's capture window. Also check whether profuomo/royRobson (quiet this cycle) were part of the same release or a coincidence.
- **Related**: [dagster-alerts/log.md](../dagster-alerts/log.md)
- **Status**: dismissed 2026-09-17 — resolved via a different path than the earmark was watching for: Kushel added missing fields to 1Password in-thread 09-16 14:47 UTC rather than waiting on a release. Holyfashion and beheim both stayed quiet for the rest of the ~15h capture window afterward. profuomo/royRobson stayed quiet too but were already quiet last cycle, so their status is a coincidence, not confirmation of the same fix.

- **Trigger signal**: `brand-data-pipeline#1825` (pmeLegend `experimental.xmSaxParsing` flag) merges
- **Surface**: Check whether [BDD-3150](../support/recently-closed.md) (PIPE/Megatron price-file size mismatch) can now close — the SAX-parser support it was waiting on ([#1744](../archive/prs/brand-data-pipeline.md)) already merged 09-08; #1825 was expected to be the last piece.
- **Related**: [sources/github/brand-data-pipeline/open-prs.md](../sources/github/brand-data-pipeline/open-prs.md)
- **Status**: dismissed 2026-09-15 — BDD-3150 shipped (Deployed 09-14, Done 09-15) without #1825 ever merging; #1825 is still open and unreviewed. The ticket closed through some other path, so the trigger condition this earmark was watching for is moot. Worth a look at what actually fixed it if it resurfaces.

- **Trigger signal**: lugina's `move_images_from_ftp_to_s3_job_sync` failures stop recurring (Munia was expected to update the brand's FTP setup "today," per Kushel's 09-10 10:18 CEST message)
- **Surface**: Confirm the fix actually held before calling this resolved.
- **Related**: [dagster-alerts/log.md](../dagster-alerts/log.md)
- **Status**: triggered 2026-09-11, revisited 2026-09-14 — lugina has stayed quiet since 09-10 14:18 UTC (no further failures through this sync). `profuomo` did not: it recurred on the same job/step 09-11, 09-12, and 09-13 (~24h apart each time), so the earlier "quiet after one more recurrence" call was premature. Treating this as closed for lugina only — profuomo's recurrence is now tracked as its own `recurring` entry in `dagster-alerts/log.md` (2026-09-13T14:03:00Z) rather than reopening this earmark.
