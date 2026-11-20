---
name: ai-log
description: Append the required entry to ai/ai-log.md. Use after every response in this repo, before ending the turn, and whenever AI-generated material is added to the dissertation's own work (code, scripts, figures).
---

# Writing the AI log entry

The log is the evidence trail for the TCD GenAI declaration. Keep it faithful and complete.

## Steps

1. Read the last entry in `research/ai/ai-log.md` to get the previous entry number. The new number is that plus one (start at 0 if the file is empty).
2. Get the timestamp with `date '+%Y-%m-%d %H:%M'`.
3. Append one entry using exactly this format:

```
## Entry <n>: <YYYY-MM-DD HH:MM>
### Model and version:
<the AI model and version used>
### Prompt:
<Tom's prompt, word for word>
### What AI did:
#### Commands run
<each command exactly as run>
#### Answer
<the text answer given, verbatim>
### Files
#### Created
<files created, with a git-diff-style summary of contents>
#### Changed
<files changed, with a git-diff-style summary of what changed>
#### Removed
<files removed>
### Sources
<docs, web pages, Zig source files, papers used>


```

## Rules

- If the web-researcher was used, list the sources it reported under Sources and add web searches: see ai/web-log.md and .claude/hooks/web-log.sh.
- Copy the prompt exactly. Do not paraphrase, correct or tidy it. For a large paste, write `[<description of what was pasted>]` instead.
- If the prompt quotes material from `research/sources/confidential/`, replace only that quoted text with `[redacted: confidential]`. Under Sources, write `confidential CVP guidance (not reproduced)`. Never quote, summarise or paraphrase confidential material anywhere in the log.
- Add a URL to `links.md` only when I confirm I'm using it, web-researcher results go in `seen.md` automatically.
- If something produced goes into the work itself (experiment code, a script, a figure), add a header comment in that file: `AI ref: <entry number>`, and say so plainly in the answer.
- Media that can't be captured in text goes in `research/ai/files/`, referenced by path in the entry.
- Writing the entry is part of the request, not a separate entry.
- Do not log an `undo` command; use the ai-undo skill instead.
