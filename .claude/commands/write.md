---
description: Draft episodes. Reads canon, drafts, self-audits, saves to file, logs canon. The main loop.
argument-hint: [show] [episode or range, e.g. 4 or 4-8]
allowed-tools: Bash, Read, Write, Edit, Glob, Grep, Skill, Task
---

Draft: **$ARGUMENTS**

If the show or episode is missing, infer it from the most recently modified folder under
`shows/` and say which one you picked. Do not stop to ask unless there is real ambiguity.

## The loop

**1. Load canon.** Read `00-FORMAT-LOCK.md`, `01-SHOW-BIBLE.md`, `02-CHARACTERS.md`,
`03-EPISODE-GRID.md`, `05-VOICE.md`, `04-CANON-LOG.md`, plus the adjacent episodes in
`scripts/`.

**2. Blocking check.** If runtime, word count, or the target episode's grid row is blank:
stop, name exactly what is missing, and offer to run `/grid` first. Do not invent a
format lock. Guessed numbers produce work that has to be thrown away.

**3. Draft.** Launch the `episode-drafter` agent, one invocation per episode. For a range,
launch them **in parallel, in a single message**, one agent per episode. They each get a
clean context window, which is both faster and cheaper than dragging one long thread
across eight episodes.

**4. Save to file.** Write each episode to `shows/<show>/scripts/ep-<nn>.md`. The file is
the deliverable. Never leave the only copy in chat.

**5. Self-audit.** Launch `hook-doctor` on the batch of exits you just wrote. Fix anything
scoring below 7 before showing her. She should see the fixed version, not the first pass.

**6. Log canon.** Append to `04-CANON-LOG.md`: anything you decided that a future session
would need. New character detail, a beat that moved, a lock you had to work around.

**7. Report.**

```
EP <n> to <n> written to shows/<show>/scripts/

<n> episodes. Word counts: <actual> / <target> each.
Hook scores after fixes: <list>
Weakest: EP <n> at <n>/10.

CANON UPDATED: <one line on what was logged>
NEXT: <one action under two minutes>
```

Then paste the episode text, or if it is more than two episodes, paste only the weakest
one and say "the rest are in the files."

## Rules

- One agent per episode. Two half-quality episodes are worth less than one good one.
- Never overwrite an existing `ep-<nn>.md` without saying so first.
- Do not paste a wall of eight episodes into chat. That is unreadable and it burns
  context she paid for. The files are the deliverable.
