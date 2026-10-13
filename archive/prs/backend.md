# backend — archived PRs

His own backend PRs that were listed in `prs/mine.md` (backend isn't one of the two tracked repos), moved here once merged or closed. Never deleted.

```yaml
number: 7085
title: "BDD-3223: Generate the summary-bar CSV on PCS next to video, report CSV omission reasons and give downloads 100 s for PCS"
author: kushel-fc
state: closed
merged: true
closed: 2026-10-12
url: https://github.com/fashioncloud/backend/pull/7085
```
Opened 10-09 15:04 UTC. Was conflicting at the 10-12 sync; the conflict got resolved, it was approved by dwiajik and irembbt, then merged by him 10:27 UTC, right after product-service#2916 (the deploy order held). Retitled at merge (was "Report CSV omission reasons and give PCS two minutes to resolve a download"; the timeout is now 100 s). In production via backend#7088.

```yaml
number: 7088
title: "Production Deployment"
author: kushel-fc
state: closed
merged: true
closed: 2026-10-12
url: https://github.com/fashioncloud/backend/pull/7088
```
His production deployment PR carrying only #7085. Merged by aledileo 15:08 UTC.

```yaml
number: 7066
title: "BDD-3223: Serve the CSV of every download initiator through one POST and GET /downloads/:id"
author: kushel-fc
state: closed
merged: true
closed: 2026-10-07
url: https://github.com/fashioncloud/backend/pull/7066
```
Opened 10-05 18:54 UTC against `staging`, merged 10-07 07:07 UTC. Approved by dwiajik and irembbt. abirprantofc was still a requested reviewer at merge.

```yaml
number: 7048
title: "fix(getCsvContent): sort images before resolving filenames, not after"
author: kushel-fc
state: closed
merged: true
closed: 2026-10-05
url: https://github.com/fashioncloud/backend/pull/7048
```
dwiajik approved it 09-23. He merged it 10-05 11:40 UTC, alongside #7043, after it sat approved for twelve days.

```yaml
number: 7043
title: "BDD-3206: Route video+CSV requests to PCS and append its CSV to the archive"
author: kushel-fc
state: closed
merged: true
closed: 2026-10-05
url: https://github.com/fashioncloud/backend/pull/7043
```
The backend half of Video Delivery Slice 3.2. aledileo approved 09-23. irembbt requested changes 09-24 and approved 10-05 11:00 UTC. It had picked up a conflict with `staging` by the 10-05 sync. He resolved it and merged 10-05 11:39 UTC, and BDD-3206 went Done the same minute.
