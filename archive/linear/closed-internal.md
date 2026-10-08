# Closed — internal (non-FD)

Kushel's own internal/tech-debt tickets that shipped, without an FD reference — so they don't belong in `support/recently-closed.md` (FD-sourced only) but shouldn't just vanish from `sources/linear/my-issues.md` silently either. Never deleted.

```yaml
id: BDD-2258
title: Sample XML/CSV with video links + test manufacturer on SFTP
priority: High
closed: 2026-10-08
url: https://linear.app/fashioncloud/issue/BDD-2258/sample-xmlcsv-with-video-links-test-manufacturer-on-sftp
```
Canceled (not Done) 10-08 07:59 UTC. Had sat at Ready To Start since BDD-2567 shipped 08-31, last touched 08-18. No reason visible in the fields pulled.

```yaml
id: BDD-3223
title: "Slice 3.2 — Full CSV generation on PCS when video and CSV are selected"
priority: No priority
closed: 2026-10-05
url: https://linear.app/fashioncloud/issue/BDD-3223/slice-32-full-csv-generation-on-pcs-when-video-and-csv-are-selected
```
Slice 3.2 milestone parent. Done 10-05 18:54 UTC, after its last child BDD-3206 closed. The same minute he opened backend#7066 (BDD-3223: serve every initiator's CSV through one POST and `GET /downloads/:id`), which is still open, see [`prs/mine.md`](../../prs/mine.md).

```yaml
id: BDD-3206
title: "3.2 Backend — Route the full request to PCS and append its CSV"
priority: No priority
closed: 2026-10-05
url: https://linear.app/fashioncloud/issue/BDD-3206/32-backend-route-the-full-request-to-pcs-and-append-its-csv
```
Done 10-05 11:39 UTC, when he merged backend#7043. irembbt approved it 10-05 11:00 UTC, eleven days after her Changes Requested. backend#7048 (getCsvContent sort fix) merged alongside it.

```yaml
id: BDD-3205
title: "3.2 PCS — CSV generation module"
priority: No priority
closed: 2026-09-28
url: https://linear.app/fashioncloud/issue/BDD-3205/32-pcs-csv-generation-module
```
Video Delivery Slice 3.2. Done 09-28 14:17 UTC, about two hours after the last product-service PR in the stack (#2806, 4/4) merged.

```yaml
id: BDD-3191
title: "N1 — Document today's CSV generation logic"
priority: No priority
closed: 2026-09-28
url: https://linear.app/fashioncloud/issue/BDD-3191/n1-document-todays-csv-generation-logic
```
Video Delivery "N1" docs prerequisite. It sat In Progress from 09-16 and was closed Done 09-28 14:17 UTC, together with BDD-3205.

```yaml
id: BDD-1721
title: Fix images failing silently with no error message captured
priority: Medium
closed: 2026-09-11
url: https://linear.app/fashioncloud/issue/BDD-1721/fix-images-failing-silently-with-no-error-message-captured
```
Tech Debt label. Was the long-standing "standing reminder" in `this-week.md`, untouched since 2026-05-21 (over 3.5 months) — finally shipped.

```yaml
id: BDD-1417
title: GET v2/products/media/images/:id Error Rate Spike - 16k errors/day since Jan 9th
priority: Low
closed: 2026-09-11
url: https://linear.app/fashioncloud/issue/BDD-1417/get-v2productsmediaimagesid-error-rate-spike-16k-errorsday-since-jan
```
Old internal ticket, resurfaced/touched 09-06 after being dormant — now shipped.
