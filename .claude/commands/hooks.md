---
description: Score and rewrite hooks, cold opens and episode exits. Checks variance across the batch.
argument-hint: [show] [episode range, or "all"]
allowed-tools: Read, Write, Edit, Glob, Grep, Skill, Task
---

Score hooks for: **$ARGUMENTS**

1. Launch the `hook-doctor` agent on the range. For more than six episodes, split across
   parallel agents in a single message, then merge and check variance yourself across the
   whole set.

2. Apply every rewrite that scores the original below 7, directly into the script files.
   Do not ask first. Show her the improved version and say what changed. She can revert
   anything.

3. Report:

```
HOOKS · <show> · eps <n> to <n>

BEFORE: <avg>/10.  AFTER: <avg>/10.
REWRITTEN: <n> of <n>.

TYPE VARIANCE: <pass, or which eps collide>
SIGN ALTERNATION: <pass, or which eps collide>

STILL WEAKEST: EP <n> at <n>/10. <one line on why it resists.>

NEXT: <one action>
```

Then paste the three most improved hooks, before and after. Not all of them.
