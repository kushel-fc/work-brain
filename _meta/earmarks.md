# Earmarks (signal-triggered reminders)

Resurface something when a **real-world signal** happens, rather than on a date — for the "when X lands/happens, check Y" cases a daily diff alone won't catch (e.g. a ticket that can only close once an unrelated PR merges).

Each earmark has a `Trigger signal` (plain-language condition to watch for during the sync), the `Surface` content (what to check/do/say when it fires), related links, and a `Status` (`active`, `triggered`, `dismissed`).

**When to check** (during Phase 2 of the sync, alongside the normal source diff): scan `Active` earmarks against this cycle's fresh Linear/GitHub/Slack pull. On a match, surface it at the top of `today.md` for that cycle, then move the entry to `Triggered / Dismissed` below (or leave it `active` if it's a recurring watch rather than a one-shot).

## Active

- **Trigger signal**: `brand-data-pipeline#1825` (pmeLegend `experimental.xmSaxParsing` flag) merges
- **Surface**: Check whether [BDD-3150](../sources/linear/my-issues.md) (PIPE/Megatron price-file size mismatch) can now close — the SAX-parser support it was waiting on ([#1744](../archive/prs/brand-data-pipeline.md)) already merged 09-08; #1825 is the last piece that actually flips the flag on for this brand.
- **Related**: [sources/github/brand-data-pipeline/open-prs.md](../sources/github/brand-data-pipeline/open-prs.md)
- **Status**: active

## Triggered / Dismissed

- **Trigger signal**: lugina's `move_images_from_ftp_to_s3_job_sync` failures stop recurring (Munia was expected to update the brand's FTP setup "today," per Kushel's 09-10 10:18 CEST message)
- **Surface**: Confirm the fix actually held before calling this resolved.
- **Related**: [dagster-alerts/log.md](../dagster-alerts/log.md)
- **Status**: triggered 2026-09-11 — lugina's last failure was 09-10 14:18 UTC, ~19h quiet as of this sync; `profuomo` (same signature) also went quiet after one more recurrence 09-10. No explicit in-channel confirmation the fix landed, just absence of further failures — worth one more look next sync before treating as fully closed.
