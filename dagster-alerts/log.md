# Dagster alerts

Deduped rolling log from Slack #brand-data-dev-alerts (channel `C07A06X22TD`). Newest first. Entries older than 30 days are pruned on sync.

```yaml
timestamp: 2026-08-26T16:25:32Z
channel: brand-data-dev-alerts
brand: onaDkCompany
summary: ona__dkCompany_FEED run exceeded 3h time limit
status: active
linked_issue: null
```
Run 161bb902 started 13:24 UTC, still running when alert fired at 16:25 UTC. No follow-up in channel yet.

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
