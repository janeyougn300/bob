---
description: Build or fix the episode grid: signs, values, turns, exit facts, gate placement, opponent web.
argument-hint: [show] [optional: "fix" to diagnose an existing grid]
allowed-tools: Read, Write, Edit, Glob, Grep, Skill, Task, WebSearch
---

Grid work for: **$ARGUMENTS**

1. Launch the `season-architect` agent.

2. If the grid is empty, it builds one. If the grid exists and the ask is "fix" or the
   season sags, it diagnoses: filler-hunt first (matching open and close values), then
   opponent web, then whether the lead is reacting rather than wanting, then belief-shift
   cadence, then the subtraction ledger.

3. The agent writes directly into `shows/<show>/03-EPISODE-GRID.md`. Verify the file
   actually changed. A grid pasted into chat and not into the file is worthless next
   session.

4. Report:

```
GRID · <show>

FILLED: <n> of <n> cells.
GATE: ep <n>, shape <name>.
  Named coming event: "<the line spoken before the cut>"

HOLES: <blank cells, or "none">
COLLISIONS: <sign or hook-type clashes, or "none">
FILLER: <eps whose open and close values match, or "none">

FIX FIRST: <one thing>
NEXT: /write <show> <n>
```

## Rules

- Never gate on a discharge. Not the explosion, not the rescue, not the answer. If the
  current grid does, that is the first finding.
- The poster promises all land inside the free block. If they do not, say so loudly.
  Nobody pays to start a show.
- Fix the irony debt payoff episode number now, not later.
