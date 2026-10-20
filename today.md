# Today

1. **Get his own [#3002](prs/mine.md) unblocked** (video reprocessing 2/4, BDD-3496). dwiajik and Chamindu36 approved and all checks are green, but it's `BLOCKED` with julsjacinto requested, probably as a new code owner after the CODEOWNERS change #3000 (not confirmed). PRs 3 and 4 (BDD-3497, BDD-3498) stack on it.
2. **Watch the release order for video reprocessing.** His product-service#2996 (1/4) and brand-data-pipeline#2074 (publish after `download_videos`) both merged 10-19 and neither is in a release yet. #2996 has to deploy first. Earmarked, see [`_meta/earmarks.md`](_meta/earmarks.md).
3. **Review dushansilva's [product-service#2960](prs/to-review.md)** (Willen mapping rules). Five days, no human review, and he and irembbt are the only humans requested. dushansilva is still shipping Willen pipeline fixes (#2072 on 10-19).

## Worth noting (not urgent)
- **Slice 5 is closed.** BDD-3213 Done and BDD-3216 (delivery measurement) Canceled on 10-19, so the intent-vs-delivery question no longer blocks anything. His #2981 (CSV and PDS-call speed-ups) is **in production** since release #2999 (10-20 07:58 UTC). The PCS p95 monitor he muted for it is still muted as far as the sources show. See [shaping](shaping/video-download-delivery.md).
- **Review queue down to two.** He approved #2983. dwiajik's deletion pair (#2977, brand-data-pipeline#2067) merged without his review, and Irem closed #2930 unmerged.
- **fynchHatton's image-sync schedule is running again.** He disabled it 09-30 over the brand's FTP problem; it ran from the schedule 10-19 and hung 3h. Who turned it back on isn't visible. See the [Dagster log](dagster-alerts/log.md).
- **Support:** new [BDD-3501](support/open.md) (Low): Oleh Polishchuk reports the image downloader never closes its FTP/SFTP clients. Same area as his BDD-3449 "reuse FTP connections" item. ftcCashmere's credential fix (#2069) reached production 10-20 07:59 UTC, after a tenth failure (earmarked).
- **Dagster:** a 09:07 to 09:18 UTC cluster 10-19 (analytics twice with an SSM 500, lerros, liebeskind, unitedLegwear, blueSeven FTP timeout, PDS publish), mostly "no logs". PDS publish fired again 21:50 UTC on a credentials error (dwiajik's #3003, draft). New vanDeVelde OOM (fix #2079 merged). adidas seventh, carsJeans fourteenth, falke again.
