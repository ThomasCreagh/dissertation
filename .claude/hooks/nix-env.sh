#!/usr/bin/env bash
[ -n "$CLAUDE_ENV_FILE" ] || exit 0
cd "$CLAUDE_PROJECT_DIR" || exit 0

tmp=$(mktemp)
before=$(export -p | sort)
nix develop --command bash -c 'export -p > "$1"' _ "$tmp" >/dev/null 2>&1 || { rm -f "$tmp"; exit 0; }
after=$(sort "$tmp")
rm -f "$tmp"

comm -13 <(echo "$before") <(echo "$after") \
  | grep -vE '^declare -x (TMP|TMPDIR|TEMP|TEMPDIR|NIX_BUILD_TOP|SHLVL|PWD|OLDPWD|_)=' \
  >> "$CLAUDE_ENV_FILE"
exit 0
