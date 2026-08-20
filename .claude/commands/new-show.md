---
description: Start a new show. Scaffolds the canon folder and fills what it can by asking a few questions.
argument-hint: [show name]
allowed-tools: Bash, Read, Write, Edit, Glob, Skill, Task
---

Start a new show called: **$ARGUMENTS**

If no name was given, ask for one. One question, then proceed.

## Steps

1. Slugify the name (lowercase, hyphens) and run:
   `cp -r shows/_TEMPLATE "shows/<slug>"`
   If that folder already exists, stop and say so. Do not overwrite a show.

2. Replace every `<SHOW NAME>` placeholder in the new folder with the real title.

3. Ask **exactly these five questions**, in one message, using tappable options where
   the interface supports them. Do not ask more. Everything else can be decided later.

   1. Platform? (ReelShort / DramaBox / ShortMax / other)
   2. Runtime and word count per episode, if you know it. If not, say "look it up" and
      run `market-scout` for current norms on that platform.
   3. How many episodes total, and how many free before the gate?
   4. Live action, or AI video? If AI, which generator?
   5. In one line: what is the show?

4. Write the answers into `00-FORMAT-LOCK.md` and the logline into `01-SHOW-BIBLE.md`.

5. From that one-line premise, invoke `vertical-drama-muse` and propose, without being
   asked:
   - a season question (one yes-or-no)
   - three poster promises
   - one irony debt with both episode numbers
   - a rulebook opponent

   Write them into `01-SHOW-BIBLE.md` marked `PROPOSED`. She can overwrite them. A
   proposal she edits is worth more than a blank she has to fill.

6. Log the creation in `04-CANON-LOG.md`.

7. Report:

```
shows/<slug> created.

FILLED: format lock (<n>/<n> fields), logline, <n> proposed bible entries.
STILL BLANK: <the fields that block drafting>

NEXT: run /grid <slug> to build the episode grid. About 15 minutes.
```

Do not draft any script text in this command. Scaffolding only.
