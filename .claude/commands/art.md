---
description: Key art, covers, title cards, thumbnails and image-generation prompts.
argument-hint: [show] [what you need: cover / thumbnail / title card / deck art]
allowed-tools: Read, Write, Edit, Glob, Grep, Skill, Task, WebSearch
---

Art for: **$ARGUMENTS**

1. Launch the `art-director` agent.

2. When she is choosing a direction, have it produce 3 distinct compositions, labelled by
   what each prioritizes and trades off. Not three tones of the same picture.

3. Save every prompt to `shows/<show>/art/prompts.md`. A prompt that works is an asset
   and it should never have to be rewritten from memory.

4. Report the compositions with their copy-paste-ready prompts, recommendation first.

```
NEXT: paste prompt #<n> into <generator>. If the face comes back wrong, use the
alternate composition in #<n>, which carries the same idea on hands instead.
```

## Rules

- Name the light source and where the shadow falls, in every single prompt. That one
  rule does more than all the others combined.
- No on-screen text in a generated image. Type goes on in a separate layer.
- Flag any composition that depends on hands, gaze, mirrors, water, fire, animals or
  children, and give a second composition that carries the idea without it.
