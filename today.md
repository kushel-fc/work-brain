# Today

1. **Review queue down to 5** (was 6) — [PR #2723](prs/to-review.md) is new (documentation-only, PD Kinesis AsyncAPI events, low-effort). [brand-data-pipeline#1878](prs/to-review.md) (polaris) flipped to Approved this cycle — he's still the sole named reviewer, so his sign-off is what's actually blocking a merge now. [#1871](prs/to-review.md) (swing) is similarly Approved-and-waiting-on-him. [#2683](prs/to-review.md) (swing, product-service half) is untouched, now 3 days stale. [#2514](prs/to-review.md) is the stale draft, now 20 days untouched.
2. **[BDD-2258](sources/linear/my-issues.md) — still not started**, unblocked since BDD-2567 shipped 08-31, now over four weeks since its own last update.
3. **Zero open PRs of his own** — his baldessarini fix ([brand-data-pipeline#1890](prs/mine.md)) merged and appears to have held; see Good news below.
4. **New Triage ticket possibly relevant to a recurring Dagster pattern**: [BDD-3268](support/open.md) ("Update resource size for integration which run for longer than 60 minutes") may be asking for the same fix that would resolve the kultivate/blackstone/falke 3h-run-time-limit alerts in `dagster-alerts/log.md`. Worth a look if picking up Triage work.

## Good news this cycle
- **His own baldessarini fix appears to have worked.** [brand-data-pipeline#1890](prs/mine.md) merged 09-16 09:39 UTC; `baldessarini_FEED` failed once more ~40 min later (likely deploy lag) then stayed clean through the rest of the ~19h capture window — closing out the 22-failed-run incident flagged last cycle. Earmark dismissed, see `_meta/earmarks.md`.
- **holyfashion/beheim resolved too — via a real fix, not just a promise.** He added missing fields to 1Password in-thread 09-16 14:47 UTC; both brands stayed quiet afterward. This lands better than the "next release" commitment he made 09-15. Earmark dismissed.
- **Video Delivery project moved on all four fronts.** BDD-3223/3205/3191 all advanced Backlog/Ready-To-Start → In Progress; BDD-3206 advanced Backlog → Ready To Start. First real movement since the tickets landed.
- **BDD-3251 and BDD-3246 both advanced to In Review.**
- **product-service#2705** (the per-manufacturer lookback-override feature that individually named him last cycle) merged same-day — one less thing in the queue without him having to act.

## Worth noting (not urgent)
- **Workload continues shifting off Kushel's plate onto Syed Muhammad Abu Bakar Wase (abubakarwase).** This cycle: BDD-2539 and BDD-3189 reassigned away from Kushel mid-flight (both were started, not just backlog); BDD-3244 and BDD-3109 picked up from Triage; BDD-3228 picked up and shipped. BDD-2518 was unassigned entirely (moved to On-Hold, no new owner). Six items off his plate in one cycle — worth knowing this is happening in case it signals a capacity conversation.
- **New Dagster issue, not yet his**: `superdry__FEED__publish_from_map` OOM (exit 137) — Chamindu pinged abubakarwase to look into it this morning, unresolved as of this sync.
- **BDD-3245** transferred to the Replenishment team (now RPL-2334) — same destination (oleh.polishchuk) as the BDD-3235/RPL-2280 transfer two cycles ago.
