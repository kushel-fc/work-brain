#!/bin/bash
# Blocks `git add -A`, `git add .`, and `git add --all` to enforce explicit,
# by-path staging (see CLAUDE.md Commit hygiene).

input=$(cat)
command=$(echo "$input" | grep -o '"command"[[:space:]]*:[[:space:]]*"[^"]*"' | sed 's/.*"command"[[:space:]]*:[[:space:]]*"//;s/"$//')

if echo "$command" | grep -qE '\bgit\s+add\b.*(-A\b|--all\b)' || echo "$command" | grep -qE '\bgit\s+add\s+\.(\s|$)'; then
  echo "Blocked: 'git add -A' / 'git add .' / 'git add --all' are disallowed. Stage files explicitly by path (see CLAUDE.md Commit hygiene)." >&2
  exit 2
fi

exit 0
