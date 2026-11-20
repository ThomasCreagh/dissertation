---
name: end-session
description: End-of-session checkpoint. Run when Tom is finishing a working session.
disable-model-invocation: true
---

# End of session

1. Use the timestamps of Tom's messages to say roughly how long the session ran and which areas took the time. If one area took most of it, note that and ask whether it's still serving the report. Ask; don't instruct.
2. Follow the update-todo skill.
3. Check whether anything material happened that belongs in `research/ai/state.md`. If so, follow the update-state skill.
4. If there were notable findings, remind Tom to run `/update-notes`.
5. Run `git status --short` and remind Tom to commit if there are changes. Don't commit for him unless he asks.
6. Keep the whole checkpoint short.
