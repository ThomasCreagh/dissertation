---
name: update-notes
description: Write down information from this session that Tom wants carried forward into notes/. Run when Tom asks to record what was found or learned.
disable-model-invocation: true
---

# Updating the notes

`notes/` holds Tom's running notes: information gathered in sessions that he wants written down and carried forward. Experiment write-ups use a separate template in `experiments/`; this skill isn't for those.

1. Ask Tom what he wants recorded, or propose a short list of candidate items from this session and let him pick. Record only what he chooses.
2. Read the existing files in `notes/` first. Add to the file that already covers the topic and follow its structure. Don't duplicate or contradict what's there; if something new contradicts an existing note, point it out and ask which is right. Only create a new file if nothing fits, and ask Tom what to call it.
3. Write each item in Tom's framing:
   - **Facts** (what the Zig source does, what a paper or doc says, a version or date): state them plainly, each with its source (file and line, paper and section, or URL). Mark anything not checked against a primary source as `(unverified)`.
   - **His thoughts, interpretations and ideas:** use his words. If he dictated, tidy grammar, order and filler only. Don't add ideas, arguments or conclusions he didn't say.
4. Date each addition (`date '+%Y-%m-%d'`).
5. Show Tom exactly what will be added or changed and get his confirmation before saving.
6. If any note will feed into the dissertation, remind him it may need an `AI ref`.
