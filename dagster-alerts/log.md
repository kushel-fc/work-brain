# Dagster alerts

Deduped rolling log from Slack #brand-data-dev-alerts (channel `C07A06X22TD`). Newest first. Entries older than 30 days are pruned on sync.

```yaml
timestamp: 2026-10-20T08:07:28Z
channel: brand-data-dev-alerts
brand: adidas
summary: "adidas_FEED: 11 asset materializations failed (run 6e77410c, from the schedule), starting at download_images and feed_transform"
status: recurring
linked_issue: null
```
Seventh adidas failure (10-09, 10-13, 10-14, 10-15, 10-16, 10-19, 10-20), same shape. No thread. Still unexplained.

```yaml
timestamp: 2026-10-20T00:36:21Z
channel: brand-data-dev-alerts
brand: vanDeVelde
summary: "vanDeVelde__FEED__process_images OOM (exit 137, run d49716e1, from the schedule)"
status: active
linked_issue: null
```
First vanDeVelde OOM in the log window. Aji: out of memory in process images. Chamindu: the brand sends high-quality images now, so it needs more resources. dwiajik merged brand-data-pipeline#2079 "vanDeVelde FEED to use M" 10-20 08:38 UTC, which looks like the fix. Not in a release yet, not his.

```yaml
timestamp: 2026-10-19T21:50:30Z
channel: brand-data-dev-alerts
brand: platform (PDS publish)
summary: "PUBLISHING_JOB_PD_STREAMS_FAILED log alert triggered, recovered 22:05 UTC"
status: recurring
linked_issue: null
```
Second firing this cycle. Per dwiajik's draft product-service#3003, the 21:48 UTC failure was `CredentialsProviderError`: the SDK couldn't get credentials from the task's credentials endpoint, so nothing reached Kinesis. #3003 lengthens the timeout and adds retries. Different cause from the 09:07 UTC firing and from the 10-13 `partitionKey` problem. Not his.

```yaml
timestamp: 2026-10-19T18:15:45Z
channel: brand-data-dev-alerts
brand: falke
summary: "falke_FEED: 11 asset materializations failed (run a2dd417e, started by Dagster Dim User), starting at download_images and feed_transform"
status: recurring
linked_issue: null
```
First falke failure since the four on 10-15, after its migration. Hand-started run. No thread. Not his.

```yaml
timestamp: 2026-10-19T17:38:07Z
channel: brand-data-dev-alerts
brand: ftcCashmere
summary: "ftcCashmere_FEED2: 12 asset materializations failed (run d289ac50, from the schedule), starting at download_images and extract"
status: recurring
linked_issue: BDD-3357
```
Tenth since 10-08. marianabassi's credential fix (brand-data-pipeline#2069) merged 08:51 UTC but missed production release #2070 (10:03 UTC) and only reached production in #2076 (10-20 07:59 UTC), so this run still had the old config. No thread. Earmarked: one clean cycle means the fix held.

```yaml
timestamp: 2026-10-19T13:11:26Z
channel: brand-data-dev-alerts
brand: carsJeans
summary: "carsJeans_FEED_sync_images exceeded the 3h run-time limit (run 099ab457, started 10:10 UTC)"
status: recurring
linked_issue: null
```
Fourteenth hit (09-30 to 10-19), the 10:10 UTC schedule again, after quiet 10-17 and 10-18. Check-mark reaction, no thread. No owner.

```yaml
timestamp: 2026-10-19T12:16:43Z
channel: brand-data-dev-alerts
brand: fynchHatton
summary: "fynchHatton_FEED2_sync_images exceeded the 3h run-time limit (run f2449be4, started 09:16 UTC from the schedule)"
status: recurring
linked_issue: null
```
Kushel disabled the fynchHatton image-sync schedule on 09-30 because of the brand's FTP problem. This run was launched by `fynchHatton_FEED2_cron_image_sync_schedule`, so that schedule is on again. Who turned it back on isn't visible. Eyes reaction, no thread.

```yaml
timestamp: 2026-10-19T11:07:55Z
channel: brand-data-dev-alerts
brand: timezone
summary: "timezone__FEED2__move_images_from_ftp_to_s3_job_sync exit 1 (run 7bb8cd79): remote directory /productImages not found"
status: self-resolved
linked_issue: null
```
Aji tagged honey.sabu, who replied "Fixed" (14:37 UTC). First timezone failure in the log window.

```yaml
timestamp: 2026-10-19T09:18:25Z
channel: brand-data-dev-alerts
brand: blueSeven
summary: "blueSeven_FEED2 sync images: 4 asset materializations failed (run 73096d4f, from the schedule), FTP connection termination timed out"
status: active
linked_issue: null
```
Aji quoted `Error: FTP connection termination timed out` from `source-connector/dist/ftpSource.js` in the image-sync collector job. Part of the 09:07 to 09:18 UTC cluster below, but with its own error. Different from the 09-30 `ona__blueSeven_FEED2` 3h hang.

```yaml
timestamp: 2026-10-19T09:12:54Z
channel: brand-data-dev-alerts
brand: unitedLegwear, liebeskind, lerros
summary: "unitedLegwear_FEED (8 assets, hand-started), liebeskind_FEED (12 assets, schedule) and lerros__FEED__trigger_enrichment_from_map (no exit code, schedule) failed 09:09 to 09:13 UTC"
status: active
linked_issue: null
```
Aji replied "no logs" on all three. Same five minutes as the two `analytics` failures, one of which logged an SSM 500 at task start, so a short AWS-side problem is a plausible common cause. Not confirmed. unitedLegwear's second failure (also 10-14). liebeskind's 10-07 FEED2 entry was a different feed and error. First lerros failure in the window.

```yaml
timestamp: 2026-10-19T09:07:52Z
channel: brand-data-dev-alerts
brand: platform (analytics_trigger_sensor)
summary: "analytics failed twice (runs 6c3e8c90 09:07 UTC, ae50029f 09:12 UTC), the second with ResourceInitializationError: SSM GetParameters 500"
status: recurring
linked_issue: null
```
Aji: no logs for the first. For the second he quoted the task failing to pull secrets from SSM (`InternalServerError`, 3 attempts). Continues the September `analytics` pattern.

```yaml
timestamp: 2026-10-19T09:07:29Z
channel: brand-data-dev-alerts
brand: platform (PDS publish)
summary: "PDS stream publish failures (metric 79) + PUBLISHING_JOB_PD_STREAMS_FAILED log alert, paired, recovered 09:22 to 09:24 UTC"
status: recurring
linked_issue: null
```
Aji posted an example log (`InternalFailure: UnknownError` from Kinesis, style group 2004503) and a remediation PR, dwiajik's product-service#2987 (retry Kinesis 5xx in the stream publisher), merged 10-20 07:41 UTC, after production release #2999, so not in production yet. Not his.

```yaml
timestamp: 2026-10-19T08:06:33Z
channel: brand-data-dev-alerts
brand: adidas
summary: "adidas_FEED: 11 asset materializations failed (run a00ccf86, from the schedule), starting at download_images and feed_transform"
status: recurring
linked_issue: null
```
Sixth adidas failure (10-09, 10-13, 10-14, 10-15, 10-16, 10-19), same shape. No thread this time. Still unexplained.

```yaml
timestamp: 2026-10-19T06:35:40Z
channel: brand-data-dev-alerts
brand: lawOfTheSea
summary: "lawOfTheSea_FEED: 11 asset materializations failed (run a90a829d, from the schedule), starting at download_images and feed_transform"
status: recurring
linked_issue: null
```
Second lawOfTheSea failure (10-16, 10-19), same 11-asset shape as adidas. No thread.

```yaml
timestamp: 2026-10-18T20:56:18Z
channel: brand-data-dev-alerts
brand: platform (process_enrichment_flow)
summary: "process_enrichment_flow exceeded the 3h run-time limit (run b4741521, started 17:55 UTC 10-18 by enrichment_file_sensor)"
status: recurring
linked_issue: null
```
Sixth this month (10-06, 10-12, 10-13, 10-16, 10-17, 10-18). No thread.

```yaml
timestamp: 2026-10-18T08:40:19Z
channel: brand-data-dev-alerts
brand: skiny
summary: "skiny__FEED__process_images OOM (exit 137, run 34ac19df)"
status: active
linked_issue: null
```
First skiny OOM in the current log window. No thread.

```yaml
timestamp: 2026-10-18T08:25:15Z
channel: brand-data-dev-alerts
brand: ftcCashmere
summary: "ftcCashmere__FEED2__download_images exit 1 (run 1b0560b7)"
status: recurring
linked_issue: BDD-3357
```
Ninth since 10-08 (eighth was 10-16 17:38 UTC, 12 assets, from the schedule). Aji replied 10-19 07:55 UTC, tagging Mariana: credential not found, pointing at `config.json` line 4. marianabassi opened brand-data-pipeline#2069 "ftcCashmere: change credentialID" (approved, clean, not merged). So the feed failures are a credential config problem. Whether that also explains the 403 in [BDD-3357](../support/open.md) isn't confirmed.

```yaml
timestamp: 2026-10-18T01:52:37Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: "[production] ECS health check failures (galvatron, value 2), recovered 01:57 UTC"
status: self-resolved
linked_issue: null
```
Five-minute blip, no thread.

```yaml
timestamp: 2026-10-16T15:15:05Z
channel: brand-data-dev-alerts
brand: bugatti
summary: "bugatti_FEED: 11 asset materializations failed (run 4feceeae, from the schedule), starting at download_images and feed_transform"
status: recurring
linked_issue: null
```
Second bugatti_FEED failure (10-15, 10-16), same shape. On 10-15 Aji quoted `Credential lookup failed`, the same as ftcCashmere. No thread this time.

```yaml
timestamp: 2026-10-16T13:11:02Z
channel: brand-data-dev-alerts
brand: carsJeans
summary: "carsJeans_FEED_sync_images exceeded the 3h run-time limit (run ba5fc7bb, started 10:10 UTC)"
status: recurring
linked_issue: null
```
Thirteenth hit (09-30 to 10-16), the 10:10 UTC schedule again. None since (10-17 and 10-18 quiet). No owner.

```yaml
timestamp: 2026-10-16T12:12:23Z
channel: brand-data-dev-alerts
brand: platform (PCS latency)
summary: "PCS read-path p95 above 500ms warn monitor: about 30 Triggered/Warn notifications 12:12 to 15:12 UTC, peak 915ms, recovered 15:12 UTC"
status: self-resolved
linked_issue: null
```
Chamindu flagged "PCS seems to be having issues" (13:51 UTC) to Kushel and Irem. Kushel asked Aji about a separate monitor with a higher threshold for the resolve endpoint, since multi-download requests regularly exceed this one. They agreed to pause it until the CSV optimisations are done and there's an SLO for multi-download. Kushel said the PCS CSV flag is enabled in production, and he muted the monitor. His product-service#2981 is the optimisation. Muted, so no new alerts from this monitor will show here.

```yaml
timestamp: 2026-10-16T11:57:42Z
channel: brand-data-dev-alerts
brand: katag, polaris, florez
summary: "map/merge/publish asset failures on katag_FEED2 (11:57 UTC, no launcher), polaris_FEED (12:02, schedule) and florez_FEED (12:04, schedule)"
status: self-resolved
linked_issue: null
```
About 25 minutes after production release product-service#2973 (11:33 UTC), which carried Kushel's #2951 (videos through the merge). Chamindu asked who was triggering the failed runs. Kushel replied in the polaris thread 12:08 UTC: "I'll update the global merge rule to include videos", so the `videos` global merge rule wasn't in production when the release deployed. No more merge-step failures through this sync (about 3 days), so it looks fixed. Not confirmed directly.

```yaml
timestamp: 2026-10-16T10:50:24Z
channel: brand-data-dev-alerts
brand: riani
summary: "riani_FEED: 11 asset materializations failed (run 5b547c8d, started by Dagster Dim User), starting at download_images and feed_transform"
status: active
linked_issue: null
```
Hand-started run, same 11-asset shape as adidas. Different from riani's September `trigger_enrichment_from_map` failures. No thread.

```yaml
timestamp: 2026-10-16T08:36:26Z
channel: brand-data-dev-alerts
brand: platform (PCS 5xx)
summary: "PCS ALB target 5xx ratio Warn, recovered 08:37 UTC"
status: recurring
linked_issue: null
```
First PCS 5xx alert since 10-12 22:01 UTC. Warn level only, cleared in a minute, no thread. No product-service production release since #2952 (10-15 07:48 UTC), so not tied to a deploy.

```yaml
timestamp: 2026-10-16T08:05:31Z
channel: brand-data-dev-alerts
brand: adidas
summary: "adidas_FEED: 11 asset materializations failed (run c4725a95, from the schedule), starting at download_images and feed_transform"
status: recurring
linked_issue: null
```
Fifth adidas failure (10-09, 10-13, 10-14, 10-15, 10-16), same shape. Chamindu tagged Irem in-thread, one eyes reaction. Still unexplained.

```yaml
timestamp: 2026-10-16T06:35:33Z
channel: brand-data-dev-alerts
brand: lawOfTheSea
summary: "lawOfTheSea_FEED: 11 asset materializations failed (run 3b4c8431, from the schedule), starting at download_images and feed_transform"
status: recurring
linked_issue: null
```
First occurrence, same 11-asset shape as adidas/unitedLegwear. Aji found no logs; Dushan said the log index quota was exceeded (see the 02:27 UTC entry), so the cause is not visible.

```yaml
timestamp: 2026-10-16T06:07:55Z
channel: brand-data-dev-alerts
brand: platform (process_enrichment_flow)
summary: "process_enrichment_flow exceeded the 3h run-time limit (run 7ab9db1c, started 03:07 UTC by enrichment_file_sensor)"
status: recurring
linked_issue: null
```
Fourth this month (10-06, 10-12, 10-13, 10-16). No thread.

```yaml
timestamp: 2026-10-16T02:27:26Z
channel: brand-data-dev-alerts
brand: platform (Datadog log index)
summary: "product-service-logs-index hit its daily ingestion quota (warning 10-15 20:03 UTC), recovered 06:03 UTC"
status: recurring
linked_issue: null
```
Quota reached for about 3.5h overnight. It cost the lawOfTheSea investigation its logs. No thread.

```yaml
timestamp: 2026-10-16T02:06:47Z
channel: brand-data-dev-alerts
brand: gant
summary: "gant_FEED: publish_from_map failed, ECS container had no exit code (exit 1, run b4766415, from the schedule)"
status: active
linked_issue: null
```
First occurrence. One asset event, no thread.

```yaml
timestamp: 2026-10-15T17:38:13Z
channel: brand-data-dev-alerts
brand: ftcCashmere
summary: "ftcCashmere_FEED2: 12 asset materializations failed (run d8bfbfd3, from the schedule), starting at download_images and extract"
status: recurring
linked_issue: null
```
Seventh since 10-08. Aji quoted the error in-thread 10-16: `Credential lookup failed. Verify credentials configuration.` That points at credentials rather than the 403 in [BDD-3357](../support/open.md), not confirmed.

```yaml
timestamp: 2026-10-15T15:15:09Z
channel: brand-data-dev-alerts
brand: bugatti
summary: "bugatti_FEED: 11 asset materializations failed (run 262d0bdc, from the schedule), starting at download_images and feed_transform"
status: recurring
linked_issue: null
```
First bugatti_FEED failure in the log. Aji quoted the same `Credential lookup failed` error as ftcCashmere. Not related to the beltsBugatti 10-02 entry.

```yaml
timestamp: 2026-10-15T14:10:21Z
channel: brand-data-dev-alerts
brand: falke
summary: "falke_FEED failures after the falke brand migration: 11 assets failed twice (08:58 and 09:01 UTC, one hand-started), falke__FEED__map exit 1 (10:02 UTC), ona__falke_FEED over the 3h limit (started 11:10 UTC)"
status: active
linked_issue: null
```
All on the day after honeypsabu's falke migration (brand-data-pipeline#2052, 10-14). The 3h alert got a check-mark reaction, no thread text. Not his.

```yaml
timestamp: 2026-10-15T13:11:38Z
channel: brand-data-dev-alerts
brand: carsJeans
summary: "carsJeans_FEED_sync_images exceeded the 3h run-time limit (run b189d8e0, started 10:10 UTC)"
status: recurring
linked_issue: null
```
Twelfth hit (09-30 to 10-15), always the 10:10 UTC schedule. Check-mark reaction, no thread, no owner.

```yaml
timestamp: 2026-10-15T08:05:31Z
channel: brand-data-dev-alerts
brand: adidas
summary: "adidas_FEED: 11 asset materializations failed (run a3ea6a30, from the schedule), starting at download_images and feed_transform"
status: recurring
linked_issue: null
```
Fourth adidas failure (10-09, 10-13, 10-14, 10-15), same 11-asset shape, now on pipeline commit 670638c0 (after production release #2054). No thread, still unexplained.

```yaml
timestamp: 2026-10-14T21:49:28Z
channel: brand-data-dev-alerts
brand: platform (PDS publish)
summary: "PUBLISHING_JOB_PD_STREAMS_FAILED log alert triggered, recovered 22:04 UTC"
status: recurring
linked_issue: null
```
Second firing after the 10-13 15:12 UTC one, which Aji traced to style `partitionKey`s over Kinesis's 256-character limit. Cleared in 15 minutes again, no thread. Most likely the same unfixed key problem, not confirmed. Not his.

```yaml
timestamp: 2026-10-14T17:37:42Z
channel: brand-data-dev-alerts
brand: ftcCashmere
summary: "ftcCashmere_FEED2: 12 asset materializations failed (run 5c605be7, from the schedule), starting at download_images and extract"
status: recurring
linked_issue: null
```
Sixth failing ftcCashmere_FEED2 run since 10-08. Still matches BDD-3357 (PIPE 403 on `shop.ftc-cashmere.com`), eight days old and unassigned. No thread.

```yaml
timestamp: 2026-10-14T13:11:16Z
channel: brand-data-dev-alerts
brand: carsJeans
summary: "carsJeans_FEED_sync_images exceeded the 3h run time limit (run 02dd3806, started 10:11 UTC from the schedule)"
status: recurring
linked_issue: null
```
Eleventh carsJeans run-limit hit, same 10:10 UTC scheduled start. No thread, no owner.

```yaml
timestamp: 2026-10-14T12:04:53Z
channel: brand-data-dev-alerts
brand: unitedLegwear
summary: "unitedLegwear_FEED: 11 asset materializations failed (run ee7f8397, from the schedule), starting at download_images and feed_transform"
status: active
linked_issue: null
```
First unitedLegwear alert in this log. Same 11-asset shape as the adidas failures, on the same commit (8868c6fc). No thread, no repeat by sync time.

```yaml
timestamp: 2026-10-14T10:15:25Z
channel: brand-data-dev-alerts
brand: luisaCerano (fcapi-to-sftp-sync-job)
summary: "fcapi-to-sftp-sync-job failed in production for brand 60d2f1147bb9340012a4d14a (Luisa Cerano), window 2026101409: config missing `host`, `type` and `filenamePattern`"
status: self-resolved
linked_issue: null
```
Three failure messages 10:15 to 10:18 UTC plus the CloudWatch alarm `product-service-fcapi-to-sftp-sync-job-errors-production` (ALARM 10:16, OK 10:34 UTC). First alert of this kind in the log. The brand was onboarded to this job earlier (see the luisacerano/willen onboarding PR in the product-service archive), so its SFTP config looks incomplete. Dushan said in-channel 11:14 UTC he'd check. No repeat since, so marked self-resolved, though nothing says the config was fixed.

```yaml
timestamp: 2026-10-14T08:05:11Z
channel: brand-data-dev-alerts
brand: adidas
summary: "adidas_FEED: 11 asset materializations failed (run 90c660b3, from the schedule), starting at download_images and feed_transform"
status: recurring
linked_issue: null
```
Third adidas failure (10-09, 10-13, now 10-14), same 11-asset shape each time, now on a newer pipeline commit (8868c6fc). Still no explanation; no thread on this one.

```yaml
timestamp: 2026-10-13T17:38:10Z
channel: brand-data-dev-alerts
brand: ftcCashmere
summary: "ftcCashmere_FEED2: 12 asset materializations failed (run 4c0c1868, from the schedule), starting at download_images and extract"
status: recurring
linked_issue: null
```
Fifth failing ftcCashmere_FEED2 run since 10-08. Still matches BDD-3357 (PIPE 403 on `shop.ftc-cashmere.com`), which is a week old and still unassigned in Triage. No thread.

```yaml
timestamp: 2026-10-13T15:12:29Z
channel: brand-data-dev-alerts
brand: platform (PDS publish)
summary: "PDS stream publish failures (metric 69) + PUBLISHING_JOB_PD_STREAMS_FAILED log alert, paired, recovered 15:27 UTC"
status: active
linked_issue: null
```
The monitor cleared itself in 15 minutes like the earlier flares, but this time the cause is a data problem, not a transient one. Aji posted the error in-thread 10-14 08:14 UTC: Kinesis rejects records whose `partitionKey` is over 256 characters, and some style keys are a brand prefix (`006060:`, `008060:`) plus a long comma-joined list of German color names. Those records will keep failing until the key is shortened or hashed, so `active` rather than `self-resolved`. Not his code as far as the sources show. Different cause from the earlier self-clearing flares, one of which Aji traced to a transient DNS failure on the Kinesis endpoint.

```yaml
timestamp: 2026-10-13T15:06:59Z
channel: brand-data-dev-alerts
brand: platform (process_enrichment_flow)
summary: "process_enrichment_flow exceeded the 3h run time limit (run 6179ceed, started 12:06 UTC from enrichment_file_sensor)"
status: recurring
linked_issue: null
```
Third 3h hit (10-06, 10-12, now 10-13), two days running. One :white_check_mark:, no thread, still unexplained.

```yaml
timestamp: 2026-10-13T13:11:56Z
channel: brand-data-dev-alerts
brand: carsJeans
summary: "carsJeans_FEED_sync_images exceeded the 3h run time limit (run 893c23ca, started 10:11 UTC from the schedule)"
status: recurring
linked_issue: null
```
Tenth carsJeans run-limit hit, same 10:10 UTC scheduled start. One :white_check_mark:, no thread, still no owner.

```yaml
timestamp: 2026-10-13T10:18:00Z
channel: brand-data-dev-alerts
brand: comma
summary: "comma_FEED2: 12 asset materializations failed (run b236e072, from the schedule), starting at download_images and extract"
status: self-resolved
linked_issue: null
```
First comma entry in this log. Aji replied in-thread 11:22 UTC: "timeout". No repeat through this sync.

```yaml
timestamp: 2026-10-13T08:05:50Z
channel: brand-data-dev-alerts
brand: adidas
summary: "adidas_FEED: 11 asset materializations failed (run e12051e5, from the schedule), starting at download_images and feed_transform"
status: recurring
linked_issue: null
```
Second adidas failure, same 11-asset shape as 10-09 (run 5702599d). The 10-09 thread tagged Irem but never explained it. No thread on this one yet.

```yaml
timestamp: 2026-10-12T21:45:19Z
channel: brand-data-dev-alerts
brand: platform (PCS 5xx)
summary: "PCS content API 5xx rate triggered 21:45 (0.045) and PCS ALB target 5xx ratio 21:46; both recovered by 22:01 UTC"
status: recurring
linked_issue: null
```
Fourth PCS 5xx episode since the monitors landed 10-09 (10-09 afternoon, 10-09 night, 10-11, now 10-12 night). Self-resolved in about 15 minutes. This time someone put a :raising_hand: on both trigger messages, so someone may have picked it up, but there's no thread. It came about 10h after production release #2922 (12:10 UTC), which carried his #2916 and #2917 into PCS. Not shown to be related.

```yaml
timestamp: 2026-10-12T17:37:56Z
channel: brand-data-dev-alerts
brand: ftcCashmere
summary: "ftcCashmere_FEED2: 12 asset materializations failed (run 405b23c9, from the schedule), starting at download_images and extract"
status: recurring
linked_issue: null
```
Fourth failing ftcCashmere_FEED2 run since 10-08. Still matches BDD-3357 (PIPE 403 on `shop.ftc-cashmere.com`), which is still unassigned in Triage. No thread.

```yaml
timestamp: 2026-10-12T13:11:38Z
channel: brand-data-dev-alerts
brand: carsJeans
summary: "carsJeans_FEED_sync_images exceeded the 3h run time limit (run 199edd1a, started 10:11 UTC from the schedule)"
status: recurring
linked_issue: null
```
Ninth carsJeans run-limit hit, same 10:10 UTC scheduled start. No thread, still no owner.

```yaml
timestamp: 2026-10-12T12:18:24Z
channel: brand-data-dev-alerts
brand: platform (PDS relay)
summary: "PDS relay Lambda erroring: pds-stream-relay-color-production (82) and pds-stream-relay-style-production (33); recovered 12:36 UTC"
status: self-resolved
linked_issue: null
```
Aji in-thread (12:27 UTC): broke temporarily because of a release with breaking changes, should already be resolved. It fired 8 minutes after production release #2922 merged (12:10 UTC). Recovered 18 minutes later.

```yaml
timestamp: 2026-10-12T06:06:08Z
channel: brand-data-dev-alerts
brand: platform (process_enrichment_flow)
summary: "process_enrichment_flow exceeded the 3h run time limit (run 454aa07c, started 03:05 UTC from enrichment_file_sensor)"
status: recurring
linked_issue: null
```
Second since 09-18 (the last was 10-06). Same chronic pattern, still no root cause. No thread.

```yaml
timestamp: 2026-10-11T22:07:35Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: ECS health check failures on galvatron, one trigger/recover cycle
status: self-resolved
linked_issue: null
```
Triggered 22:07 UTC (value 2.0), recovered 22:14 UTC. Same known galvatron flapping. No thread.

```yaml
timestamp: 2026-10-11T16:25:27Z
channel: brand-data-dev-alerts
brand: platform (PCS 5xx)
summary: "PCS ALB target 5xx ratio monitor: triggered 16:25, recovered 16:40 UTC"
status: recurring
linked_issue: null
```
Third PCS 5xx episode in three days (see the two 10-09 entries below). Only the ALB monitor fired this time, not the app-level `pcs.http` one. No thread, no reaction. PCS is where his CSV generation and Slice 5 audit code runs.

```yaml
timestamp: 2026-10-11T08:24:42Z
channel: brand-data-dev-alerts
brand: skiny, fuchsSchmitt, ftcCashmere
summary: "Morning image burst: ftcCashmere__FEED2__download_images exit 1 twice (runs 76d44c90, 6a1988a9, 08:24-08:25 UTC); fuchsSchmitt__FEED__process_images exit 137 (run 095f7d31, 08:28 UTC); skiny__FEED__process_images exit 137 (run 69329467, 08:40 UTC)"
status: active
linked_issue: BDD-3357
```
Each has one :eyes:, no thread. ftcCashmere is its third failing run since 10-08 and still matches BDD-3357 (PIPE 403 on `shop.ftc-cashmere.com` images, unassigned). skiny's third exit 137 (09-30, 10-04, now) and fuchsSchmitt's second (first 09-17) both look like OOM on image processing. No owner.

```yaml
timestamp: 2026-10-09T22:00:20Z
channel: brand-data-dev-alerts
brand: platform (PCS 5xx)
summary: "PCS content API 5xx rate and SLO burn rate: triggered 22:00 (0.4), recovered 22:15; triggered again 22:53 (0.167, burn 73x), recovered 23:09 UTC"
status: self-resolved
linked_issue: null
```
Two short cycles about an hour apart, late evening. No thread, no reaction.

```yaml
timestamp: 2026-10-09T17:38:17Z
channel: brand-data-dev-alerts
brand: ftcCashmere
summary: "ftcCashmere_FEED2: 12 asset materializations failed (run 30f26970, from the schedule), starting at download_images and extract"
status: recurring
linked_issue: BDD-3357
```
Same as the 10-08 entry, one day later. Flipped to `recurring`. No thread.

```yaml
timestamp: 2026-10-09T15:17:23Z
channel: brand-data-dev-alerts
brand: platform (PCS 5xx)
summary: "PCS content API 5xx rate (0.009 to 0.012) and PCS ALB target 5xx ratio: warn/trigger flapping 15:17 to 15:34 UTC, then recovered"
status: self-resolved
linked_issue: product-service#2902
```
First firing of the new PCS monitors from dwiajik's product-service#2900/#2902 (merged 09:15 UTC that morning). Barely over the 1% threshold. One :eyes:, no thread. Whether `enable_pcs_csv_generation` was back on in production by then isn't visible in the sources.

```yaml
timestamp: 2026-10-09T13:11:42Z
channel: brand-data-dev-alerts
brand: carsJeans
summary: "carsJeans_FEED_sync_images exceeded the 3h run time limit (run ff0ceb9d, started 10:10 UTC from the schedule)"
status: recurring
linked_issue: product-service#2851
```
Eighth carsJeans run-limit hit, same 10:10 UTC start. None on 10-10 or 10-11. No thread, still no owner.

```yaml
timestamp: 2026-10-09T08:05:50Z
channel: brand-data-dev-alerts
brand: adidas
summary: "adidas_FEED: 11 asset materializations failed (run 5702599d, from the schedule), starting at download_images and feed_transform"
status: recurring
linked_issue: null
```
First adidas entry in this log. Chamindu tagged Irem in-thread, no explanation yet. Recurred 10-13 (see above), so now `recurring`.

```yaml
timestamp: 2026-10-08T17:38:21Z
channel: brand-data-dev-alerts
brand: ftcCashmere
summary: "ftcCashmere_FEED2: 12 asset materializations failed (run 8894da95, from the schedule), starting at download_images and extract"
status: recurring
linked_issue: null
```
No thread. Same brand as Triage ticket BDD-3357 (PIPE gets 403 Forbidden downloading ftcCashmere images from `shop.ftc-cashmere.com`), so possibly the same cause, but nothing confirms it.

```yaml
timestamp: 2026-10-08T16:25:59Z
channel: brand-data-dev-alerts
brand: bestseller
summary: "bestseller_FEED2 exceeded the 3h run time limit again (run d92a669d, started 13:25 UTC)"
status: active
linked_issue: BDD-3362
```
Second bestseller_FEED2 hang in two days. Irem explained in-thread: she's reprocessing 7 Bestseller brands, about 300k GTINs, for FD 679941 (BDD-3362, High, In Progress). So this one is an expected long run, not a fault. Likely explains the 10-07 hit too, though nobody said so for that one.

```yaml
timestamp: 2026-10-08T13:59:40Z
channel: brand-data-dev-alerts
brand: platform (PDS media 5xx)
summary: "PDS media 5xx rate monitor: warn 13:56, triggered 13:59 (0.02), warn 14:20, recovered 14:21 UTC"
status: self-resolved
linked_issue: product-service#2894
```
New Datadog monitor (99.5% availability SLO on PDS sign/generate/find_sizes and similar endpoints), first time it fired. **Kushel turned off the PCS CSV generation flag in production while it was firing**, asked Aji if a deploy caused it. Aji: mostly `find_sizes`, 2s Mongo timeouts, likely heavy writes on the primary. He said the flag could go back on, and opened product-service#2894 (read PDS from Mongo secondaries, merged 15:13 UTC, in production release #2899, open at sync time). Aji also wants a PCS monitor, now dwiajik's product-service#2902. Chamindu tagged Irem and abubakarwase on the warn thread.

```yaml
timestamp: 2026-10-08T13:11:32Z
channel: brand-data-dev-alerts
brand: carsJeans
summary: "carsJeans_FEED_sync_images exceeded the 3h run time limit (run 23ee330e, started 10:10 UTC from the schedule)"
status: recurring
linked_issue: product-service#2851
```
Seventh carsJeans run-limit hit (09-30, 10-01, 10-02, 10-05, 10-06, 10-07, now 10-08), the same 10:10 UTC scheduled start. No thread, still no owner.

```yaml
timestamp: 2026-10-07T17:20:59Z
channel: brand-data-dev-alerts
brand: bestseller
summary: "bestseller_FEED2 exceeded the 3h run time limit (run 5376e95d, started 14:20 UTC from the schedule)"
status: active
linked_issue: null
```
First 3h run-limit hit for bestseller_FEED2 in this log (its earlier entries were the September publish OOMs, since pruned). Same day honeypsabu updated bestseller's brand IDs after the brand deleted 7 profiles (brand-data-pipeline#2021 still open, product-service#2877 merged 10-08 08:19 UTC). Nothing links the two yet. One :white_check_mark:, no thread.

```yaml
timestamp: 2026-10-07T13:11:44Z
channel: brand-data-dev-alerts
brand: carsJeans
summary: "carsJeans_FEED_sync_images exceeded the 3h run time limit (run 4d87a5a7, started 10:11 UTC from the schedule)"
status: recurring
linked_issue: product-service#2851
```
Sixth carsJeans run-limit hit (09-30, 10-01, 10-02, 10-05, 10-06, now 10-07), the same 10:10 UTC scheduled start, and the third since #2851 reached production. One :white_check_mark:, no thread, still no owner.

```yaml
timestamp: 2026-10-07T12:42:35Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: ECS health check failures on galvatron, one trigger/recover cycle
status: self-resolved
linked_issue: null
```
Triggered 12:42 UTC (value 2.0), recovered 12:52 UTC. Same known galvatron flapping pattern. No thread.

```yaml
timestamp: 2026-10-07T09:15:11Z
channel: brand-data-dev-alerts
brand: liebeskind
summary: "liebeskind__FEED2__download_images - essential container exited (exit 1), AxiosError timeout of 5000ms in CredentialsClient.getCredentialItemById"
status: self-resolved
linked_issue: null
```
Run 2117babc, scheduled. Aji posted the stack trace in-thread: the image-downloading job timed out after 5s fetching the source credential. He didn't know why, reran it, and the rerun (85104831) succeeded 13:34 UTC.

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
timestamp: 2026-09-21T09:53:35Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: ECS health check failures detected for galvatron service, one more brief trigger/recover cycle
status: recurring
linked_issue: null
```
Triggered 09:52:35 UTC, recovered ~1 minute later — same established noise pattern, no thread.

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
timestamp: 2026-09-21T08:35:55Z
channel: brand-data-dev-alerts
brand: mosMosh
summary: "mosMosh__FEED image-processing OOM spree now 21+ occurrences across 4 days, still no owner"
status: active
linked_issue: null
```
New brand for this failure shape, first seen 2026-09-17. `process_images`/`process_images_sync` (exit code 137, OOM) fired 10 times 09-17, then 8 more 09-18 (12:42-13:13 UTC), then 3 more 09-21 (08:29-08:35 UTC) — 21+ occurrences total, still completely unowned, no thread or reaction at any point across four days. [BDD-3268](../support/open.md) (bump resource size for long-running integrations) — the ticket that looked like it might be the fix — was picked up by abubakarwase 09-18 and is now In Progress, but no fix has landed yet and the failures continued after he started it.

```yaml
timestamp: 2026-09-21T08:35:55Z
channel: brand-data-dev-alerts
brand: ara
summary: "ara__PRICAT__process_images OOM now 26+ occurrences across 4 days, still no owner"
status: active
linked_issue: null
```
New brand for this failure shape, first seen 2026-09-17 (7 occurrences, 12:42-12:58 UTC). Recurred 09-18 (9 more, 12:42-12:52 UTC) and again 09-21 (8 more, 08:23-08:35 UTC) — 26+ occurrences total, all the same step, still completely unowned across four days. No thread or reaction at any point.

