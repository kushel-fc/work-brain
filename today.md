# Today

1. **Good news, unconfirmed: the mosMosh/ara OOM spree looks like it's finally stopped.** After 4 days and 45+ occurrences (mosMosh 21+, ara 26+), both went quiet after 09-21 ~08:53 UTC — zero further occurrences in the ~24h since. [BDD-3268](support/open.md) (the resource-size-bump ticket that looked like the fix) is still In Progress, not shipped, so this can't be confidently attributed yet — tracked as an active earmark, see `_meta/earmarks.md`.
2. **riani's `trigger_enrichment_from_map` recurred 4 more times** (09-21), despite Dushan saying "will check trigger enrichment" back on 09-17. Still unfixed, no new thread activity.
3. **Review queue down to 4** (was 5) — Kushel reviewed and approved [product-service#2748](sources/github/product-service/open-prs.md) himself this morning (09-22 08:45 UTC); dwiajik is the only reviewer left outstanding there. Remaining: [#2683](prs/to-review.md) (now over a week stale), [#2514](prs/to-review.md) (25 days stale), [brand-data-pipeline#1878](prs/to-review.md)/[#1871](prs/to-review.md) (both Approved-and-waiting-on-him — #1871's mergeable state also cleared to clean this cycle).
4. **[BDD-2258](sources/linear/my-issues.md) — still not started**, unblocked since BDD-2567 shipped 08-31, now over five weeks since its own last update.
5. **Zero open PRs of his own** — unchanged.

## Worth noting (not urgent)
- **Very quiet Linear cycle** — zero changes to his assigned issues or the Triage backlog (both identical to last sync).
- **product-service#1737's `mergeable_state` resolved from months of `unknown` flapping to a real merge conflict.** Not his PR (sole reviewer julsjacinto), but a real signal on a two-month-stale PR.
- **Datadog log-index quota hit its warning-then-full-quota cycle a sixth time**, self-resolved on quota reset as usual — still no permanent fix in place.
- **PR churn**: product-service 18→16 (one new bot PR, three merged: #2742, #2728, #2622), brand-data-pipeline 17→18 (one new, "sizes" #1929, not his).
