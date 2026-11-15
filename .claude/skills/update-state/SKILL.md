---
name: update-state
description: Update ai/state.md, the record of where the project is. Use when something material changes: a decision Tom made, a finding verified in the source, a dead end closed, or a new open question.
---

# Updating the project state

`ai/state.md` holds the project's state: the settled direction, what's been verified in the Zig source, paper findings, open questions and what's been ruled out. `CLAUDE.md` holds the rules.

1. Read `ai/state.md` in full first, so nothing is duplicated or contradicted.
2. Record only what actually happened:
   - Decisions: only ones Tom made, in his framing. Never record a decision he didn't make.
   - Findings: only ones verified against a primary source, with the reference (file and line in the Zig source, or paper and section).
   - Dead ends and open questions: as Tom described them.
3. Update the relevant section rather than appending a new one. Remove or mark anything the change makes out of date.
4. Before writing, show Tom the proposed change and get his confirmation. Don't add interpretation of what a result means.
