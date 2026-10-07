# Dagster alerts

Deduped rolling log from Slack #brand-data-dev-alerts (channel `C07A06X22TD`). Newest first. Entries older than 30 days are pruned on sync.

```yaml
timestamp: 2026-10-07T06:03:28Z
channel: brand-data-dev-alerts
brand: platform (Datadog log index)
summary: "Log index hit warning threshold then daily quota again, self-resolved on quota reset"
status: recurring
linked_issue: null
```
Same `product-service-logs-index` pattern, first logged occurrence since 09-22 (warning 10-06 14:03:27 UTC, quota reached 15:46:30 UTC, recovered 10-07 06:03:28 UTC on quota reset). With the quota hit mid-afternoon, product-service logs weren't indexed for about 14h, which overlaps the PDS relay alarm and enrichment hang below. No thread. Still no owner or permanent fix.

```yaml
timestamp: 2026-10-06T15:04:23Z
channel: brand-data-dev-alerts
brand: platform (process_enrichment_flow)
summary: "process_enrichment_flow exceeded the 3h run time limit (run 4501f204, started 12:04 UTC from enrichment_file_sensor)"
status: recurring
linked_issue: null
```
First logged since 09-18. Same chronic pattern Kushel first flagged 09-08, still no root cause. No thread, no reaction.

```yaml
timestamp: 2026-10-06T13:11:18Z
channel: brand-data-dev-alerts
brand: carsJeans
summary: "carsJeans_FEED_sync_images exceeded the 3h run time limit (run 04894c57, started 10:10 UTC from the schedule)"
status: recurring
linked_issue: product-service#2851
```
Fifth carsJeans run-limit hit (09-30, 10-01, 10-02, 10-05, now 10-06), the second since product-service#2851 reached production. Same 10:10 UTC scheduled start every time. So #2851 didn't fix carsJeans, unlike gabor (quiet since 10-05 08:55 UTC). Aji called the 10-01 carsJeans hang "expected" in-thread, which may mean the job is just slow for this brand rather than stuck, but nobody has said so since. No thread.

```yaml
timestamp: 2026-10-06T11:59:06Z
channel: brand-data-dev-alerts
brand: platform (PDS stream relay)
summary: "CloudWatch alarms pds-stream-relay-style-undelivered-production and pds-stream-relay-color-undelivered-production entered ALARM (26 style records undelivered in the 11:54 UTC window)"
status: active
linked_issue: BDD-3284
```
New monitor, delivered to the channel by email from SNS. Per the alarm description, the relay dropped records a consumer queue refused; each one is logged as `PDS_STREAM_RELAY_UNDELIVERED` in `/aws/lambda/pds-stream-relay-{style,color}-production` with a reason and sequence number, and can be re-read from Kinesis within the 2-day retention (so until about 10-08 11:54 UTC). The datapoint falls in the same 5-minute bucket as the 10-06 production releases (product-service#2865, 11:54:49 UTC), and PCS became the first PDS queue consumer that morning (#2861), so a deploy-time hiccup is plausible but not confirmed. Different signature from the 09-25 relay Lambda error alarm (`self-resolved`). One :eyes: on each, no thread, no OK/recovery message in the channel. Not his.

```yaml
timestamp: 2026-10-06T09:14:43Z
channel: brand-data-dev-alerts
brand: unitedBrands
summary: "unitedBrands_FEED - 11 asset materializations failed, incl. download_images and feed_transform (run 4ebbc06e, scheduled)"
status: active
linked_issue: null
```
First unitedBrands alert in the log. Scheduled run. The attachment cuts off before the error. No thread.

```yaml
timestamp: 2026-10-06T09:01:40Z
channel: brand-data-dev-alerts
brand: bazlen
summary: "bazlen_FEED2 exceeded the 3h run time limit (run 02c560eb, started 06:00 UTC from the schedule)"
status: active
linked_issue: null
```
First bazlen alert in the log. Whole-job hang (not an image sync), scheduled. No thread.

```yaml
timestamp: 2026-10-05T13:11:22Z
channel: brand-data-dev-alerts
brand: carsJeans
summary: "carsJeans_FEED_sync_images exceeded the 3h run time limit (run b657dd99, started 10:10 UTC from the schedule)"
status: recurring
linked_issue: product-service#2851
```
**Fourth carsJeans run-limit hit (09-30, 10-01, 10-02, now 10-05), and the first since product-service#2851 (FTP command timeouts) reached production** in release #2854 at 07:37 UTC, about 2.5h before this run started. So #2851 didn't stop carsJeans hanging, unless the deploy hadn't finished by 10:10 UTC, which the alert doesn't show. No thread.

```yaml
timestamp: 2026-10-05T08:55:25Z
channel: brand-data-dev-alerts
brand: gabor
summary: "gabor__FEED__move_images_from_ftp_to_s3_job_sync - essential container exited (exit 1), two more hand-started runs (d2473ee4 08:47 UTC, 6eb7d915 08:55 UTC)"
status: self-resolved
linked_issue: product-service#2851
```
Two more hand-started ("Dagster Dev User") gabor move-images runs failing with exit 1, eight minutes apart, right after the 10-05 sync and within 20 minutes of the 08:38 UTC run below. Same exit-1 signature, no 3h hang. Both carry one raised-hand reaction (someone picked it up) but no thread. **No gabor alert since 08:55 UTC**, about 24h to this sync.
**Update 10-07:** Still no gabor alert, about 48h now across two full sync cycles, so marked `self-resolved` and the earmark fired. Credit plausibly goes to product-service#2851 (FTP command timeouts), but the underlying FTP connection problem was never explained.

```yaml
timestamp: 2026-10-05T08:38:51Z
channel: brand-data-dev-alerts
brand: gabor
summary: "gabor__FEED__move_images_from_ftp_to_s3_job_sync - essential container exited (exit 1), 4 asset events (run 07445ae6)"
status: active
linked_issue: product-service#2851
```
**First gabor alert since product-service#2851 (FTP command timeouts) shipped**, in production release #2854, merged 10-05 07:37 UTC. Run 07445ae6 was started by hand ("Dagster Dev User"). The signature is new for gabor: the move-images job exited with code 1, where every earlier gabor alert was a 3h hang on `gabor_FEED_sync_images`. That fits #2851's timeouts now firing on the bad connection instead of hanging, but the Slack attachment cuts off before the error text, so that's a guess. No thread yet. The underlying FTP connection problem isn't fixed (the #2851 description says its cause wasn't confirmed).

```yaml
timestamp: 2026-10-04T08:40:12Z
channel: brand-data-dev-alerts
brand: skiny
summary: "skiny__FEED__process_images - essential container exited, exit code 137 (2 asset events, run 892810e7)"
status: recurring
linked_issue: null
```
Second skiny exit-137 (likely OOM) after 09-30 (`process_images_sync`, entry below). This one is the FEED `process_images` step. No thread.

```yaml
timestamp: 2026-10-04T08:35:41Z
channel: brand-data-dev-alerts
brand: fynchHatton
summary: "fynchHatton__FEED2__download_images - essential container exited (exit 1), three runs in one minute (f3e685ef, 568ca2c6, 711c0916)"
status: recurring
linked_issue: null
```
Three alerts at 08:35:41, 08:36:11 and 08:36:41 UTC, each 3 asset events. Kushel disabled the fynchHatton image-sync schedule on 09-30 because the brand's image FTP had a connection problem (entry from 09-30 below). These are the FEED2 `download_images` step, so they come from a different job than the one he disabled. Launch source isn't shown. Most likely the same FTP problem, not confirmed. No thread.

```yaml
timestamp: 2026-10-02T13:11:24Z
channel: brand-data-dev-alerts
brand: carsJeans
summary: "carsJeans_FEED_sync_images exceeded the 3h run time limit (run c505fbc6, started 10:10 UTC from the schedule)"
status: recurring
linked_issue: product-service#2851
```
Third carsJeans run-limit hit (09-30, 10-01, now 10-02). #2851 had merged at 10:08 UTC, two minutes before this run started, but it didn't reach production until release #2854 on 10-05 07:37 UTC, so this run didn't have it. No thread. No carsJeans alert since.

```yaml
timestamp: 2026-10-02T10:03:55Z
channel: brand-data-dev-alerts
brand: sOliver
summary: "sOliver/FEED - 12 asset materializations failed (download_images, extract, ...), run b85d0ac6 from the schedule"
status: self-resolved
linked_issue: null
```
Aji posted the error in-thread: `AggregateError [ETIMEDOUT]` on connect. His rerun succeeded (13:33 UTC). Same 12-asset shape as the earlier sOliver/FEED entries.

```yaml
timestamp: 2026-10-02T09:18:12Z
channel: brand-data-dev-alerts
brand: cinque
summary: "cinque__FEED2__move_images_from_ftp_to_s3_job_sync - essential container exited (exit 1), run 563cb30b"
status: self-resolved
linked_issue: null
```
**Root cause found and fixed by Aji in-thread.** The error was a `ZodError` from `CredentialsClient.getFtpCredentialItemById`: `filenamePattern` was undefined. That's the same missing-`filename_pattern` cause as swing's 09-25 failure. He added the `filename_pattern`, and the rerun succeeded (10:44 UTC). No cinque alert since, so the every-scheduled-run streak from 09-27 is over. It wasn't brand-data-pipeline#1969.

```yaml
timestamp: 2026-10-02T08:14:55Z
channel: brand-data-dev-alerts
brand: beltsBugatti
summary: "beltsBugatti/FEED - 11 asset materializations failed (download_images, feed_transform, global_transform, ...)"
status: active
linked_issue: null
```
First beltsBugatti entry in this log. Run cf33bc3f was started by hand ("Dagster Dim User"), not by a schedule. The Slack attachment is cut off before the failing step and error. No thread or reaction yet.

```yaml
timestamp: 2026-10-02T01:52:36Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: ECS health check failures detected for galvatron service
status: self-resolved
linked_issue: null
```
Triggered 01:52 UTC, recovered 01:56 UTC. The usual short galvatron blip, no thread.

```yaml
timestamp: 2026-10-01T19:15:51Z
channel: brand-data-dev-alerts
brand: gabor
summary: "gabor_FEED_sync_images exceeded the 3h run time limit twice more after the 10-01 release (runs c58e49b3 and 8baf26e0)"
status: recurring
linked_issue: product-service#2851
```
c58e49b3 started 15:00 UTC by hand ("Dagster Dev User") and alerted 18:01 UTC. 8baf26e0 started 16:15 UTC from the schedule and alerted 19:15 UTC. **Both started after the 10-01 production release** (product-service#2849, merged 14:47 UTC), which carried the directory-listing timeout (#2836) and the one-connection-per-run downloader fix (#2846). So those fixes didn't stop gabor hanging, though it isn't visible whether the release had finished deploying by 15:00. dwiajik opened product-service#2851 ("run FTP commands with timeout") at 19:38 UTC. It describes a move-images run for a 184,189-image brand that hung 4.5h+ on an untimed `MKD` for the archive folder. That's the gabor job (see the thread in the entry below). #2851 has three CodeRabbit Changes Requested passes and no human review yet. No thread on either alert.

```yaml
timestamp: 2026-10-01T15:18:12Z
channel: brand-data-dev-alerts
brand: cinque
summary: "cinque__FEED2__move_images_from_ftp_to_s3_job_sync - essential container exited (exit 1), twice more (09:17 and 15:18 UTC)"
status: self-resolved
linked_issue: null
```
Runs 79c54422 and d68e05e7, from the image-sync cron. The same two time slots as 09-30, so it fails on every scheduled run now. No thread on either one. brand-data-pipeline#1969, which migrates cinque_FEED2's credential key, still conflicts and isn't merged. **Update 10-05:** fixed 10-02 by Aji (missing `filename_pattern`), see the 10-02 entry above.

```yaml
timestamp: 2026-10-01T14:08:24Z
channel: brand-data-dev-alerts
brand: multiple (gabor, blueSeven, swing)
summary: "Hanging image tasks stopped by hand: gabor move_images x2 (13:56 UTC), blueSeven FEED2 download_images (13:59), swing FEED download_images (14:08), all exit 137 \"Task stopped by user\""
status: self-resolved
linked_issue: null
```
This is the clean-up, not a new failure. Aji said in the gabor thread (entry below) that he'd kill the hanging jobs, and these four "Task stopped by user" events followed within the hour. They cover gabor runs fc645d26 and 1ae21469, blueSeven's ONA seed d1835521 and swing c72869ee, which matches the 09-30/10-01 entries further down.

```yaml
timestamp: 2026-10-01T13:16:10Z
channel: brand-data-dev-alerts
brand: multiple (gabor, carsJeans)
summary: "gabor_FEED_sync_images (fc645d26) and carsJeans_FEED_sync_images (6a4120de) exceeded the 3h run time limit again, both started ~10:10-10:15 UTC"
status: recurring
linked_issue: null
```
Repeats of the 09-30 wave, same time of day. carsJeans: Aji replied "expected" (:white_check_mark:). gabor: Aji called it "not expected" and found hanging jobs that had been running for 27h, 21h and 3h. Listing `/productImages` on the brand's FTP also hung in FileZilla, then came back with 184k images (130 GiB). He killed the jobs. **Kushel asked whether the hanging would be fixed by the next release, and Aji said it should be.** tamaris, gantFootwear, hanro and authenticstyle didn't repeat this cycle.

```yaml
timestamp: 2026-10-01T11:18:14Z
channel: brand-data-dev-alerts
brand: royRobson
summary: "royRobson__FEED2__move_images_from_ftp_to_s3_job_sync - essential container exited (exit 1), 4 asset events"
status: active
linked_issue: null
```
First royRobson failure in this log since the 09-15 move-images spread. This one has a known cause. Dushan pulled in abubakarwase, who explained: the file PIPE reads is broken, and Büsra had filed FD 678845 asking for all images to move from FTP to SFTP, which he pushed back on as not a dev topic. The brand's URL was then switched to SFTP (brand-data-pipeline#1984, merged 09-30) without the images being moved, so there's no `productImages` folder there. Dushan asked for a follow-up with the DIMs, since the job costs Dagster credit while it's known to fail. Büsra's brand-data-pipeline#1993 ("Support/roy robson", royRobson_FEED2 config, +3/-1) opened 13:43 UTC and isn't merged.

```yaml
timestamp: 2026-10-01T05:31:44Z
channel: brand-data-dev-alerts
brand: swing
summary: "swing_FEED exceeded the 3h run time limit (run c72869ee, started 02:31 UTC)"
status: active
linked_issue: null
```
First run-limit hit for swing. It came from the scheduled feed cron, two days after swing went fully on PIPE (product-service#2816, 09-29). No thread or reaction. It started before dwiajik's directory-listing timeout fix (product-service#2836) merged at 08:18 UTC, so it may be part of the FTP hang wave below, but the alert doesn't say which step was running. **Update 10-01:** the step was `download_images`. The task was stopped by hand at 14:08 UTC (exit 137) during Aji's clean-up of hanging jobs.

```yaml
timestamp: 2026-09-30T19:16:41Z
channel: brand-data-dev-alerts
brand: gabor
summary: "gabor_FEED_sync_images exceeded the 3h run time limit again (run 1ae21469, started 16:15 UTC)"
status: recurring
linked_issue: null
```
The second gabor image-sync hang in six hours (the first was run e31e1dcf, in the wave entry below). No thread. Same signature as the rest of the wave.

```yaml
timestamp: 2026-09-30T15:18:14Z
channel: brand-data-dev-alerts
brand: cinque
summary: "cinque__FEED2__move_images_from_ftp_to_s3_job_sync - essential container exited (exit 1), twice (09:17 and 15:18 UTC)"
status: recurring
linked_issue: null
```
Runs 116ce5ba and b2bd7872, both from the image-sync cron. This is a different step from the 09-27/09-28 `download_images` failures, but it's the same brand and both are FTP image steps. No thread on either. cinque_FEED2 is one of the configs brand-data-pipeline#1969 migrates, and that PR is still unmerged (and now conflicting).

```yaml
timestamp: 2026-09-30T13:11:18Z
channel: brand-data-dev-alerts
brand: multiple (carsJeans, gabor, tamaris, gantFootwear, hanro)
summary: "Five *_sync_images jobs exceeded the 3h run time limit within 15 min (13:11 to 13:26 UTC), all started 10:10 to 10:25 UTC"
status: active
linked_issue: null
```
carsJeans_FEED (b2a505e6), gabor_FEED (e31e1dcf), tamaris_PRICAT (69a51261), gantFootwear_FEED (1503e782) and hanro_FEED (e2323c3a). Each got one :thinking_face: reaction and no thread. This looks like the hang dwiajik described in product-service#2836: the image-sync collector bounded the FTP credential fetch but not the directory `LIST`, so a blocked FTP data connection leaves the task running until something kills it. #2836 merged 10-01 08:18 UTC. That's after this wave and after swing (above), so the fix isn't confirmed yet. authenticstyle (09-29) and fynchHatton (below) look like the same thing. Aji also pointed out that cancelling a Dagster run leaves its ECS task running (see the fynchHatton thread), and brand-data-pipeline#1990 (draft) addresses that.
**Update 10-01:** #1990 merged 10:27 UTC. gabor and carsJeans hit the limit again on 10-01, and gabor kept hanging after the 14:47 UTC release (entries above). dwiajik's product-service#2851 targets the remaining cause: per-file FTP commands (`MKD`, `SIZE`, `RENAME`) with no timeout. tamaris, gantFootwear and hanro were quiet.

```yaml
timestamp: 2026-09-30T12:54:14Z
channel: brand-data-dev-alerts
brand: blueSeven
summary: "ona__blueSeven_FEED2 exceeded the 3h run time limit (run d1835521, started 09:53 UTC)"
status: active
linked_issue: product-service#2832
```
The production ONA seed for blueSeven. Per product-service#2832, its data steps finished but image download stalled after 496 downloads, with FTP data-connection timeouts. The PR's hypothesis (stated as unproven) is that the old downloader never closed its FTP connections. #2832 names Kushel as a reviewer and is approved by Chamindu36. blueSeven's migration stays blocked at Phase 3 Step 1 until it lands.
**Update 10-01:** #2832 was closed unmerged at 14:04 UTC. dwiajik superseded it with product-service#2846 (reuse one FTP connection per run, bound each transfer), which merged 14:02 UTC and went out in production release #2849 at 14:47 UTC. The stuck run's download task was stopped by hand at 13:59 UTC. No re-run of the blueSeven seed shows in Slack yet.

```yaml
timestamp: 2026-09-30T12:44:11Z
channel: brand-data-dev-alerts
brand: skiny
summary: "skiny__FEED__process_images_sync - essential container exited, exit code 137 (2 asset events)"
status: active
linked_issue: null
```
First skiny entry in this log. Exit 137 usually means the container was OOM-killed. From the image-sync cron (run 20a93b66). No thread.

```yaml
timestamp: 2026-09-30T12:16:35Z
channel: brand-data-dev-alerts
brand: fynchHatton
summary: "fynchHatton_FEED2_sync_images exceeded the 3h run time limit (run 5592e2cd, started 09:15 UTC)"
status: active
linked_issue: null
```
**Kushel handled this one in-thread.** 12:25 UTC: the brand's image FTP has a connection problem, so he disabled the schedule until it's fixed, and Honey is checking with the brand. milestone (the other brand in his #1978) is working. He cancelled the run, and Aji pointed out the ECS task was still hanging. Kushel then found and stopped the hanging tasks from two earlier runs he had cancelled, plus one more from about 5 days ago (Dagster run a65402eb) that he stopped at 15:40 UTC. This explains the 09-29 fynchHatton_FEED2 run-limit hit below.

```yaml
timestamp: 2026-09-30T09:50:33Z
channel: brand-data-dev-alerts
brand: blueSeven
summary: "blueSeven/FEED2 - 9 asset materializations failed (download_images, feed_transform, global_transform, ...)"
status: active
linked_issue: null
```
Run 596d6be6, not from a schedule. It's a few minutes before the ONA blueSeven FEED2 run (d1835521, above) started, so it's probably an earlier attempt in the same migration step. No thread.

```yaml
timestamp: 2026-09-30T01:56:32Z
channel: brand-data-dev-alerts
brand: platform (product-data-service / PDS)
summary: "PDS stream-publish log failures (PUBLISHING_JOB_PD_STREAMS_FAILED) triggered and recovered within 15 min, second flare in ~11h"
status: self-resolved
linked_issue: null
```
Triggered 01:56:32Z, recovered 02:11:35Z. The log monitor fired alone, without the paired Kinesis-records monitor this time. No thread. This is the same self-clearing pattern as 09-15, 09-17 and yesterday afternoon. It has never needed a human to clear it, so it's tagged `self-resolved` rather than `recurring`.

```yaml
timestamp: 2026-09-29T22:59:33Z
channel: brand-data-dev-alerts
brand: authenticstyle
summary: "authenticstyle_FEED_sync_images exceeded the 3h run time limit (run ca5f3d99, started 19:58 UTC)"
status: active
linked_issue: null
```
First occurrence of this job in the log. It came from the scheduled image-sync cron. No thread or reaction. Whether the run finished or was stopped isn't visible from Slack. **Update 09-30:** five more `*_sync_images` jobs hung the same way the next day (wave entry above). The likely cause is the unbounded FTP directory listing that product-service#2836 fixed on 10-01.

```yaml
timestamp: 2026-09-29T19:42:12Z
channel: brand-data-dev-alerts
brand: fynchHatton
summary: "fynchHatton_FEED2 exceeded the 3h run time limit (run b57a86af, started 16:41 UTC)"
status: recurring
linked_issue: null
```
First occurrence. It came on go-live day: product-service#2816 (SWING, Hey Kyla and FYNCH-HATTON on PIPE) merged 11:07 UTC, and **Kushel's own brand-data-pipeline#1978** (config.json for fynchHatton and milestone) merged 14:14 UTC, about 2.5h before this run started. Someone reacted with :raising_hand: (claiming it) but there's no thread. **Update 09-30:** it hit the limit again on the image-sync job (entry above), and Kushel traced it to the brand's image FTP connection, not his config change. The schedule is disabled until the brand fixes it.

```yaml
timestamp: 2026-09-29T14:47:29Z
channel: brand-data-dev-alerts
brand: platform (product-data-service / PDS)
summary: "PDS stream publish failures (metric 31) + PUBLISHING_JOB_PD_STREAMS_FAILED log alert, paired, recovered in ~15 min"
status: self-resolved
linked_issue: null
```
Both monitors triggered 14:47 UTC and recovered 15:02 UTC. Aji replied in-thread with the error: `ERR_HTTP2_STREAM_CANCEL` caused by `getaddrinfo EAI_AGAIN kinesis.eu-central-1.amazonaws.com`. That's a transient DNS lookup failure to the Kinesis endpoint, not throttling. Two :eyes: reactions. It lines up with the day's PDS SDK / product-data-schema merges, but nothing links them directly.

```yaml
timestamp: 2026-09-28T23:30:17Z
channel: brand-data-dev-alerts
brand: cinque
summary: "cinque__FEED2__download_images - essential container exited (exit 1), 3 asset events, again"
status: recurring
linked_issue: null
```
The second hit, about 40h after the first (09-27 08:29 UTC). Same step and signature, from the scheduled cron (run 6bba2863). Nobody has replied in a thread either time. cinque_FEED2 is one of the eight configs whose credential key brand-data-pipeline#1969 migrates. That PR isn't merged yet, so it isn't the cause, but it's the obvious place to look. brand-data-pipeline#1967 (enable image_sync for brands that missed it during migration) merged 09-28 10:16 UTC, before this failure.

```yaml
timestamp: 2026-09-28T16:27:40Z
channel: brand-data-dev-alerts
brand: dorisStreich
summary: "dorisStreich__FEED__publish_from_map - essential container exited (exit 1)"
status: active
linked_issue: null
```
About an hour after the 9-asset failure below, on the same brand and the same commit (run 41a36b29). No thread. product-service#2810 ("Enable Doris Streich fully on PIPE") merged the next morning (09-29 07:45 UTC). It's unclear whether the go-live flip went ahead with these failures known, or whether the failures were part of the pre-flip runs. Worth a look before calling the migration healthy.

```yaml
timestamp: 2026-09-28T15:25:52Z
channel: brand-data-dev-alerts
brand: dorisStreich
summary: "dorisStreich/FEED - 9 asset materializations failed (download_images, feed_transform, global_transform, ...)"
status: active
linked_issue: null
```
First dorisStreich entry in this log (run 6e016bdf). dorisStreich is mid-migration: BDD-2842 is at "Step 1 [Ona]", its INTEX PRs closed 09-25, and the PIPE enable merged 09-29. No thread.

```yaml
timestamp: 2026-09-28T13:51:52Z
channel: brand-data-dev-alerts
brand: platform (analytics_trigger_sensor)
summary: analytics step - essential container exited, exit code 1, once more
status: recurring
linked_issue: null
```
Same long-running no-owner pattern (run 9f9558f4), last seen 09-25. No thread.

```yaml
timestamp: 2026-09-27T23:47:37Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: ECS health check failures on galvatron, two more trigger/recover cycles
status: self-resolved
linked_issue: null
```
Two cycles: 22:47 UTC triggered, recovered 22:55; 23:47 UTC triggered, recovered 23:57. Same long-running blip pattern as earlier galvatron entries. Each recovered inside about 10 minutes. No thread.

```yaml
timestamp: 2026-09-27T11:05:20Z
channel: brand-data-dev-alerts
brand: mosMosh
summary: "mosMosh_FEED exceeded the 3h run time limit (run eb61e7cd, started 08:04 UTC)"
status: recurring
linked_issue: null
```
**This is the first mosMosh alert since the 09-17 to 09-21 OOM/run-time-limit spree went quiet** (last hit 09-21 08:53 UTC, closed out as over in the 09-23 earmark). That earmark said to reopen any return as a new `recurring` entry, so this is that entry. One hit so far, and there was no thread or follow-up by the end of this capture window (09-28 ~08:45 UTC). Whether the run was stopped or finished isn't visible from Slack. BDD-3268 (resource-size bump) wasn't confirmed shipped as of the last Linear read (09-25).

```yaml
timestamp: 2026-09-27T08:29:39Z
channel: brand-data-dev-alerts
brand: cinque
summary: "cinque__FEED2__download_images - essential container exited (exit 1), 3 asset events"
status: recurring
linked_issue: null
```
First cinque entry in this log. cinque was part of the 09-15 brand-migration wave. The signature matches the swing `download_images` failure from 09-25, which was a missing `filename_pattern` config, so check that first. No thread. **Recurred 09-28 23:30 UTC (see above), so it isn't a one-off.**

```yaml
timestamp: 2026-09-25T21:39:40Z
channel: brand-data-dev-alerts
brand: platform (analytics_trigger_sensor)
summary: analytics step - essential container exited, exit code 1, once more
status: recurring
linked_issue: null
```
Second hit on 09-25 (the first was 04:07 UTC). Same recurring pattern with no owner. No thread.

```yaml
timestamp: 2026-09-25T12:51:25Z
channel: brand-data-dev-alerts
brand: platform (PDS stream relay Lambda)
summary: "PDS relay Lambda erroring (pds-stream-relay-*-production): 307 errors, re-triggered at 13:51 UTC with 155, recovered 13:57 UTC"
status: self-resolved
linked_issue: null
```
First alert from this monitor, about 5h after the BDD-3277 PoC (product-service#2738, relay PDS stream into per-consumer SQS queues) merged 09-25 07:37 UTC. Aji in-thread at 13:17 UTC: "Fix is being deployed, and the alert works." It recovered at 13:57 UTC and stayed quiet for the rest of the window.

```yaml
timestamp: 2026-09-25T08:21:31Z
channel: brand-data-dev-alerts
brand: swing
summary: "swing__FEED__download_images - essential container exited (exit 1), twice"
status: self-resolved
linked_issue: null
```
Two failures (runs 3f494041 at 07:24 UTC and 359b080b at 08:21 UTC). First swing entry in this log, right after the swing migration went live (brand-data-pipeline#1871 merged 09-23). In the thread Aji explained that `filename_pattern` is still required even though image download doesn't use it, and suggested `*` as a placeholder. Abir replied "Fixed it." No clean run confirmed inside this capture window.

```yaml
timestamp: 2026-09-25T06:48:32Z
channel: brand-data-dev-alerts
brand: viaVai
summary: "viaVai__FEED__move_images_from_ftp_to_s3_job_sync - task stopped by user (exit 137), run c64a523f"
status: self-resolved
linked_issue: null
```
Follow-up to the 09-23 run-time-limit alert: the same run (c64a523f, started 09-23 11:59 UTC) was stopped manually after about 43h. So it's cleared, but the cause of the hang is unknown. No thread. Watch whether the next scheduled image sync hangs as well.

```yaml
timestamp: 2026-09-25T04:07:42Z
channel: brand-data-dev-alerts
brand: platform (analytics_trigger_sensor)
summary: analytics step - essential container exited, exit code 1, once more
status: recurring
linked_issue: null
```
First hit since 09-17, about 8 days quiet. Same no-owner recurring pattern. No thread.

```yaml
timestamp: 2026-09-24T17:15:16Z
channel: brand-data-dev-alerts
brand: stateOfArt
summary: stateOfArt/PRICAT - 11 asset materializations failed (download_images, feed_transform, ...)
status: active
linked_issue: null
```
Scheduled `stateOfArt_PRICAT_cron_schedule` run (73aa2dd5). First stateOfArt entry in this log. No thread or reaction.

```yaml
timestamp: 2026-09-24T14:20:36Z
channel: brand-data-dev-alerts
brand: woden
summary: woden/FEED - 11 asset materializations failed (download_images, feed_transform, ...)
status: active
linked_issue: null
```
Scheduled `woden_FEED_cron_schedule` run (609fb604). First woden entry in this log. No thread or reaction.

```yaml
timestamp: 2026-09-23T15:00:10Z
channel: brand-data-dev-alerts
brand: viaVai
summary: viaVai_FEED_sync_images exceeded 3h run time limit (run c64a523f, started 11:59 UTC)
status: self-resolved
linked_issue: null
```
Scheduled image-sync run (`viaVai_FEED_cron_image_sync_schedule`) still `started` at the 3h mark. No thread or reaction. First run-time-limit alert for viaVai in this log; it only appeared before as one of the brands hit by the 08-31 ECR incident. **Update 09-25:** the same run was stopped by a user at 06:48 UTC (about 43h after it started); see the 09-25 entry.

```yaml
timestamp: 2026-09-23T12:04:11Z
channel: brand-data-dev-alerts
brand: digel
summary: digel/FEED - 12 asset materializations failed (download_images, extract, ...)
status: active
linked_issue: null
```
Scheduled `digel_FEED_cron_schedule` run (e0bb88b6). First digel entry in this log. No thread or reaction.

```yaml
timestamp: 2026-09-22T18:49:01Z
channel: brand-data-dev-alerts
brand: sOliver
summary: "sOliver__FEED2__map - app container has no exit code after task stopped (exit 1)"
status: active
linked_issue: null
```
Single failure from the scheduled `sOliver_FEED2_cron_schedule` run (57ff4f7a) on the mapping step, 20:49 CEST. Different step from the older sOliver/FEED2 entries in this log (download_images/extract). No thread or reaction; unclear yet whether it's a one-off ECS task stop or the start of a pattern.

```yaml
timestamp: 2026-09-22T14:58:35Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: ECS health check failures on galvatron, one more brief trigger/recover cycle
status: self-resolved
linked_issue: null
```
Triggered 14:52:35 UTC, recovered 14:58:35 UTC (value 2.0 at peak). Same known flapping pattern, galvatron only.

```yaml
timestamp: 2026-09-22T09:16:08Z
channel: brand-data-dev-alerts
brand: riani
summary: "riani__FEED__trigger_enrichment_from_map failed once more (exit 1) - fifth cycle running"
status: recurring
linked_issue: null
```
One more occurrence (run 4198c7b4, 11:16 CEST), down from four the prior cycle. Someone reacted with :wave:, no thread reply. Still no fix landed since Dushan's 09-17 "will check."

```yaml
timestamp: 2026-09-22T06:03:28Z
channel: brand-data-dev-alerts
brand: platform (Datadog log index)
summary: Log index hit warning threshold then daily quota a sixth time, self-resolved on quota reset
status: recurring
linked_issue: null
```
Same `product-service-logs-index-` pattern, sixth occurrence now (warning 09-21 14:52:28 UTC, quota reached 09-22 00:29:26 UTC, recovered 06:03:28 UTC on quota reset). Still no permanent fix in place.

```yaml
timestamp: 2026-09-21T16:25:53Z
channel: brand-data-dev-alerts
brand: riani
summary: "riani__FEED__trigger_enrichment_from_map recurred 4 more times, despite Dushan's 09-17 'will check' — still unfixed"
status: recurring
linked_issue: null
```
Same step/signature as the 09-17 garcia+riani entry (Dushan said "will check trigger enrichment" that day). garcia stayed quiet this cycle, but riani fired four more times alone: 10:26:54, 13:06:04, 13:57:46, 16:25:53 UTC on 09-21. No further thread activity visible since the 09-17 acknowledgment — whatever Dushan looked into hasn't landed yet.

```yaml
timestamp: 2026-09-21T08:53:30Z
channel: brand-data-dev-alerts
brand: mosMosh, ara
summary: "mosMosh/ara OOM sprees appear to have stopped — quiet for the rest of this cycle after 3 more mosMosh hits right at the start"
status: self-resolved
linked_issue: null
```
The 4-day, 45+-occurrence spree (mosMosh 21+, ara 26+ as of last sync) continued for exactly 3 more mosMosh hits right after last sync's cutoff (08:48:28, 08:52:29, 08:53:30 UTC 09-21) — then nothing. Zero further mosMosh or ara occurrences for the rest of the ~24h window, the longest quiet stretch since the spree started 09-17. [BDD-3268](../support/open.md) (resource-size bump) is still In Progress per Linear, not marked done — so this can't be confidently attributed to that fix landing yet. Worth a fresh look next sync before calling it fully resolved; total tally now mosMosh 24+, ara 26+ (unchanged this cycle). **09-23 sync: confirmed quiet a second full cycle** (zero mosMosh/ara alerts 09-22 08:50 to 09-23 08:45 UTC); BDD-3268 still In Progress, so the stop is still not attributable to that fix.

```yaml
timestamp: 2026-09-21T09:53:35Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: ECS health check failures detected for galvatron service, one more brief trigger/recover cycle
status: recurring
linked_issue: null
```
Triggered 09:52:35 UTC, recovered ~1 minute later — same established noise pattern, no thread.

```yaml
timestamp: 2026-09-18T06:03:29Z
channel: brand-data-dev-alerts
brand: platform (Datadog log index)
summary: Log index hit warning threshold then daily quota a fifth time, self-resolved on quota reset
status: recurring
linked_issue: null
```
Same `product-service-logs-index-` pattern, fifth occurrence now (triggered 2026-09-17T11:14:30Z, daily quota reached 13:27:26Z, recovered 06:03:29Z on quota reset). Still no permanent fix in place.

```yaml
timestamp: 2026-09-21T08:35:55Z
channel: brand-data-dev-alerts
brand: mosMosh
summary: "mosMosh__FEED image-processing OOM spree now 21+ occurrences across 4 days, still no owner"
status: active
linked_issue: null
```
New brand for this failure shape, first seen 2026-09-17. `process_images`/`process_images_sync` (exit code 137, OOM) fired 10 times 09-17, then 8 more 09-18 (12:42-13:13 UTC), then 3 more 09-21 (08:29-08:35 UTC) — 21+ occurrences total, still completely unowned, no thread or reaction at any point across four days. [BDD-3268](../support/open.md) (bump resource size for long-running integrations) — the ticket that looked like it might be the fix — was picked up by abubakarwase 09-18 and is now In Progress, but no fix has landed yet and the failures continued after he started it.

```yaml
timestamp: 2026-09-19T00:50:40Z
channel: brand-data-dev-alerts
brand: meyer
summary: "meyer__FEED__map — essential container exited, exit code 1 (cron-scheduled run)"
status: active
linked_issue: null
```
New failure signature for meyer, distinct from the earlier FEED2 reprocessing issue ([BDD-3155](../support/recently-closed.md), already shipped). Single occurrence, launched by `meyer_FEED_cron_schedule`. No thread, no reaction.

```yaml
timestamp: 2026-09-18T11:36:27Z
channel: brand-data-dev-alerts
brand: platform (PDS / Kinesis)
summary: PDS Kinesis write-throttling flare hit a new all-time high (metric 609), self-resolved as usual
status: recurring
linked_issue: null
```
Continuation of the known post-shard-increase-fix recurring issue. Triggered 09-18 11:21:26 UTC at metric 609 — well above the prior high of 257 flagged two days earlier — recovered 09-18 11:36:27 UTC (metric 0.0), ~15 minutes. Root cause (shard capacity) still not holding under peak load; each flare keeps self-resolving on its own.

```yaml
timestamp: 2026-09-17T18:49:44Z
channel: brand-data-dev-alerts
brand: platform (analytics_trigger_sensor)
summary: analytics step — essential container exited, exit code 1, once more
status: recurring
linked_issue: null
```
Same no-owner recurring pattern as previous cycles. No thread.

```yaml
timestamp: 2026-09-18T23:57:41Z
channel: brand-data-dev-alerts
brand: platform (process_enrichment_flow)
summary: process_enrichment_flow exceeded 3h time limit again — recurring, still unexplained
status: recurring
linked_issue: null
```
Chronic unresolved pattern, first flagged by Kushel 09-08. Recurred again: a run started 09-18 20:57 UTC breached the 3h cap 09-18 23:57 UTC (enrichment_file_sensor). No thread, no reaction, no root cause identified across any occurrence.

```yaml
timestamp: 2026-09-17T16:19:13Z
channel: brand-data-dev-alerts
brand: garcia, riani
summary: "trigger_enrichment_from_map failing on both brands (4 occurrences) — Dushan looking into it"
status: active
linked_issue: null
```
garcia (exit 137, OOM) fired twice (16:00:38Z, 16:19:13Z) and riani (exit code 1) fired twice (15:35:30Z, 16:11:10Z), all on the same `trigger_enrichment_from_map` step, 15:35Z–16:19Z. Dushan Silva posted in-channel 16:05:11Z: "will check trigger enrichment" — has an owner now, not yet confirmed resolved.

```yaml
timestamp: 2026-09-17T15:27:28Z
channel: brand-data-dev-alerts
brand: fuchsSchmitt
summary: fuchsSchmitt__FEED__process_images_sync — container exited, exit code 137 (OOM)
status: active
linked_issue: null
```
New brand for this failure signature, single occurrence so far. No thread or reaction visible.

```yaml
timestamp: 2026-09-21T08:35:55Z
channel: brand-data-dev-alerts
brand: ara
summary: "ara__PRICAT__process_images OOM now 26+ occurrences across 4 days, still no owner"
status: active
linked_issue: null
```
New brand for this failure shape, first seen 2026-09-17 (7 occurrences, 12:42-12:58 UTC). Recurred 09-18 (9 more, 12:42-12:52 UTC) and again 09-21 (8 more, 08:23-08:35 UTC) — 26+ occurrences total, all the same step, still completely unowned across four days. No thread or reaction at any point.

```yaml
timestamp: 2026-09-17T12:43:44Z
channel: brand-data-dev-alerts
brand: ammann
summary: ammann__FEED__process_images — container exited, exit code 137 (OOM)
status: active
linked_issue: null
```
Single occurrence, distinct from the earlier 08-20 `process_images_sync` OOM and the 08-25 FTP move-images failure for the same brand. No thread or reaction.

```yaml
timestamp: 2026-09-17T12:42:43Z
channel: brand-data-dev-alerts
brand: platform (collect_reprocessing_candidates)
summary: collect_reprocessing_candidates — essential container exited, exit code 1
status: active
linked_issue: null
```
New job/step for this failure list, single occurrence. No thread or reaction.

```yaml
timestamp: 2026-09-17T12:24:08Z
channel: brand-data-dev-alerts
brand: vanDeVelde
summary: ona__vanDeVelde_FEED run exceeded 3h time limit
status: active
linked_issue: null
```
Started 09:23 UTC. Same day, product-service#2697 (vanDeVelde brand migration) closed without merging and a new fix PR landed (brand-data-pipeline#1912, "Fix vanDeVelde reversed season labels") — possibly related to this run dragging past its limit, not confirmed.

```yaml
timestamp: 2026-09-17T03:51:01Z
channel: brand-data-dev-alerts
brand: platform (analytics_trigger_sensor)
summary: analytics step — essential container exited, exit code 1, once more
status: recurring
linked_issue: null
```
Same no-owner recurring pattern, yet again. No thread.

```yaml
timestamp: 2026-09-17T01:21:28Z
channel: brand-data-dev-alerts
brand: platform (product-data-service / PDS)
summary: "PDS stream-publish log failures triggered and recovered within 15 min"
status: self-resolved
linked_issue: null
```
Same `PUBLISHING_JOB_PD_STREAMS_FAILED` pattern as the paired 09-15 alert, this time without a simultaneous Kinesis-throttling alert. Triggered 01:21:28Z, recovered 01:36:29Z. No thread.

```yaml
timestamp: 2026-09-16T19:46:17Z
channel: brand-data-dev-alerts
brand: superdry
summary: superdry__FEED__publish_from_map — container exited, exit code 137 (OOM)
status: active
linked_issue: null
```
New brand/step for this failure shape. Chamindu Rathnaweera pinged abubakarwase in-thread the next morning (09-17 08:59:48 CEST): "can you take a look into this" (eyes reaction). Unresolved as of this sync.

```yaml
timestamp: 2026-09-16T15:26:27Z
channel: brand-data-dev-alerts
brand: platform (PDS / Kinesis)
summary: PDS Kinesis write throttling — triggered (metric 150), warned, then recovered within ~33 min
status: self-resolved
linked_issue: null
```
Continuation of the known post-shard-increase-fix recurring issue: triggered 14:54:28Z (metric value 150 — one of the higher spikes seen), warned 15:26:27Z, recovered 15:27:27Z. No thread.

```yaml
timestamp: 2026-09-16T15:09:59Z
channel: brand-data-dev-alerts
brand: zizzi
summary: zizzi__FEED__trigger_enrichment_from_map — container exited, exit code 1
status: recurring
linked_issue: null
```
Different step from zizzi's known recurring asset-materialization pattern (last logged 08-24, `download_images`/`extract`/`feed_transform`) but same brand, same no-owner pattern. No thread.

```yaml
timestamp: 2026-09-16T14:38:51Z
channel: brand-data-dev-alerts
brand: holyfashion
summary: "move_images_from_ftp_to_s3_job_sync failed once more, then Kushel fixed the actual root cause"
status: self-resolved
linked_issue: null
```
Continuation of the four-brand spread (holyfashion/beheim/profuomo/royRobson). This run failed 14:38:51Z; Kushel replied in-thread 14:47:36Z: "Added the missing fields to 1PW" — a direct credential/config fix, not the vague "next release" commitment from 09-15. No further holyfashion (or beheim) failures through the rest of this sync's capture window (~15h). Earmark dismissed — see `_meta/earmarks.md`.

```yaml
timestamp: 2026-09-16T13:57:10Z
channel: brand-data-dev-alerts
brand: gardeur
summary: "gardeur/FEED2 — 11 asset materializations failed (download_images, feed_transform, global_transform, etc.)"
status: active
linked_issue: null
```
New brand for this failure signature, single occurrence so far. No thread, no reaction.

```yaml
timestamp: 2026-09-16T10:18:43Z
channel: brand-data-dev-alerts
brand: baldessarini
summary: "baldessarini_FEED failed once more ~40 min after Kushel's credential fix merged, then stopped"
status: self-resolved
linked_issue: null
```
`baldessarini_FEED_cron_schedule` fired again at 10:18:43Z — after [brand-data-pipeline#1890](../sources/github/brand-data-pipeline/open-prs.md) merged at 09:39:00Z, most likely deploy lag rather than the fix not working. No further baldessarini failures through the rest of this sync's ~19h capture window. Earmark dismissed — see `_meta/earmarks.md`. Closes out the 22-failed-run incident flagged last cycle.

```yaml
timestamp: 2026-09-16T06:38:45Z
channel: brand-data-dev-alerts
brand: holyfashion, beheim
summary: "move_images_from_ftp_to_s3_job_sync continued failing on both brands after Kushel's fix commitment"
status: recurring
linked_issue: null
```
Continuation of the four-brand spread flagged last sync. This window: holyfashion fired three more times (2026-09-15T14:40:28Z, 22:39:04Z, 2026-09-16T06:38:45Z); beheim fired twice more (2026-09-15T16:01:25Z, 2026-09-16T00:00:44Z). Chamindu Rathnaweera pinged Kushel + abubakarwase in-thread 14:46:52Z asking for a look; Kushel replied 14:48:02Z "The holyfashion will be resolved with the next release. Will check the others" (🎗️ reaction), and separately on the beheim thread at 16:06:07Z "Will be fixed with the next release." Both brands kept failing after those messages — the release hadn't shipped by end of window. **profuomo and royRobson were quiet this cycle** (no occurrences) — only holyfashion/beheim are still active. Now has an owner and a fix commitment, unlike last cycle's "no owner yet."

```yaml
timestamp: 2026-09-16T06:03:27Z
channel: brand-data-dev-alerts
brand: platform (Datadog log index)
summary: Log index hit warning threshold then daily quota a fourth time, self-resolved on quota reset
status: recurring
linked_issue: null
```
Same `product-service-logs-index-` pattern, fourth occurrence now (triggered 2026-09-15T19:12:27Z, recovered 2026-09-16T06:03:27Z on quota reset). Still no permanent fix in place.

```yaml
timestamp: 2026-09-16T04:51:35Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: ECS health check failures on galvatron, four more trigger/recover cycles
status: recurring
linked_issue: null
```
Four short flap cycles this window (2026-09-15T17:07:35Z→17:08:35Z, 19:02:36Z→19:07:35Z, 2026-09-16T00:52:35Z→00:55:35Z, 04:42:35Z→04:51:35Z), each self-resolving in 1-9 minutes. Same established noise pattern, no thread.

```yaml
timestamp: 2026-09-15T19:38:34Z
channel: brand-data-dev-alerts
brand: hom
summary: hom_FEED — 11 asset materializations failed (download_images, feed_transform, etc.)
status: active
linked_issue: null
```
New brand for this failure signature, single occurrence. No thread, no reaction, no follow-up alert — unclear if it self-resolved or is still pending.

```yaml
timestamp: 2026-09-15T15:50:22Z
channel: brand-data-dev-alerts
brand: platform (analytics_trigger_sensor)
summary: analytics step — essential container exited, exit code 1, once more
status: recurring
linked_issue: null
```
Same no-owner recurring pattern as previous cycles. No thread.

```yaml
timestamp: 2026-09-15T15:24:49Z
channel: brand-data-dev-alerts
brand: baldessarini
summary: "baldessarini_FEED failing on nearly every hourly cron run — 22 failed runs across ~21h, own PR in flight"
status: active
linked_issue: null
```
**New signature, not previously tracked — the most consequential Dagster finding this cycle.** `baldessarini_FEED_cron_schedule` failed 10 asset materializations (download_images, extract, + downstream feed assets) on 22 separate runs spanning 2026-09-15T11:18:23Z through 2026-09-16T08:18:46Z — effectively every single hourly run in the whole window, zero successes. Kushel replied in-thread 15:24:49Z-15:24:54Z with a cross-channel link and "PR to fix this" — his own [brand-data-pipeline#1890](../sources/github/brand-data-pipeline/open-prs.md) (updates the job's stale `credential_id`), opened same day. Failures continued for ~17 more hours after the PR reference, so it hadn't merged/deployed by the end of the capture window. Top of `today.md` — his own fix, not yet shipped.

```yaml
timestamp: 2026-09-15T14:51:01Z
channel: brand-data-dev-alerts
brand: gaborBags
summary: gaborBags_FEED — 10 asset materializations failed, resolved via credential rotation
status: self-resolved
linked_issue: null
```
New brand for this failure shape (download_images/extract chain, same as baldessarini above) — one-off occurrence 2026-09-15T11:48:03Z. Kushel replied in-thread 14:51:01Z: "Updated the password in 1PW." No further gaborBags alerts after the fix.

```yaml
timestamp: 2026-09-15T14:12:25Z
channel: brand-data-dev-alerts
brand: platform (extract-job, manufacturer unspecified)
summary: Extract job's flat legacy-archive copy buffered a file exceeding Node's max string length
status: self-resolved
linked_issue: null
```
New Datadog signature, not previously tracked — possibly related to the archived-files string-limit alert from 09-14 ([product-service#2676](../archive/prs/product-service.md), merged) given the shared "Node max string length" description; [product-service#2708](../sources/github/product-service/open-prs.md) ("Scope archive string-limit alert to XML files", opened same day, already Approved) may be a further refinement. Triggered 14:12:25Z, recovered ~5 min later 14:17:25Z. One "eyes" reaction, no text reply. Worth watching for recurrence given the OOM-risk framing.

```yaml
timestamp: 2026-09-15T11:24:27Z
channel: brand-data-dev-alerts
brand: platform (product-data-service / PDS)
summary: PDS stream-publish failures + Kinesis write-throttling, paired alerts, self-resolved in ~15 min
status: self-resolved
linked_issue: null
```
Continuation of the known post-shard-increase-fix recurring issue. Triggered together 11:24:27Z/11:24:29Z, recovered together ~11:39:28Z/11:39:29Z. No thread.

```yaml
timestamp: 2026-09-15T11:21:54Z
channel: brand-data-dev-alerts
brand: kultivate
summary: kultivate_FEED run exceeded the 3h run-time-limit alert policy
status: active
linked_issue: null
```
New brand for this alert type — previously only blackstone_FEED/ona__blackstone_FEED and ona__falke_FEED had hit it. No thread. blackstone and falke's own 3h-limit alerts stayed quiet this window.

```yaml
timestamp: 2026-09-15T08:01:19Z
channel: brand-data-dev-alerts
brand: multiple (beheim, holyfashion, royRobson, profuomo)
summary: "move_images_from_ftp_to_s3_job_sync failing across four brands, ~10 occurrences in under 24h — same exit-code-1 signature"
status: recurring
linked_issue: null
```
The profuomo/lugina pattern from the last few cycles has spread. Since last sync (2026-09-14 08:46 UTC): beheim__FEED2 fired three times (16:00, 00:01, 08:01 UTC — roughly 8h apart, on schedule); holyfashion__FEED fired three times (14:39, 22:39, 06:39 UTC — same ~8h cadence); royRobson__FEED2 fired three times in just over an hour (13:18, 14:18, 15:18 UTC — hourly schedule, failing every single run); profuomo__FEED fired three more times (14:03, 18:56, 19:08 UTC). All four share the identical failure signature: `Exception: Essential container in task exited, exit code: 1` on the `move_images_from_ftp_to_s3_job_sync` step. This no longer looks like a per-brand FTP/SFTP misconfiguration (the working theory for lugina/profuomo) — four unrelated brands hitting the same step with the same exit code, at each brand's own schedule cadence, points at something wrong with the move-images ECS task itself. No thread or owner on any of these. Worth a look — see `today.md`.

```yaml
timestamp: 2026-09-15T06:59:01Z
channel: brand-data-dev-alerts
brand: summum
summary: summum__PRICAT__trigger_enrichment_from_map — container exited, exit code 1
status: active
linked_issue: null
```
New brand/step combination, first occurrence. No thread or reaction visible.

```yaml
timestamp: 2026-09-15T06:03:27Z
channel: brand-data-dev-alerts
brand: platform (Datadog log index)
summary: Log index hit warning threshold then daily quota a third time, self-resolved on quota reset
status: recurring
linked_issue: null
```
Same `product-service-logs-index-` pattern as the last two cycles: triggered 02:06:27 UTC, recovered 06:03:26-27 UTC. Third occurrence now — flagged as worth a permanent fix (quota increase or volume reduction) if it keeps recurring at this rate.

```yaml
timestamp: 2026-09-15T00:43:52Z
channel: brand-data-dev-alerts
brand: blackstone
summary: "blackstone_FEED and ona__blackstone_FEED both exceeded 3h run time limit"
status: active
linked_issue: null
```
New brand for this alert type, both the base and `ona__` prefixed jobs hit the limit within the same 30 seconds (00:43:22 and 00:43:52 UTC) — same underlying run. No thread visible.

```yaml
timestamp: 2026-09-14T19:32:27Z
channel: brand-data-dev-alerts
brand: platform (PDS / Kinesis)
summary: PDS Kinesis write throttling warned and recovered within 11 minutes
status: self-resolved
linked_issue: null
```
Continuation of the known post-shard-increase-fix recurring issue: warned 19:21:27 UTC (metric 10.0), recovered 19:32:27 UTC. Shortest flare of this pattern seen so far. No thread.

```yaml
timestamp: 2026-09-14T16:16:28Z
channel: brand-data-dev-alerts
brand: falke
summary: ona__falke_FEED exceeded 3h run time limit
status: active
linked_issue: null
```
Distinct from the ona__falke_FEED timeout logged 09-13 (different run) and from the merge-rule bug that hit falke 09-11 (already fixed). No thread visible.

```yaml
timestamp: 2026-09-14T03:50:41Z
channel: brand-data-dev-alerts
brand: platform (analytics_trigger_sensor)
summary: "analytics step — essential container exited, exit code 1, twice more"
status: recurring
linked_issue: null
```
Fired again 09-11 12:54:12 CEST and 09-14 05:50:41 CEST — same signature as the earlier occurrences in this log (analytics step, exit code 1). No thread or reaction either time. A recurring, low-frequency background failure with no owner yet.

```yaml
timestamp: 2026-09-13T14:03:00Z
channel: brand-data-dev-alerts
brand: profuomo
summary: "move_images_from_ftp_to_s3_job_sync recurred 3 more times (09-11, 09-12, 09-13, ~24h apart) after being called self-resolved last sync"
status: recurring
linked_issue: null
```
Last sync's `lugina / profuomo` entry (2026-09-10T09:03:09Z) called profuomo quiet after one recurrence and moved the linked earmark to Triggered/Dismissed with a note to check again. It didn't hold: profuomo fired on the identical job/step at almost exactly 16:03 CEST on 09-11, 09-12, and 09-13 — a daily pattern, not a one-off. Same signature as lugina's (which does appear to have stayed quiet since 09-10). No thread visible on any of the three. Crosses the notification bar (recurring after being called self-resolved).

```yaml
timestamp: 2026-09-13T10:13:21Z
channel: brand-data-dev-alerts
brand: sOliver
summary: "sOliver/FEED2 — 12 asset materializations failed (download_images, extract, etc.)"
status: active
linked_issue: null
```
New occurrence for this brand/feed, 09-13 12:13:21 CEST. No thread or reaction visible.

```yaml
timestamp: 2026-09-12T13:50:34Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: ECS health check failures detected for galvatron service, six more trigger/recover cycles
status: recurring
linked_issue: null
```
Same flapping pattern as previous cycles — six short-lived trigger/recover pairs across 09-11 15:52–20:03 CEST and 09-12 04:52–15:50 CEST, each self-resolving within 2-6 minutes. Consistently `galvatron` only. No thread; treated as known noise, not a fresh incident.

```yaml
timestamp: 2026-09-12T06:03:29Z
channel: brand-data-dev-alerts
brand: platform (Datadog / product-service-logs-index)
summary: Log index hit warning threshold then daily quota again, self-resolved on quota reset
status: recurring
linked_issue: null
```
Same pattern as the 09-10 occurrence logged last cycle: warning threshold (85%) hit 09-11 17:42 CEST, daily quota (100%) hit 23:46 CEST, both auto-recovered 09-12 08:03 CEST on quota reset. Second time this exact cycle has happened within a week — upgrading status from the prior "self-resolved" to "recurring" since it's now a pattern, not a one-off. No thread; no action needed given the auto-recovery, but worth a permanent fix (larger quota or noisier-source cleanup) if it keeps recurring.

```yaml
timestamp: 2026-09-11T19:42:27Z
channel: brand-data-dev-alerts
brand: platform (PDS / Kinesis)
summary: PDS Kinesis write throttling + stream-publish log failures recurred several more times on 09-11
status: recurring
linked_issue: null
```
Continuation of the known post-shard-increase-fix recurring issue. This cycle: stream-publish failures triggered 12:45:28 CEST, re-triggered 13:45:29 CEST, recovered 13:59:28 CEST; Kinesis write-throttling triggered 21:22:27 CEST (spike to 104.0), recovered 21:42:27 CEST. No thread on any of these.

```yaml
timestamp: 2026-09-11T17:32:52Z
channel: brand-data-dev-alerts
brand: falke (ona)
summary: ona__falke_FEED run exceeded 3h time limit
status: active
linked_issue: null
```
New job for this brand (previously only `ona__falke_PRICAT` had timed out, 09-10). No thread or reaction visible.

```yaml
timestamp: 2026-09-11T12:15:01Z
channel: brand-data-dev-alerts
brand: falke
summary: "falke/FEED — 3 asset materializations failed (map/merge/publish_from_map), root-caused and fixed same day"
status: self-resolved
linked_issue: null
```
Same bug class as iosByMaica (09-09/09-10): merge rules missing the `customAttributes` entry in `rootLevelAttributes`. Kushel flagged it in-thread 14:51:56 CEST asking Aji whether the merge rules needed updating after the ordersettings change; Aji confirmed "done, please try again" at 15:19:53 CEST (raised_hands reaction). Likely fixed via [product-service#2675](../sources/github/product-service/open-prs.md), opened same day.

```yaml
timestamp: 2026-09-11T11:51:26Z
channel: brand-data-dev-alerts
brand: snocks
summary: "snocks/FEED — 3 asset materializations failed (map/merge/publish_from_map)"
status: active
linked_issue: null
```
New brand for this failure mode, 09-11 13:51:26 CEST. No thread or reaction visible.

```yaml
timestamp: 2026-09-11T11:11:45Z
channel: brand-data-dev-alerts
brand: kultivate
summary: kultivate_FEED run exceeded 3h time limit, a third time
status: recurring
linked_issue: null
```
Fired twice on 09-10 (12:27 and 19:53 CEST) per last sync's entry; recurred again 09-11 13:11:45 CEST. No thread.

```yaml
timestamp: 2026-09-11T11:02:43Z
channel: brand-data-dev-alerts
brand: platform (enrichment_file_sensor)
summary: 5 asset materializations failed (map, merge, process_enrichment group)
status: active
linked_issue: null
```
Same sensor/asset family as the 2026-08-23 occurrence in this log. 09-11 13:02:43 CEST. No thread or reaction visible.

```yaml
timestamp: 2026-09-11T10:34:37Z
channel: brand-data-dev-alerts
brand: fashionCloud (dev)
summary: "fashionCloud/FEED and FEED2 — 8 asset materializations failed each, launched by Dagster Dev User"
status: self-resolved
linked_issue: null
```
Both runs (12:34:06 and 12:34:37 CEST) were attributed to "Dagster Dev User" rather than a schedule/sensor, and both carry a `raising_hand` reaction — reads as an acknowledged manual test/dev run rather than a fresh production incident, unlike the earlier fashionCloud/fashionCloudQA entries in this log which fired via normal cron schedules.

```yaml
timestamp: 2026-09-11T10:16:32Z
channel: brand-data-dev-alerts
brand: rinoAndPelle
summary: rinoAndPelle_FEED run exceeded 3h time limit
status: active
linked_issue: null
```
09-11 12:16:32 CEST. Prior occurrence in this log was 2026-08-24, three weeks earlier — treated as a fresh occurrence, not a tight recurrence. No thread.

```yaml
timestamp: 2026-09-11T09:03:17Z
channel: brand-data-dev-alerts
brand: ammann
summary: "ammann/FEED — process_images, exit code 137 (OOM), twice"
status: active
linked_issue: null
```
New brand/step for this OOM signature. Two occurrences: 09-10 16:59:54 CEST and 09-11 11:03:17 CEST, roughly 18h apart. No thread. Same exit-137 family as the earlier bestseller/cecil and garcia OOMs, but a distinct step (`process_images`, not `publish_from_map`/`publish_from_process_images`) — not treated as the same incident.

```yaml
timestamp: 2026-09-11T06:18:37Z
channel: brand-data-dev-alerts
brand: morganDeToi
summary: "morganDeToi/FEED — 12 asset materializations failed (download_images, extract)"
status: active
linked_issue: null
```
New brand for this failure mode, 09-11 08:18:37 CEST. No thread or reaction visible.

```yaml
timestamp: 2026-09-10T16:44:27Z
channel: brand-data-dev-alerts
brand: platform (Datadog / product-service-logs-index)
summary: Log index approached then hit its daily ingestion quota, self-resolved on quota reset
status: self-resolved
linked_issue: null
```
New alert type, not seen in this log before. Warning threshold (85%) hit 09-10 18:44 CEST, daily quota (100%) hit 18:51 CEST — no more logs indexed for `product-service-logs-index-` for the rest of the day. Both cleared automatically 09-11 08:03 CEST when the quota reset. No thread; no action taken or needed given the auto-recovery, but worth watching if it recurs — an index at 100% masks log-based alerting for the rest of that day.

```yaml
timestamp: 2026-09-11T02:43:09Z
channel: brand-data-dev-alerts
brand: platform (enrichment_file_sensor / process_enrichment_flow)
summary: Exceeded run time limit of 3 hours — process_enrichment_flow, recurred a fourth time
status: active
linked_issue: null
```
Same unresolved issue Kushel first flagged 2026-09-08 07:17 UTC (Dushan: "thats weird", no explanation given). Recurred again: a run started 23:42 UTC 09-10 breached the 3h cap around 02:43 UTC 09-11 — the fourth occurrence across four days. Still no root cause or fix in-channel.

```yaml
timestamp: 2026-09-10T22:00:26Z
channel: brand-data-dev-alerts
brand: royRobson (ona)
summary: ona__royRobson_FEED2 run exceeded 3h time limit
status: active
linked_issue: null
```
New brand for this failure mode, 09-11 00:00:26 CEST. Coincides with the royRobson brand-migration PR churn on GitHub this cycle (product-service#2647 closed unmerged, re-submitted as #2668) — plausibly related to the migration being mid-flight, not confirmed. No thread.

```yaml
timestamp: 2026-09-10T19:46:28Z
channel: brand-data-dev-alerts
brand: falke (ona)
summary: ona__falke_PRICAT run exceeded 3h time limit
status: active
linked_issue: null
```
New brand for this failure mode, 09-10 21:46:28 CEST. No thread or reaction visible.

```yaml
timestamp: 2026-09-10T10:27:13Z
channel: brand-data-dev-alerts
brand: kultivate
summary: kultivate_FEED run exceeded 3h time limit, twice same day
status: active
linked_issue: null
```
New brand for this failure mode. Two occurrences 09-10: 12:27:13 CEST and 19:53:05 CEST, roughly 7.5h apart — recurred within the same cycle it first appeared. No thread.

```yaml
timestamp: 2026-09-10T10:45:27Z
channel: brand-data-dev-alerts
brand: platform (PDS / Kinesis)
summary: PDS stream-publish failures recurred twice more on 09-10, now six separate recurrences after the shard-increase fix
status: recurring
linked_issue: null
```
Continuation of the already-`recurring` cluster (self-resolved after 09-07, recurred twice on 09-08, twice more on 09-09). Fired twice more on 09-10: 12:45-13:58 CEST and 17:03-17:20 CEST, both self-resolving as before — root cause ([product-service#2642](../sources/github/product-service/open-prs.md)'s shard increase) still not holding. Quiet since 17:20 CEST 09-10. Not treated as a fresh notification-bar trigger since this is a continuation of an already-`recurring` pattern, not a new flip from `self-resolved`.

```yaml
timestamp: 2026-09-10T16:09:11Z
channel: brand-data-dev-alerts
brand: garcia
summary: "garcia/FEED — publish_from_process_images, exit code 137 (OOM)"
status: active
linked_issue: null
```
New brand for this OOM signature, 09-10 18:09:11 CEST. Same exit-137 family as the bestseller/cecil publishing-step OOM saga, but a different brand and a different step (`publish_from_process_images`, not `publish_from_map`) — not folded into that (now-quiet) entry. No thread.

```yaml
timestamp: 2026-09-10T16:15:42Z
channel: brand-data-dev-alerts
brand: iosByMaica
summary: "iosByMaica/FEED — asset materializations failed again (map/merge), now root-caused"
status: active
linked_issue: null
```
Recurrence of the 09-09 first occurrence (4 failures again, same map/merge steps). Kushel replied in-thread 09-10 18:27 CEST identifying the cause: both the global and manufacturer-specific merge rules are missing the `customAttributes` entry in `rootLevelAttributes`. Explained but not yet fixed.

```yaml
timestamp: 2026-09-10T09:03:09Z
channel: brand-data-dev-alerts
brand: lugina / profuomo
summary: "lugina's move_images_from_ftp_to_s3_job_sync failures stopped after 09-10 14:18 UTC; profuomo also quiet after one more recurrence"
status: self-resolved
linked_issue: null
```
lugina fired hourly on both FEED/FEED2 schedules through 09-10 up to 14:18:13 UTC (16:18 CEST) — then stopped. Quiet for ~19h as of this sync (09-11 09:03 CEST), the longest gap since the pattern started, consistent with Kushel's 09-10 10:18 CEST message that Munia would have the brand update its FTP/SFTP setup "today." No explicit in-channel confirmation the fix landed — inferred from the absence of further failures, not a human all-clear. `profuomo` fired once more at 14:03 UTC 09-10 (24h after its first 09-09 occurrence, same signature) and has also been quiet since. See `_meta/earmarks.md` — this earmark's trigger condition is met; moved to Triggered/Dismissed. Worth a fresh look next sync to confirm both stay quiet before calling this fully resolved.

```yaml
timestamp: 2026-09-09T15:25:58Z
channel: brand-data-dev-alerts
brand: multiple (esqualo, schmidtGroup, didriksons, sarto, roesch)
summary: "trigger_enrichment_from_map — container exited, exit code 1, burst across 5 brands"
status: active
linked_issue: null
```
Same failure mode as riani's 09-08 recurrence, but a fresh burst hitting different brands 15:41–17:26 CEST 09-09: esqualo (15:41), schmidtGroup/didriksons/sarto simultaneously (16:20:56), roesch (16:23), sarto again (17:25:58). Dushan replied in-channel 16:27:04 CEST: "trigger enrichment failures i will look into them" — acknowledged, not yet resolved.

```yaml
timestamp: 2026-09-09T15:03:22Z
channel: brand-data-dev-alerts
brand: ara
summary: "ara/PRICAT — 12 asset materializations failed"
status: active
linked_issue: null
```
09-09 17:03:22 CEST. No thread or reaction visible.

```yaml
timestamp: 2026-09-09T15:02:22Z
channel: brand-data-dev-alerts
brand: bueltel
summary: "bueltel/PRICAT — 10 asset materializations failed"
status: active
linked_issue: null
```
09-09 17:02:22 CEST. No thread or reaction visible.

```yaml
timestamp: 2026-09-09T12:53:34Z
channel: brand-data-dev-alerts
brand: numph
summary: numph_FEED_sync_images run exceeded 3h time limit
status: active
linked_issue: null
```
New brand for this failure mode, 09-09 14:53:34 CEST. No thread or reaction visible.

```yaml
timestamp: 2026-09-09T09:15:11Z
channel: brand-data-dev-alerts
brand: sanetta
summary: "sanetta/FEED — 9 asset materializations failed"
status: active
linked_issue: null
```
09-09 11:15:11 CEST. No thread or reaction visible.

```yaml
timestamp: 2026-09-08T14:10:34Z
channel: brand-data-dev-alerts
brand: platform (pixyle / DES)
summary: "Failed to create a collection in pixyle (des-worker CREATE_COLLECTION_FATAL_ERROR)"
status: self-resolved
linked_issue: null
```
First real trigger of a monitor Dushan appears to have just set up (several `[TEST]` notifications for a companion "Failed to export collection" alert fired the same morning). Triggered 14:10 UTC, recovered 15:14 UTC. No thread.

```yaml
timestamp: 2026-09-08T13:34:49Z
channel: brand-data-dev-alerts
brand: noExcess
summary: noExcess_FEED run exceeded 3h time limit
status: active
linked_issue: null
```
First occurrence of this alert for noExcess. No thread or reaction visible.

```yaml
timestamp: 2026-09-08T13:18:15Z
channel: brand-data-dev-alerts
brand: riani
summary: riani__FEED__trigger_enrichment_from_map — container exited, exit code 1
status: recurring
linked_issue: null
```
Same failure signature as the 08-24 occurrence for this brand. No thread this time.

```yaml
timestamp: 2026-09-08T03:46:41Z
channel: brand-data-dev-alerts
brand: platform (analytics_trigger_sensor)
summary: "analytics step — essential container exited, exit code 1"
status: active
linked_issue: null
```
New failure signature. Fired twice, ~6h apart (2026-09-07 21:44:51 UTC and 2026-09-08 03:46:41 UTC), both launched by `analytics_trigger_sensor`, same commit. No thread, no reaction, no explanation in-channel yet.

```yaml
timestamp: 2026-09-07T18:08:27Z
channel: brand-data-dev-alerts
brand: platform (PDS / Kinesis)
summary: PDS Kinesis write throttling + stream-publish log failures (size/color/style streams)
status: self-resolved
linked_issue: null
```
Cluster of trigger/recover cycles 2026-09-07 18:08–20:02 UTC across three related Datadog monitors (Kinesis write-throughput, stream-publish failures, stream-publish log failures) — each recovered within ~15-40min on its own. Root-caused next morning by Aji: PDS's 2 Kinesis shards were provisioned for 1MiB/shard but load hit ~2MiB, exceeding provisioned throughput (72 failed-to-publish records). Fix: increasing to 4 shards plus an improved KDS publishing retry mechanism, [product-service#2642](../sources/github/product-service/open-prs.md) (Aji, opened 2026-09-08 08:02 UTC). Not Kushel's own work, but a real platform incident worth tracking to close.

```yaml
timestamp: 2026-09-07T14:29:03Z
channel: brand-data-dev-alerts
brand: bestseller
summary: "bestseller__FEED2__publish_from_map — container exited, exit code 137 (OOM), recurrence after fix"
status: active
linked_issue: null
```
[product-service#2633](../sources/github/product-service/open-prs.md)'s Node-memory-optimization fix (merged 09-07 08:07 UTC, see entry below) did **not** hold — same OOM pattern recurred same day. Juls confirmed in-thread: the Terraform config change alone wasn't enough, real code changes are needed. Aji opened a follow-up fix, [product-service#2640](../sources/github/product-service/open-prs.md) ("reduce memory footprint of style-group publishing"), 2026-09-08 07:32 UTC — not yet merged.

