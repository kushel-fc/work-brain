# Earmarks (signal-triggered reminders)

Resurface something when a **real-world signal** happens, rather than on a date — for the "when X lands/happens, check Y" cases a daily diff alone won't catch (e.g. a ticket that can only close once an unrelated PR merges).

Each earmark has a `Trigger signal` (plain-language condition to watch for during the sync), the `Surface` content (what to check/do/say when it fires), related links, and a `Status` (`active`, `triggered`, `dismissed`).

**When to check** (during Phase 2 of the sync, alongside the normal source diff): scan `Active` earmarks against this cycle's fresh Linear/GitHub/Slack pull. On a match, surface it at the top of `today.md` for that cycle, then move the entry to `Triggered / Dismissed` below (or leave it `active` if it's a recurring watch rather than a one-shot).

## Active

- **Trigger signal**: `brand-data-pipeline#1825` (pmeLegend `experimental.xmSaxParsing` flag) merges
- **Surface**: Check whether [BDD-3150](../sources/linear/my-issues.md) (PIPE/Megatron price-file size mismatch) can now close — the SAX-parser support it was waiting on ([#1744](../archive/prs/brand-data-pipeline.md)) already merged 09-08; #1825 is the last piece that actually flips the flag on for this brand.
- **Related**: [sources/github/brand-data-pipeline/open-prs.md](../sources/github/brand-data-pipeline/open-prs.md)
- **Status**: active

- **Trigger signal**: lugina's `move_images_from_ftp_to_s3_job_sync` failures stop recurring (Munia was expected to update the brand's FTP setup "today," per Kushel's 09-10 10:18 CEST message)
- **Surface**: Confirm the fix actually held before calling this resolved — flip [dagster-alerts/log.md](../dagster-alerts/log.md)'s lugina entry from `active` to `self-resolved`, and check whether `profuomo`'s same-signature failure (09-09) was related or coincidental.
- **Related**: [dagster-alerts/log.md](../dagster-alerts/log.md)
- **Status**: active

## Triggered / Dismissed

_None yet._
