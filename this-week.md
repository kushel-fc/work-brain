# This Week

Everything in [`today.md`](today.md), plus:

> Linear sections are carried forward from 09-25 because Linear wasn't reachable in the 09-28 sync.

## Active work (in progress or newly assigned)
- **Video Delivery Slice 3.2**: [BDD-3223](sources/linear/my-issues.md) / [BDD-3205](sources/linear/my-issues.md) / [BDD-3206](sources/linear/my-issues.md) were In Review at last read. The PR stack is #2753, #2754 and #2767 merged (3/4 on 09-28), with 4/4 not open yet. [BDD-3191](sources/linear/my-issues.md) (N1 docs) was still In Progress, untouched since 09-16. See `shaping/video-download-delivery.md`.
- **[BDD-2258](sources/linear/my-issues.md)**: Sample XML/CSV with video links + test manufacturer on SFTP. High priority, Ready to Start and unblocked since 08-31, but still not started (last updated 08-18).
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board) is still On-Hold, long parked, still assigned to Kushel.

## PR backlog
- **None of his own open.** #2767 merged 09-28. See [prs/mine.md](prs/mine.md).
- **Review queue is 5:** [#2785](prs/to-review.md) (PDS SDK contract, blocks stage 2/4), [#2801](prs/to-review.md) (schumacher PIPE go-live), [#2792](prs/to-review.md) (blueSeven rules), [#1878](prs/to-review.md) (conflicting, likely superseded) and [#2514](prs/to-review.md) (stale draft). #2783 closed without his review.
- **Churn:** product-service went 13 to 11 (5 new: #2802, #2801, #2798, #2792, #2785; #2767, #2784, #2764 merged; #2783, #2773, #2769, #2684 closed). brand-data-pipeline went 17 to 13 (1 new, #1956; #1955, #1951, #1947, #1945 merged; #1872 closed). The 09-25 production releases for both repos merged. brand-data-pipeline#1880/#1879/#1878 (blueSeven, Polaris iteration 1) newly conflict. #1263, #1120, #1058, #1055 and product-service#1737 (none his) still conflict.

## Aged, unassigned Triage tickets (visibility only, not necessarily his; as of 09-25)
11 support-shaped items:
- **3 High:** [BDD-3248](support/open.md) (Stout! Jeans, long-aging), [BDD-3312](support/open.md) (Citizen image deletion, unassigned), [BDD-3311](support/open.md) (Xsensible full sync, back in Triage but still assigned to Oleh).
- [BDD-3005](support/open.md) (Low): open since 2026-08-03, the oldest unassigned item, about eight weeks.
- [BDD-3043](support/open.md) (Medium): open since 2026-08-20, the oldest Medium.
- [BDD-3306](support/open.md) (Medium, CWF GTIN `0` blocking the Showroom stock importer) and [BDD-3309](support/open.md) (Medium, Falke placeholder images).
- [BDD-3241](support/open.md), [BDD-3243](support/open.md), [BDD-3260](support/open.md), [BDD-3310](support/open.md) (all Low).

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): active. Slice 3.2 has 3 of 4 PRs merged; 4/4 is his to open.

## Dagster (recurring patterns to watch)
- **mosMosh_FEED** went over the 3h limit 09-27. It's the first hit since the 09-21 spree ended, now `recurring`.
- **New:** cinque FEED2 `download_images` (exit 1). Check `filename_pattern`, like swing.
- **PDS relay Lambda**: a new monitor that fired 09-25 right after the BDD-3277 PoC merged. Aji deployed a fix and it recovered.
- **`analytics` step failure** hit twice more on 09-25. Long-running, no owner.
- **viaVai image sync** hasn't hung again since the manual stop on 09-25. **galvatron** health-check blips continue, all self-recovering.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
