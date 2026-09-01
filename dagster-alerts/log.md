# Dagster alerts

Deduped rolling log from Slack #brand-data-dev-alerts (channel `C07A06X22TD`). Newest first. Entries older than 30 days are pruned on sync.

```yaml
timestamp: 2026-08-31T14:12:56Z
channel: brand-data-dev-alerts
brand: multiple (fabienne, swarovski, ceceba, denham, sOliver)
summary: 5 brands' trigger_enrichment_from_map steps failed, container exit code 1
status: active
linked_issue: null
```
Started right after the ECR/datadog-agent incident below cleared (see next entry) — likely a retry-backlog side effect rather than a recurrence of the same root cause. Aji's reply on the sOliver instance (14:31 UTC) traced it to `AxiosError: Request failed with status code 504` from `DataEnrichmentService.makeRequest` — the internal enrichment service itself was timing out. Not confirmed resolved by end of window (channel goes quiet after 14:31 UTC).

```yaml
timestamp: 2026-08-31T12:31:00Z
channel: brand-data-dev-alerts
brand: platform (ECR / datadog-agent sidecar)
summary: ~36 brand pipelines plus the analytics_trigger_sensor failed simultaneously — ECS tasks couldn't pull the datadog/agent:7 sidecar image
status: self-resolved
linked_issue: null
```
Systemic infra incident, not a brand-data issue. First diagnosed on the hoegl_FEED2_cron_schedule run: `CannotPullContainerError: pull image manifest has been retried 7 time(s): failed to resolve ref .../datadog/agent:7 ... not found`. Aji flagged it as a permissions issue; Chamindu confirmed at 12:34 UTC ("It's permissions ... let's update permission for all") and owned the fix. Dushan publicly called it out at 12:39 UTC ("many jobs are failing seems like due to failing to pull dd agent"). Roughly 36 distinct brand/schedule failures hit between 12:31 and 13:06 UTC (hoegl, viaVai, lawOfTheSea, fuchsSchmitt, newZealandAuckland, nile, redraft, airon, mavi, rabe, mustang, carsJeans, ray, katag, gant, pmeLegend, leComte, bruehl, halsueberkopf, picard, lcredi, carloLanza, donders, lerros, lieblingsstueck, beheim, calamar, cecil, lolaLiza, vanBommel, tam, vinciVici, susa, and others), plus the `analytics` sensor firing ~11 times in the same window. No explicit "all clear" was posted, but the error signature changed after ~14:12 UTC (see enrichment-service entry above), implying the ECR pull issue itself was fixed by then — marked self-resolved on that basis, not a confirmed all-clear.

```yaml
timestamp: 2026-08-31T11:40:11Z
channel: brand-data-dev-alerts
brand: ivko
summary: ivko/FEED — 9 asset materializations failed
status: active
linked_issue: null
```
No thread or reaction visible. Occurred shortly before the ECR/datadog-agent cascade started — possibly an early, isolated instance of it rather than a separate issue.

```yaml
timestamp: 2026-08-31T10:03:13Z
channel: brand-data-dev-alerts
brand: sOliver
summary: sOliver/FEED — 12 asset materializations failed (download_images/extract)
status: active
linked_issue: null
```
Kushel replied in-thread ("fetch failed / Just says this") but no diagnosis or fix confirmed. Distinct from sOliver's later 504 enrichment-timeout failure the same day (see top entry).

```yaml
timestamp: 2026-08-31T07:53:05Z
channel: brand-data-dev-alerts
brand: calida
summary: calida/FEED — 11 asset materializations failed (no valid SKUs — EAN format)
status: self-resolved
linked_issue: null
```
Same "no valid SKUs produced" / relevantJsonObject-gtinField symptom as bruehl and citizen (see below) — third brand hit by this pattern. honey.sabu confirmed it's the brand uploading a bad EAN format and can be ignored; Aji closed it out in-thread within ~7 minutes.

```yaml
timestamp: 2026-08-30T15:41:59Z
channel: brand-data-dev-alerts
brand: platform (Megatron → Backend)
summary: Delays in image processing flow between Megatron and Backend (backend-service-UNPROCESSED-IMAGE-RECEIVED)
status: recurring
linked_issue: null
```
Same alert as the 2026-08-20→08-23 incident, firing again. Warned 08-29 16:58 UTC, recovered 08-30 15:41 UTC (~23h) with no human thread activity either time — appears to clear itself without intervention.

```yaml
timestamp: 2026-08-29T10:55:34Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: ECS health check failures detected for galvatron service
status: self-resolved
linked_issue: null
```
Triggered 10:52 UTC, recovered ~3 minutes later — brief blip, no thread.

```yaml
timestamp: 2026-08-29T06:03:29Z
channel: brand-data-dev-alerts
brand: platform (product-service-logs-index)
summary: Log Index daily ingestion quota reached (100%), logging paused for the index
status: self-resolved
linked_issue: null
```
Warning threshold (85%) fired 08-28 14:20 UTC, escalated to 100%/quota-reached 08-28 19:03 UTC, recovered when the daily quota reset 08-29 06:03 UTC.

```yaml
timestamp: 2026-08-28T12:17:56Z
channel: brand-data-dev-alerts
brand: muellerMeirer
summary: muellerMeirer_FEED_cron_image_sync_schedule run failed — Runtime.ImportModuleError, Cannot find module 'index'
status: active
linked_issue: null
```
Looks like a Lambda packaging/deploy issue rather than a data problem — no thread or follow-up visible.

```yaml
timestamp: 2026-08-28T11:40:44Z
channel: brand-data-dev-alerts
brand: verweijFashion
summary: verweijFashion_FEED run exceeded 3h time limit
status: active
linked_issue: null
```
Started 08:40 UTC — distinct from verweijFashion's connector_type credential failure logged below the same morning. No thread or reaction visible.

```yaml
timestamp: 2026-08-28T07:48:04Z
channel: brand-data-dev-alerts
brand: verweijFashion
summary: verweijFashion/FEED — 10 asset materializations failed (unsupported connector_type in FTP/SFTP credential item)
status: active
linked_issue: null
```
Same "Unsupported connector_type 'undefined'" credential error seen repeatedly across brands since yesterday morning (gabba, endurance, guidoMariaKretschmer, ecco — see below). Aji flagged the specific credential item, cc'd Mariana.

```yaml
timestamp: 2026-08-27T22:03:09Z
channel: brand-data-dev-alerts
brand: sOliver
summary: sOliver__FEED__trigger_enrichment_from_map — container exited, exit code 1
status: active
linked_issue: null
```
No thread or reaction visible.

```yaml
timestamp: 2026-08-27T16:26:02Z
channel: brand-data-dev-alerts
brand: guess
summary: guess__FEED__trigger_enrichment_from_map — container exited, exit code 137 (OOM)
status: recurring
linked_issue: null
```
Second OOM on the same failing step within ~15 minutes (see entry below) — no reaction/thread this time.

```yaml
timestamp: 2026-08-27T16:10:58Z
channel: brand-data-dev-alerts
brand: guess
summary: guess__FEED__trigger_enrichment_from_map — container exited, exit code 137 (OOM)
status: recurring
linked_issue: null
```
raising_hand reaction only.

```yaml
timestamp: 2026-08-27T15:34:50Z
channel: brand-data-dev-alerts
brand: dBrand
summary: dBrand/FEED — 10 asset materializations failed
status: recurring
linked_issue: null
```
Second failure on this brand within ~8 minutes (see entry below) — no thread or reaction visible.

```yaml
timestamp: 2026-08-27T15:26:18Z
channel: brand-data-dev-alerts
brand: dBrand
summary: dBrand/FEED — 10 asset materializations failed
status: recurring
linked_issue: null
```
No thread or reaction visible.

```yaml
timestamp: 2026-08-27T15:18:15Z
channel: brand-data-dev-alerts
brand: ecco
summary: ecco/FEED — 10 asset materializations failed (unsupported connector_type in FTP/SFTP credential item)
status: active
linked_issue: null
```
Same connector_type credential-config issue as gabba/endurance/guidoMariaKretschmer. Kushel flagged the credential item to Alireza directly ("Credential should be updated").

```yaml
timestamp: 2026-08-27T14:08:02Z
channel: brand-data-dev-alerts
brand: citizen
summary: citizen/FEED — 11 asset materializations failed (no valid SKUs produced)
status: active
linked_issue: null
```
Aji: rows were read from the extracted CSV but no valid SKUs were produced — relevantJsonObject/gtinField path may be wrong. Same symptom as bruehl below.

```yaml
timestamp: 2026-08-27T12:49:15Z
channel: brand-data-dev-alerts
brand: tommyHilfiger
summary: tommyHilfiger__FEED__trigger_enrichment_from_map — container exited, exit code 1
status: active
linked_issue: null
```
raising_hand reaction only, no resolution visible.

```yaml
timestamp: 2026-08-27T11:54:32Z
channel: brand-data-dev-alerts
brand: platform (enrichment_file_sensor)
summary: 5 asset materializations failed (map, merge, publish_from_map, process_enrichment...)
status: active
linked_issue: null
```
No thread or reaction visible.

```yaml
timestamp: 2026-08-27T09:53:26Z
channel: brand-data-dev-alerts
brand: bruehl
summary: bruehl/FEED — 11 asset materializations failed (no valid SKUs produced)
status: active
linked_issue: null
```
Aji dug in and found the root cause: all 3,795 rows in the Brühl CSV have `EANCode` corrupted into Excel scientific notation (e.g. `4,04147E+12`) instead of a real 13-digit GTIN — a source data-quality issue, not a pipeline bug. No fix/re-request to the brand confirmed yet.

```yaml
timestamp: 2026-08-27T09:24:48Z
channel: brand-data-dev-alerts
brand: camelActive
summary: camelActive/FEED2 — 11 asset materializations failed
status: active
linked_issue: null
```
Aji stopped the hanging job and said he'd reprocess the data.

```yaml
timestamp: 2026-08-27T09:21:47Z
channel: brand-data-dev-alerts
brand: guidoMariaKretschmer
summary: guidoMariaKretschmer/FEED — 10 asset materializations failed (unsupported connector_type in FTP/SFTP credential item)
status: active
linked_issue: null
```
Same connector_type credential-config issue as gabba/endurance. Kushel flagged Alireza and pointed him to Abir for help.

```yaml
timestamp: 2026-08-27T08:51:09Z
channel: brand-data-dev-alerts
brand: pmeLegend
summary: pmeLegend/FEED — 11 asset materializations failed
status: active
linked_issue: null
```
Aji stopped the hanging job and said he'd reprocess the data.

```yaml
timestamp: 2026-08-27T08:50:08Z
channel: brand-data-dev-alerts
brand: alberto
summary: alberto__FEED__publish_from_map — container exited, exit code 137 (OOM)
status: recurring
linked_issue: null
```
Second OOM on this brand/step (previous one 2026-08-27T07:30:45Z). Kushel asked Aji whether to increase the resource size — Aji agreed.

```yaml
timestamp: 2026-08-27T08:24:00Z
channel: brand-data-dev-alerts
brand: endurance
summary: endurance/FEED — 10 asset materializations failed (unsupported connector_type in FTP/SFTP credential item)
status: recurring
linked_issue: null
```
Second occurrence of the same credential-config issue for this brand (previous 2026-08-27T07:46:50Z) — part of a wider pattern hitting multiple brands this week (gabba, guidoMariaKretschmer, ecco, verweijFashion), looks like a systemic brand-onboarding credential gap rather than a one-off.

```yaml
timestamp: 2026-08-27T07:51:52Z
channel: brand-data-dev-alerts
brand: gabba
summary: gabba/FEED — 10 asset materializations failed (unsupported connector_type in FTP/SFTP credential item)
status: active
linked_issue: null
```
Fired twice 07:46 and 07:51 UTC, ~5 min apart. Kushel triaged in-thread: credential item is missing host/filepath/filename_pattern/connector_type. Abir (07:05 CEST) confirmed understanding and said he'd fix and rerun. Same root cause as the endurance failure below — looks like a new brand-onboarding credential setup issue.

```yaml
timestamp: 2026-08-27T07:46:50Z
channel: brand-data-dev-alerts
brand: endurance
summary: endurance/FEED — 10 asset materializations failed (unsupported connector_type in FTP/SFTP credential item)
status: active
linked_issue: null
```
Same "Unsupported connector_type 'undefined'" credential error as gabba above. Kushel tagged Abir in-thread; no reply yet as of sync time.

```yaml
timestamp: 2026-08-27T07:30:45Z
channel: brand-data-dev-alerts
brand: alberto
summary: alberto__FEED__publish_from_map — container exited, exit code 137 (OOM)
status: active
linked_issue: null
```
Aji commented "probably a reprocessing job and hit OOM" — cause identified, no fix confirmed.

```yaml
timestamp: 2026-08-27T06:58:37Z
channel: brand-data-dev-alerts
brand: sanetta
summary: sanetta/FEED — 3 asset materializations failed (map, merge, publish_from_map)
status: recurring
linked_issue: null
```
Fired twice, 06:57 and 06:58 UTC, ~1.5 min apart, identical failure. No thread or reaction visible.

```yaml
timestamp: 2026-08-26T16:25:32Z
channel: brand-data-dev-alerts
brand: onaDkCompany
summary: ona__dkCompany_FEED run exceeded 3h time limit
status: active
linked_issue: BDD-3167
```
Run 161bb902 started 13:24 UTC 08-26, still shown active as of last check (now ~6 days past its 3h limit). Zero Slack follow-up across six sync cycles. A new High-priority Linear ticket, BDD-3167 "Data completely missing - DKcompany" (FD 675069), was assigned to Kushel 2026-09-01 — likely the customer-facing consequence of this stuck run, though not confirmed. Not mentioned anywhere in this sync's Slack window either.

```yaml
timestamp: 2026-08-26T09:59:35Z
channel: brand-data-dev-alerts
brand: product-data-service
summary: PDS request metrics absent (no pds.http.request telemetry for 1h)
status: self-resolved
linked_issue: null
```
Triggered 09:49 UTC, recovered 10 minutes later at 09:59 UTC.

```yaml
timestamp: 2026-08-25T21:49:35Z
channel: brand-data-dev-alerts
brand: platform (ECS/galvatron)
summary: ECS health check failures detected in production
status: recurring
linked_issue: null
```
Same monitor (galvatron service) triggered and auto-recovered three times on 2026-08-25 (00:07→00:14, 02:07→02:10, 23:42→23:49 UTC). Each cycle self-recovered within ~7 minutes; no human intervention noted.

```yaml
timestamp: 2026-08-25T15:21:20Z
channel: brand-data-dev-alerts
brand: multiple (~25 brand feeds)
summary: Mass move_images_from_ftp_to_s3_job_sync failures (FTP connectivity)
status: self-resolved
linked_issue: null
```
Roughly 25 distinct brand/feed image-sync jobs (calamar, ninaVonC, ammann, olsen, roesch, ara, bugatti, miriade, hoegl, olymp, unitedBrands, hattric, ray, airon, masai, hatico, GKKninaVonC, lerros, ewers, felina, lawOfTheSea, marcAurel, leComte, gardeur, richAndRoyal, and more) failed identically ("Essential container in task exited, exit code: 1") between 14:21 and 17:21 CEST. Chamindu flagged it to Kushel in a thread; Kushel confirmed retries succeeded — transient FTP connectivity issue, no ticket needed.

```yaml
timestamp: 2026-08-25T12:23:42Z
channel: brand-data-dev-alerts
brand: platform (analytics asset / analytics_trigger_sensor)
summary: Asset materialization failed for `analytics`
status: recurring
linked_issue: null
```
Fired via analytics_trigger_sensor on 2026-08-20 and twice back-to-back on 2026-08-25, each with only an "eyes" reaction — no confirmed resolution.

```yaml
timestamp: 2026-08-25T10:41:10Z
channel: brand-data-dev-alerts
brand: pmeLegend
summary: pmeLegend_FEED run exceeded 3h time limit
status: recurring
linked_issue: null
```
Fired twice on 2026-08-25 (09:41 and 10:41 UTC), both with only an "eyes" reaction — no resolution mentioned.

```yaml
timestamp: 2026-08-25T08:46:04Z
channel: brand-data-dev-alerts
brand: fashionCloud
summary: fashionCloud/FEED2 — 8 asset materializations failed (download_images, feed_transform, etc.)
status: active
linked_issue: null
```
No thread or reaction visible.

```yaml
timestamp: 2026-08-25T06:03:27Z
channel: brand-data-dev-alerts
brand: platform (logging infra)
summary: product-service-logs-index approaching/hitting daily log ingestion quota
status: recurring
linked_issue: null
```
Warning-threshold and quota-reached pairs fired repeatedly across 08-21, 08-22, 08-24, and 08-25, each auto-recovering after the daily quota reset.

```yaml
timestamp: 2026-08-24T21:33:59Z
channel: brand-data-dev-alerts
brand: redmond
summary: redmond/FEED — 12 asset materializations failed
status: active
linked_issue: null
```
No thread or reaction visible.

```yaml
timestamp: 2026-08-24T10:53:02Z
channel: brand-data-dev-alerts
brand: marcAurel
summary: marcAurel/FEED — 9 asset materializations failed
status: active
linked_issue: null
```
1 thread reply ~30 min later; content not visible in channel history.

```yaml
timestamp: 2026-08-24T10:16:51Z
channel: brand-data-dev-alerts
brand: rinoAndPelle
summary: rinoAndPelle_FEED run exceeded 3h time limit
status: active
linked_issue: null
```
1 thread reply ~3h later; content not visible.

```yaml
timestamp: 2026-08-24T08:41:22Z
channel: brand-data-dev-alerts
brand: riani
summary: riani__FEED__trigger_enrichment_from_map — container exited, exit code 1
status: active
linked_issue: null
```
"eyes" reaction plus 1 thread reply ~2h later; resolution not visible.

```yaml
timestamp: 2026-08-24T08:26:48Z
channel: brand-data-dev-alerts
brand: zizzi
summary: zizzi/FEED — recurring asset materialization failures (download_images/extract/feed_transform)
status: recurring
linked_issue: null
```
Fired at least 6 times across 08-20 through 08-24 (cron-triggered most days, plus manual retries), typically 9-12 assets failing each run. No explicit resolution text.

```yaml
timestamp: 2026-08-24T07:42:03Z
channel: brand-data-dev-alerts
brand: ftcCashmere
summary: ftcCashmere__FEED__map — container exited, exit code 1
status: active
linked_issue: null
```
4 thread replies spanning ~6 hours; extended discussion, no confirmed resolution visible.

```yaml
timestamp: 2026-08-23T11:06:49Z
channel: brand-data-dev-alerts
brand: platform (enrichment_file_sensor / map step)
summary: App container has no exit code after task stopped, exit code 1 (map step)
status: recurring
linked_issue: null
```
Same sensor/step/error fired on 08-22 and again on 08-23, ~24h apart; no thread or resolution visible.

```yaml
timestamp: 2026-08-23T05:24:46Z
channel: brand-data-dev-alerts
brand: platform (Megatron → Backend)
summary: Delays in product data processing flow between Megatron and Backend (backend-service-UNPROCESSED-IMAGE-RECEIVED)
status: recurring
linked_issue: null
```
Fired 08-20 (thread, 2 replies) then escalated 08-22 22:44 UTC, finally recovering 08-23 05:24 UTC with a raised-hands reaction acknowledging the fix.

```yaml
timestamp: 2026-08-21T19:12:02Z
channel: brand-data-dev-alerts
brand: guess
summary: guess__FEED__trigger_enrichment_from_map — container exited, exit code 137 (OOM)
status: active
linked_issue: null
```
No thread or reaction visible.

```yaml
timestamp: 2026-08-21T12:54:19Z
channel: brand-data-dev-alerts
brand: bazlen
summary: bazlen_FEED2 run exceeded 3h time limit
status: active
linked_issue: null
```
No thread or reaction visible.

```yaml
timestamp: 2026-08-21T01:17:23Z
channel: brand-data-dev-alerts
brand: camelActive
summary: camelActive_FEED2 run exceeded 3h time limit
status: active
linked_issue: null
```
No thread or reaction visible.

```yaml
timestamp: 2026-08-20T14:53:20Z
channel: brand-data-dev-alerts
brand: fashionCloud
summary: fashionCloud/FEED — 9 asset materializations failed (download_images, feed_transform, etc.)
status: recurring
linked_issue: null
```
Fired twice on 08-20 (13:27 and 14:53 UTC), ~1.5h apart, same asset group and count.

```yaml
timestamp: 2026-08-20T13:29:31Z
channel: brand-data-dev-alerts
brand: ammann
summary: ammann__FEED__process_images_sync — container exited, exit code 137 (OOM)
status: active
linked_issue: null
```
No thread or reaction visible. Distinct from the later FTP move_images_from_ftp_to_s3_job_sync failure for ammann on 08-25.

```yaml
timestamp: 2026-08-20T09:02:55Z
channel: brand-data-dev-alerts
brand: fashionCloudQA
summary: fashionCloudQA/FEED — 9 asset materializations failed (download_images, download_videos, etc.)
status: active
linked_issue: null
```
"hand" reaction only; no confirmed resolution.

```yaml
timestamp: 2026-08-20T08:02:11Z
channel: brand-data-dev-alerts
brand: calamar
summary: calamar/FEED2 — 9 asset materializations failed (download_images, feed_transform, global_transform)
status: active
linked_issue: null
```
No thread or reaction visible.
