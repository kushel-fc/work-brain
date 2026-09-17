# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **[BDD-3223](sources/linear/my-issues.md) / [BDD-3205](sources/linear/my-issues.md) / [BDD-3191](sources/linear/my-issues.md)** — "Video Delivery" project, Slice 3.2 (PCS-generated CSV for video downloads). All three advanced to In Progress this cycle. **[BDD-3206](sources/linear/my-issues.md)** (same project) advanced to Ready To Start. See `shaping/video-download-delivery.md`.
- **[BDD-3251](sources/linear/my-issues.md)** — Bybar Delete gtins and refresh Data Manager, now In Review (was In Progress).
- **[BDD-3246](sources/linear/my-issues.md)** — Kultivate Becosoft image issue, now In Review (was In Progress).
- **[BDD-3237](sources/linear/my-issues.md)** — Superdry deleting one image, In Review. No change.
- **[BDD-2258](sources/linear/my-issues.md)** — Sample XML/CSV with video links + test manufacturer on SFTP, Ready to Start, unblocked since BDD-2567 shipped 08-31 — still not started.
- **[BDD-3117](sources/linear/my-issues.md)** — "FW: PME stockbase", In Progress. No change.
- **[BDD-3252](sources/linear/my-issues.md)** — Off-Boarded Brands Deletion, To Do, not FD-referenced. No change.
- **[BDD-2406](sources/linear/my-issues.md)** — internal tech-debt item, Ready To Start, untouched.

## Off his plate this cycle
- **[BDD-2539](sources/linear/my-issues.md)** (Bilder-API render limit) and **BDD-3189** (sketch tag info) both reassigned away from Kushel to abubakarwase mid-flight, both still open elsewhere.
- **BDD-2518** (Buffer→Stream tech debt) unassigned entirely, moved to On-Hold — nobody's picked it up yet.
- **BDD-2079** (Auth0 SSO for DES Bull Board) remains On-Hold, long-parked, still assigned to Kushel — unlike 2518, this one wasn't dropped.

## PR backlog
- **Zero open PRs of his own** — his baldessarini fix (#1890) merged and held. See `today.md`.
- **Review queue down to 5** — see `today.md` for detail; [PR #2514](prs/to-review.md) is the stale one, [#1878](prs/to-review.md)/[#1871](prs/to-review.md) are both Approved-and-waiting-on-him.
- Brand-migration PR wave continues to clear: swing/dorisStreich/blueSeven/fynchHatton/milestone/schumacher/polaris pairs still working through review; authenticStyle, vanDeVelde, cinque, and the lookback-override pair all resolved (merged or closed) this cycle. Net PR count down sharply on both repos (product-service 18→14, brand-data-pipeline 22→16).

## Aged, unassigned Triage tickets (visibility only — not necessarily his)
10 support-shaped items (was 13) — BDD-3244/BDD-3109 picked up by abubakarwase, BDD-3228 shipped, BDD-3245 transferred to Replenishment. Two new (BDD-3266, BDD-3268):
- [BDD-3005](support/open.md) (Low) — open since 2026-08-03, oldest unassigned item, now six-plus weeks.
- [BDD-3043](support/open.md) (Medium) — open since 2026-08-20, oldest Medium.
- [BDD-3238](support/open.md) (Medium) — 09-09.
- [BDD-3241](support/open.md) (Low) — already carries an assignee (oleh.polishchuk) despite Triage status.
- [BDD-3243](support/open.md) (Low) — 09-10.
- [BDD-3259](support/open.md) (Medium), [BDD-3260](support/open.md) (Low) — landed 09-14.
- [BDD-3266](support/open.md) (Medium), [BDD-3268](support/open.md) (Low) — new this cycle; BDD-3268 possibly related to the run-time-limit Dagster pattern, see `today.md`.
- **[BDD-3248](support/open.md) — sole remaining High-priority item, aging a fourth cycle now.**

## Shaping — waiting on his input
- [Video download delivery](shaping/video-download-delivery.md) — active; all four Slice 3.2 tickets moved forward this cycle for the first time. See Active work above.

## Dagster — recurring patterns to watch
- **Resolved: baldessarini_FEED** — his own fix merged and held after one post-merge blip. See `today.md`.
- **Resolved: holyfashion/beheim move_images failures** — fixed via a 1Password credential update, not the "next release" he'd promised. See `today.md`.
- **New: superdry_FEED OOM on publish_from_map** — Chamindu pinged abubakarwase this morning, not yet resolved.
- **New: gardeur/FEED2** joined the "multiple asset materializations failed" brand list, single occurrence so far.
- **New: zizzi_FEED failing on a different step** (`trigger_enrichment_from_map`) than its known recurring pattern (`download_images`/`extract`/`feed_transform`) — same no-owner situation.
- **PDS Kinesis/stream-publish throttling — two more self-resolving flares**, one hitting metric value 150 (on the higher end seen). Root cause (shard capacity) still not fully holding.
- **`analytics_trigger_sensor` — still recurring**, no owner or root cause in-channel.
- **kultivate/blackstone/falke 3h-run-time-limit alerts quiet this window** — but see BDD-3268 in Triage, possibly the fix for this whole pattern.
- **ECS `galvatron` health-check flapping, Datadog log-index quota, extract-job string-length alert** — all quiet this window, no new occurrences.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
