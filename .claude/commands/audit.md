---
description: Ruthless coverage pass on a script, episode range, or whole season. Worst problem first, with exact fixes.
argument-hint: [show] [episode, range, or "season"] [--fix]
allowed-tools: Bash, Read, Write, Edit, Glob, Grep, Skill, Task
---

Audit: **$ARGUMENTS**

If nothing was specified, audit the most recently modified script in the most recently
modified show folder, and say which one you picked.

## Steps

1. Launch the `draft-auditor` agent on the target. For a range of more than three
   episodes, launch one agent per two or three episodes **in parallel, in a single
   message**, then merge and dedupe the findings yourself.

2. Also launch `hook-doctor` on the same range, in the same message, so hooks get scored
   while the audit runs.

3. Merge both reports. Rank by severity: things that kill the gate, then things that
   break an episode, then line fixes.

4. If `--fix` was passed, apply every finding rated LINE FIX automatically and report
   what you changed. Leave the structural findings for her to approve, since those change
   the season.

5. Report:

```
AUDIT · <show> · <what> · <n> findings

VERDICT: <one honest line>

TOP 5
1. [<severity>] EP <n>: <problem>
   [LOCATE IN DRAFT] <exact line>
   [REPLACE WITH] <exact new text>
...

ALSO: <n> more line-level fixes. Say "list the rest" for them.

FIX FIRST: #1. About <n> minutes.
```

## Rules

- Honest before agreeable. If the season is not working, the verdict line says so.
- Cap the visible list at five. Five ranked beats twenty unranked, and twenty findings
  in one message is where the work stops getting done.
- Every finding carries the exact line it replaces. Never a note about a general area.
