---
status: active
last_touched: 2026-09-21
---

# Video download delivery on platform

Carried over from the old Notion "Parked" section. The underlying download support this depends on has shipped: BDD-2567 (FTP/SFTP support for video downloading) is Done, merged via [product-service#2520](../sources/github/product-service/open-prs.md) on 2026-08-31. BDD-2258 (sample XML/CSV with video links + test manufacturer on SFTP) is unblocked and Ready to Start (still not picked up, see `this-week.md`).

**09-15 update:** the delivery-options question this doc tracked has moved past shaping — a Linear project "Video Delivery" now exists with sliced work, and three tickets landed on Kushel this cycle, all Backlog/not started:

- [BDD-3223](../sources/linear/my-issues.md) — Slice 3.2 milestone parent: "Full CSV generation on PCS when video and CSV are selected." Depends on Slice 3.1 (already shipped — the combined archive using the backend's existing CSV) and "N1", which is now its own ticket (below). Advanced to Ready To Start this cycle.
- [BDD-3191](../sources/linear/my-issues.md) — "N1": documenting today's CSV-generation logic, the dependency BDD-3223/3206 reference. New this cycle, Ready To Start.
- [BDD-3205](../sources/linear/my-issues.md) — the PCS-side `CsvGenerationModule`: config-driven (no code change per column/language), artifact stored in S3, signed link returned on the resolve response. Open question in the spec itself: whether the artifact needs its own TTL or can reuse video's 14-day one.
- [BDD-3206](../sources/linear/my-issues.md) — the backend-side routing: when video + data attributes are both requested, send the *full* request to PCS instead of generating the CSV locally; images-plus-data-attributes-without-video stays on the backend untouched.

The routing rule in both specs is explicit that the existing images-only and images+CSV-without-video paths must not be refactored or "unified" as part of this — new path added beside the old one, not a replacement. Tracking moves to `sources/linear/my-issues.md` for status and this file mainly for the shape of the work.

**09-21 update:** first real code movement on Slice 3.2 — [BDD-3206](../sources/linear/my-issues.md) (backend routing) advanced Ready To Start → In Progress today. BDD-3223/3205/3191 remain In Progress, unchanged.
