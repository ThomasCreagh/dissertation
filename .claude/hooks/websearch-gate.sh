#!/usr/bin/env bash
if grep -q '"agent_type"[[:space:]]*:[[:space:]]*"web-researcher"'; then
  exit 0
fi
echo "WebSearch is reserved for the web-researcher subagent." >&2
exit 2
