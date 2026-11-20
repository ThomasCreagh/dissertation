#!/usr/bin/env bash
input=$(cat)
cd "$CLAUDE_PROJECT_DIR" || exit 0
tool=$(jq -r '.tool_name' <<<"$input")
agent=$(jq -r '.agent_type // "main"' <<<"$input")
ts=$(date '+%Y-%m-%d %H:%M')

case "$tool" in
  WebSearch)
    detail="query: $(jq -r '.tool_input.query' <<<"$input")" ;;
  WebFetch)
    url=$(jq -r '.tool_input.url' <<<"$input")
    detail="url: $url"
    grep -qF -- "$url" research/sources/public/seen.md 2>/dev/null \
      || echo "- $url" >> research/sources/public/seen.md ;;
  *) exit 0 ;;
esac

printf -- '- %s | %s | %s | %s\n' "$ts" "$agent" "$tool" "$detail" >> research/ai/web-log.md
exit 0
