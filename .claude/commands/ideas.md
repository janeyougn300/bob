---
description: Generate premises, twists, titles, hooks, or a fresh take on something flat. Ranked, with a recommendation.
argument-hint: [what you want ideas for]
allowed-tools: Read, Write, Edit, Glob, Grep, Skill, Task, WebSearch
---

Ideas for: **$ARGUMENTS**

1. Launch the `idea-machine` agent.

2. For a broad ask ("give me a new show"), launch **three** idea-machine agents in
   parallel in a single message, each pushed at a different angle:
   - one built from a wrong the audience wants collected
   - one built from a rulebook opponent and the pressure they can apply
   - one built by stealing a structural device from outside the genre

   Then merge, dedupe, and rank across all three. Three independent runs produce range
   that one run does not, and they cost the same as one long thread.

3. Anything good she does not pick goes into `brain/keepers.md` before you finish.

4. Report the merged, ranked list. Five maximum visible, recommendation first, each with
   what it trades off. Then:

```
ALSO GENERATED: <n> more, saved to brain/keepers.md.
NEXT: say "build <n>" and I will run /new-show on it.
```

## Rules

- Options must differ in kind, not in adjective. Five versions of one idea is one idea.
- Recommend one. An unranked list hands the work back.
- No "Chronicles," no "A Tale of," no colon-subtitle that has not earned its place.
