# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 3.2**: [BDD-3223](sources/linear/my-issues.md) / [BDD-3205](sources/linear/my-issues.md) / [BDD-3206](sources/linear/my-issues.md) are In Review. [BDD-3191](sources/linear/my-issues.md) (N1 docs) is still In Progress, untouched since 09-16. The PR stack is #2753 and #2754 merged, #2767 (3/4) with human review comments to answer, and 4/4 not open yet. See `shaping/video-download-delivery.md`.
- **[BDD-2258](sources/linear/my-issues.md)**: Sample XML/CSV with video links + test manufacturer on SFTP. High priority, Ready to Start and unblocked since 08-31, but still not started (last updated 08-18).
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board) is still On-Hold, long parked, still assigned to Kushel.

## PR backlog
- **One open PR of his own:** [product-service#2767](prs/mine.md) (3/4), 7 unanswered human review threads. See `today.md`.
- **Review queue is 3:** [#2783](prs/to-review.md) (new, already approved by three people), [#1878](prs/to-review.md) (polaris iteration 1, possibly superseded by #1951), [#2514](prs/to-review.md) (stale draft). He approved #1945 and #2764 (BDD-3273) this cycle; #2683 (swing) closed.
- **Churn:** product-service stayed at 13 (4 new: #2784, #2783, #2773, #2769; #2738 merged; #2692, #2690, #2683 closed) and brand-data-pipeline stayed at 17 (3 new: #1955, #1951, #1947; #1876, #1875 merged; #1869 closed). Both repos have a 09-25 production-release PR open (#2784, #1955). Four old pipeline PRs (#1263, #1120, #1058, #1055, none his) and product-service#1737 still conflict.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
11 support-shaped items (was 9):
- **3 High now:** [BDD-3248](support/open.md) (Stout! Jeans, aging a ninth cycle), [BDD-3312](support/open.md) (new 09-25, Citizen image deletion, unassigned), [BDD-3311](support/open.md) (Xsensible full sync, back in Triage but still assigned to Oleh).
- [BDD-3005](support/open.md) (Low): open since 2026-08-03, the oldest unassigned item, nearly eight weeks.
- [BDD-3043](support/open.md) (Medium): open since 2026-08-20, the oldest Medium.
- [BDD-3306](support/open.md) (Medium, CWF GTIN `0` blocking the Showroom stock importer) and [BDD-3309](support/open.md) (Medium, Falke placeholder images): new this week.
- [BDD-3241](support/open.md) (Low): already has an assignee (oleh.polishchuk) despite being in Triage.
- [BDD-3243](support/open.md), [BDD-3260](support/open.md), [BDD-3310](support/open.md) (all Low): no material change / routine.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): active. Slice 3.2 is in review with 2 of 4 PRs merged.

## Dagster (recurring patterns to watch)
- **viaVai image sync**: the run that exceeded the 3h limit 09-23 was stopped manually after about 43h. Cause unknown; watch the next scheduled run.
- **New this cycle:** woden/FEED and stateOfArt/PRICAT (11 asset failures each), and swing `download_images` (config fixed by Abir).
- **`analytics` step failure** came back 09-25 after 8 quiet days. Long-running, no owner.
- **riani `trigger_enrichment_from_map`**, **sOliver FEED2 `map`** and **digel/FEED** didn't recur. All still `active`, no fix posted.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
