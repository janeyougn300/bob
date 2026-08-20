---
description: End of session. Writes everything decided into canon files and commits. Run this before you close the tab.
argument-hint: [optional note]
allowed-tools: Bash, Read, Write, Edit, Glob, Grep
---

Close out this session. Note: **$ARGUMENTS**

**This is the command that saves you money.** Context dies when the session ends. If a
decision only exists in scrollback, the next session re-derives it, sometimes differently,
and you pay for the re-deriving and then pay again for fixing the contradiction.

## Steps

1. Look back over this whole session. Find everything that a future session would need
   and does not currently have in a file:
   - Decisions about story, structure, characters, format
   - Anything that changed in canon
   - Anything explicitly rejected, and why (so it does not get re-proposed)
   - Good material that was generated but not used

2. Write each to its home:
   - Story and structure decisions → `shows/<show>/04-CANON-LOG.md`, newest at the top,
     using the DECIDED / BECAUSE / AFFECTS format
   - Character detail → `02-CHARACTERS.md`
   - Format changes → `00-FORMAT-LOCK.md`, and add a row to its lock log
   - Grid changes → `03-EPISODE-GRID.md`
   - Voice discoveries, a phrasing that landed, a ban worth adding → `05-VOICE.md` or
     `brain/voice-profile.md`
   - Unused good ideas, hooks, titles → `brain/keepers.md`

3. Commit and push:
   ```bash
   git add -A
   git commit -m "<what actually changed this session>"
   git push -u origin claude/writing-agent-research-xd0bcm
   ```
   Retry a failed push up to 4 times with backoff: 2s, 4s, 8s, 16s.

4. Report:

```
SAVED.

CANON UPDATED
- <file>: <what was added>

KEEPERS ADDED: <n>
COMMITTED: <the message>

WHERE YOU LEFT OFF: <one or two lines, written for a future session that remembers
nothing. Name the show, the episode, and the one open question.>

NEXT SESSION: start with "<the exact thing to type>"
```

## Rules

- Write the "where you left off" note for a stranger. Because next session, that is who
  is reading it.
- Do not summarize the session back to her in chat. She was there. The files are the point.
- If nothing worth saving happened, say that in one line and still commit any file changes.
