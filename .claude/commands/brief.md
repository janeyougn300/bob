---
description: Start of session. Tells you where you left off and what to do next. Run this first.
argument-hint: [optional show name]
allowed-tools: Bash, Read, Glob, Grep
---

Where did we leave off? Show: **$ARGUMENTS**

## Steps

1. `git log --oneline -10` for recent work.
2. Find the most recently modified show folder, or use the one named above.
3. Read the top three entries of its `04-CANON-LOG.md`.
4. Check `03-EPISODE-GRID.md` for blank cells.
5. List what is in `scripts/` and find the highest episode number written.
6. Check `00-FORMAT-LOCK.md` for blank blocking fields.

## Report

Keep it under fifteen lines. This is an orientation, not a report.

```
SHOW: <name>
LAST WORKED: <date>, <what happened>

WRITTEN: eps <n> to <n>. Next unwritten: ep <n>.
GRID: <n> of <n> cells filled. Holes at eps <list>.
BLOCKED BY: <any blank format-lock field, or "nothing">

OPEN QUESTION FROM LAST TIME: <from the canon log, or "none">

DO THIS NEXT: <one command, copy-pasteable>
```

## Rules

- One recommended next action, not a menu. If there are genuinely two good options,
  give two, recommendation first.
- If nothing has been started yet, say so and point at `/new-show`.
- No preamble. Open with `SHOW:`.
