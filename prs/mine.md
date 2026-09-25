# PRs — mine

PRs Kushel opened, across both repos. Populated on sync.

**One open PR, now with 7 unanswered human review threads.** The Video Delivery Slice 3.2 stack (BDD-3205/BDD-3223) is unchanged in shape: #2753 (1/4) and #2754 (2/4) merged, #2767 (3/4) open, 4/4 not opened yet. Closed/merged ones are in [`archive/prs/product-service.md`](../archive/prs/product-service.md).

```yaml
number: 2767
repo: product-service
title: "3/4: Add PCS CSV generation module"
author: kushel-fc
state: open
mergeable_state: mergeable
review_state: awaiting-first-review
requested_reviewers: [julsjacinto, alirezaMoazenFashion]
updated: 2026-09-24
url: https://github.com/fashioncloud/product-service/pull/2767
```
CodeRabbit approved 09-23 20:00 UTC after he answered its six threads. On 09-24 two human reviewers commented, with no approve or request-changes verdict:
- **Chamindu36** (11:34 to 11:36 UTC, `csv-generation.service.ts`): use proper TSDoc, and move the helper functions out of the service class into their own file.
- **irembbt** (12:22 to 12:32 UTC): should the multi-download DTO carry `language` (asked twice); does one failing language fail the whole "all languages" generation; confirm the filename date format matches backend's CSV. Plus a top-level question on where `multi-download/resolve` gets called (answer: the next PR, 4/4).

He hasn't replied to any of them yet. Still `BLOCKED` on a human approval.

His earlier self-closed PR (#2545, GTIN cleanup batch) is still parked in [`archive/prs/product-service.md`](../archive/prs/product-service.md), unrevisited.
