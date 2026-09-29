# This Week

Everything in [`today.md`](today.md), plus:

## Active work (in progress or newly assigned)
- **Video Delivery Slice 3.2**: [BDD-3223](sources/linear/my-issues.md) / [BDD-3206](sources/linear/my-issues.md) are In Review. The product-service stack is complete (#2753, #2754, #2767, #2806), and BDD-3205 and BDD-3191 (N1) went Done 09-28. The backend side ([backend#7043](prs/mine.md), [#7048](prs/mine.md)) is what's left. See [shaping](shaping/video-download-delivery.md).
- **[BDD-2258](sources/linear/my-issues.md)**: Sample XML/CSV with video links + test manufacturer on SFTP. High priority, Ready to Start and unblocked since 08-31, still not started (last updated 08-18).
- **[BDD-2406](sources/linear/my-issues.md)**: internal tech-debt item, Ready To Start, untouched since 09-06.

## Off his plate (standing, not this cycle)
- **[BDD-2079](sources/linear/my-issues.md)** (Auth0 SSO for DES Bull Board): still On-Hold, long parked, still assigned to Kushel.

## PR backlog
- **None of his own open in the two tracked repos.** #2806 (4/4) merged 09-28. The backend PRs are in [prs/mine.md](prs/mine.md).
- **Review queue is 3:** [#2808](prs/to-review.md) (blocks blueSeven), [#1969](prs/to-review.md) (credential-key cleanup) and [#2514](prs/to-review.md) (stale draft, 32 days).
- **Churn:** product-service went 11 to 8. New: #2813, #2809, #2808. Merged: #2785, #2798, #2801, plus #2806, #2812, #2810, #2805, #2804 and #2803, which opened and merged inside the window. Closed: #2802, #2792, #1737, #2811, #2807. brand-data-pipeline went 13 to 14. New: #1972, #1969. Merged: #1971, #1970, #1968, #1967. Closed: #1878. brand-data-pipeline#1956 (Hugo Boss adjustments) newly conflicts. #1880, #1879, #1263, #1120, #1058 and #1055 (none his) still conflict. Nothing on product-service conflicts.

## Aged, unassigned Triage tickets (visibility only, not necessarily his)
- **None.** Triage holds only BDD-3305 and BDD-3325, both internal feature requests that Dushan owns. Outside Triage, BDD-3326 ("Refactor event-definitions into a published data contract", High, Ready To Start) was created 09-28 with no assignee. It's part of the PDS work, not support.

## Shaping (waiting on his input)
- [Video download delivery](shaping/video-download-delivery.md): active. The product-service side of Slice 3.2 is done, and the backend review is the remaining step.

## Dagster (recurring patterns to watch)
- **cinque FEED2 `download_images`** has now failed twice (09-27, 09-28) with no thread. Status is `recurring`. Check `filename_pattern` and the credential config.
- **dorisStreich FEED** failed twice 09-28, just before its PIPE go-live flip.
- **mosMosh_FEED** has been quiet since the 09-27 run-limit hit, which is still `recurring`.
- **`analytics` step failure** hit again 09-28. Long-running, no owner.
- Full log: [`dagster-alerts/log.md`](dagster-alerts/log.md).
