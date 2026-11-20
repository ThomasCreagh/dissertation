---
name: ai-undo
description: Revert the last logged action and remove its ai-log entry. Use when Tom types "undo", "undo that", "scratch that", "ignore that" or similar.
---

# Undo the last action

1. Read the most recent entry in `research/ai/ai-log.md`.
2. Revert exactly the file changes listed in it under Files:
   - Created files: delete them.
   - Changed files: restore the previous content (use `git diff` / `git restore` where the change is uncommitted; otherwise reverse the recorded change).
   - Removed files: restore them from git.
3. If reverting would touch anything outside `experiments/`, `research/ai/`, `research/notes/`, `research/deliverables/` or `research/sources/public/links.md`, stop and ask Tom first.
4. Delete that entry from `research/ai/ai-log.md`. The next logged action reuses its number.
5. Tell Tom in one or two lines what was reverted.

Do not log the undo itself.
