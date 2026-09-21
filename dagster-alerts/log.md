# Dagster alerts

Deduped rolling log from Slack #brand-data-dev-alerts (channel `C07A06X22TD`). Newest first. Entries older than 30 days are pruned on sync.

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

```yaml
timestamp: 2026-09-07T02:39:13Z
channel: brand-data-dev-alerts
brand: bestseller
summary: "bestseller__FEED2__publish_from_process_images — container exited, exit code 137 (OOM)"
status: active
linked_issue: null
```
Chamindu flagged a second failure over the weekend in-thread; Kushel diagnosed it as an OOM and initially proposed resizing, but Chamindu pushed back since bestseller already runs at the largest resource size and asked to investigate the root cause instead (CC Aji). Juls had an idea and paired with Kushel; Aji opened [product-service#2633](../sources/github/product-service/open-prs.md) — the publishing-job Terraform config never set `enable_node_memory_optimization`, so V8's heap was never bounded to the container's memory limit and the cgroup OOM-killer fired before GC could run. Merged 2026-09-07 08:07 UTC, but did **not** hold — see the 09-07 14:29 UTC recurrence above and the real follow-up fix, product-service#2640. Same root cause as the cecil and bestseller OOMs below (09-05/09-06).

```yaml
timestamp: 2026-09-06T10:03:01Z
channel: brand-data-dev-alerts
brand: sOliver
summary: "sOliver/FEED — 12 asset materializations failed (download_images, extract, etc.)"
status: active
linked_issue: null
```
No thread or reaction visible. First occurrence of this failure signature for sOliver (distinct from the earlier enrichment-service 504 pattern that also hit sOliver).

```yaml
timestamp: 2026-09-06T01:25:20Z
channel: brand-data-dev-alerts
brand: cecil
summary: "cecil__FEED__publish_from_map — container exited, exit code 137 (OOM)"
status: active
linked_issue: null
```
No thread or reaction visible. Third brand this window to hit the same publish-step OOM (bestseller 09-05, cecil 09-06, bestseller again 09-07) — all traced to the same publishing-job memory-optimization gap fixed by [product-service#2633](../sources/github/product-service/open-prs.md).

```yaml
timestamp: 2026-09-05T08:47:19Z
channel: brand-data-dev-alerts
brand: bestseller
summary: "bestseller__FEED2__publish_from_map — container exited, exit code 137 (OOM)"
status: active
linked_issue: null
```
No thread or reaction visible. Same job as [BDD-3164](../sources/linear/my-issues.md) (Kushel's own B2B image reprocessing work) but a different, real OOM failure mode — not the previously-explained "exceeded 3h limit" pattern. First of three same-cause OOMs this window, root-caused and fixed via product-service#2633 (see 09-07 entry above).

```yaml
timestamp: 2026-09-05T01:49:00Z
channel: brand-data-dev-alerts
brand: platform (Megatron → Backend)
summary: "Recovered: delays in image processing flow between Megatron and Backend (backend-service-UNPROCESSED-IMAGE-RECEIVED)"
status: self-resolved
linked_issue: null
```
Recovery of the WARN triggered 09-04 17:06 CEST (queue age back under threshold ~10h43m later). Same recurring alert pattern as the 08-20/08-23 occurrences.

```yaml
timestamp: 2026-09-04T15:06:00Z
channel: brand-data-dev-alerts
brand: platform (Megatron → Backend)
summary: Delays in image processing flow between Megatron and Backend (backend-service-UNPROCESSED-IMAGE-RECEIVED), WARN threshold breach
status: recurring
linked_issue: null
```
Same established recurring pattern as 08-20/08-22-23 (queue age over threshold). Recovered ~09-05 01:49 UTC, see entry above.

```yaml
timestamp: 2026-09-03T19:38:06Z
channel: brand-data-dev-alerts
brand: lugina
summary: "lugina/FEED — 11 asset materializations failed (download_images, feed_transform, etc.)"
status: recurring
linked_issue: null
```
Recurred 2026-09-07 19:37 UTC (see entry above) — same asset group and identical 11-failure count both times. No thread or reaction on either occurrence.

```yaml
timestamp: 2026-09-03T14:16:35Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: ECS health check failures detected for galvatron service
status: self-resolved
linked_issue: null
```
Triggered 14:12:35 UTC, recovered ~4 minutes later — same recurring galvatron health-check blip pattern as prior syncs, no thread.

```yaml
timestamp: 2026-09-03T12:01:59Z
channel: brand-data-dev-alerts
brand: ara
summary: "ara__PRICAT__process_images — container exited, exit code 137 (OOM)"
status: active
linked_issue: null
```
No thread or reaction visible. First OOM logged for ara specifically (distinct from the earlier ara credential-id fix, brand-data-pipeline#1795, merged same day).

```yaml
timestamp: 2026-09-03T07:56:05Z
channel: brand-data-dev-alerts
brand: pmeLegend
summary: "pmeLegend/FEED — 11 asset materializations failed: stream aborted reading large XML (Products_20260903085537513.xml)"
status: active
linked_issue: null
```
Kushel replied in-thread with the exact stream-abort error; Aji confirmed this will be fixed by the SAX-based streaming XML parser already in flight ([product-service#2574](../sources/github/product-service/open-prs.md) / [brand-data-pipeline#1744](../sources/github/brand-data-pipeline/open-prs.md), BDD-3159) and linked a related Megatron alert. Directly relevant to [BDD-3150](../support/open.md) (PIPE/Megatron file-size mismatch, which specifically calls out PME Legend PD import) — explained, not yet fixed.

```yaml
timestamp: 2026-09-02T09:02:50Z
channel: brand-data-dev-alerts
brand: bestseller
summary: "bestseller__FEED2__publish_from_map — container exited, exit code 1 (\"App container has no exit code after task stopped\")"
status: active
linked_issue: null
```
No thread or reaction. Different failing step than the known recurring "exceeded 3h run time limit" pattern on this same job (tied to Kushel's [BDD-3164](../sources/linear/my-issues.md) reprocessing) — an ECS task/container-level failure in the publish step, not a runtime-limit issue. Worth watching for a repeat before treating as the same known pattern.

```yaml
timestamp: 2026-09-02T08:23:35Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: ECS health check failures detected for galvatron service
status: self-resolved
linked_issue: null
```
Triggered 08:12:35 UTC, recovered ~11 minutes later — same recurring galvatron health-check blip pattern as prior syncs, no thread.

```yaml
timestamp: 2026-09-02T04:46:33Z
channel: brand-data-dev-alerts
brand: bestseller
summary: bestseller_FEED2 run exceeded 3h time limit
status: self-resolved
linked_issue: BDD-3164
```
Kushel replied in-thread ("This was the image reprocessing") ~2.5h later — expected, tied to his own [BDD-3164](../sources/linear/my-issues.md) B2B image reprocessing work, not a bug. Second occurrence of this same job exceeding its limit (see entry below).

```yaml
timestamp: 2026-09-01T19:06:10Z
channel: brand-data-dev-alerts
brand: platform (analytics asset / analytics_trigger_sensor)
summary: Asset materialization failed for `analytics`, container exit code 1
status: recurring
linked_issue: null
```
Same sensor/asset as the prior 2026-08-20/08-25 occurrences — no thread or reaction this time either.

```yaml
timestamp: 2026-09-01T18:34:01Z
channel: brand-data-dev-alerts
brand: bestseller
summary: bestseller_FEED2 run exceeded 3h time limit
status: self-resolved
linked_issue: BDD-3164
```
Kushel replied in-thread ("Still on the merge step") a minute later — same explanation as the entry above, tied to his BDD-3164 reprocessing work.

```yaml
timestamp: 2026-09-01T17:20:35Z
channel: brand-data-dev-alerts
brand: platform (galvatron ECS)
summary: ECS health check failures detected for galvatron service
status: self-resolved
linked_issue: null
```
Triggered 17:17:36 UTC, recovered ~3 minutes later — brief blip, no thread.

```yaml
timestamp: 2026-08-31T14:31:00Z
channel: brand-data-dev-alerts
brand: sOliver
summary: sOliver__FEED__trigger_enrichment_from_map — container exited, exit code 1
status: active
linked_issue: null
```
Same `AxiosError: Request failed with status code 504` from `DataEnrichmentService.makeRequest` as the entry below — fired again ~15 minutes after Dushan claimed ownership of "enrichment stuff" in-channel, meaning the underlying enrichment-service timeout was still unresolved as of this occurrence.

```yaml
timestamp: 2026-08-31T14:12:56Z
channel: brand-data-dev-alerts
brand: multiple (fabienne, swarovski, ceceba, denham, sOliver)
summary: 5 brands' trigger_enrichment_from_map steps failed, container exit code 1
status: active
linked_issue: null
```
Started right after the ECR/datadog-agent incident below cleared (see next entry) — likely a retry-backlog side effect rather than a recurrence of the same root cause. Aji's reply on the sOliver instance (14:31 UTC) traced it to `AxiosError: Request failed with status code 504` from `DataEnrichmentService.makeRequest` — the internal enrichment service itself was timing out. Dushan claimed ownership ("enrichemnt stuff are mine") at 14:16 UTC, but sOliver failed again with the same error 15 minutes later (see entry above) — not actually resolved by that claim.

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
Run 161bb902 started 13:24 UTC 08-26, still shown active as of last check (now ~7 days past its 3h limit). Zero Slack follow-up across seven sync cycles. The linked Linear ticket, [BDD-3167](../support/recently-closed.md) "Data completely missing - DKcompany" (FD 675069), was resolved 2026-09-01 — but no Slack message in this cycle's window confirmed the underlying run itself was fixed, so the correlation stays unconfirmed and the run's own status here is stale.

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

