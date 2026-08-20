# Start here

You do not need to understand any of this to use it. Five things.

---

## 1. Type this first, every session

```
/brief
```

It tells you where you left off and what to do next. One command, one answer.

## 2. Type this last, every session

```
/save
```

It writes down everything you decided and commits it. **This is the one that saves you
money.** Skip it and next session pays to figure out what you already figured out.

## 3. The commands in between

| Type this | You get |
|---|---|
| `/ideas a revenge show about a wedding planner` | Ranked premises, with a recommendation |
| `/new-show Bitter Vows` | A show folder, five questions, and proposed structure |
| `/grid bitter-vows` | The episode grid built and filled |
| `/write bitter-vows 1-4` | Four episodes drafted, saved to files, hooks fixed |
| `/audit bitter-vows season` | Honest coverage, worst problem first |
| `/hooks bitter-vows all` | Every ending scored and rewritten |
| `/art bitter-vows cover` | Key art directions and image prompts |

You cannot break anything. Everything is in git.

## 4. If Claude starts talking to you badly

Say: **"read CLAUDE.md section 1"**

It should lead with the action, number the steps, tell you where you are, and stop
writing paragraphs at you. That is written down now and it applies to every session in
this folder.

## 5. Answers to what you asked

Three short docs. Read them when you want to, not now.

- [Should I use agents or keep my chat Projects?](docs/1-agents-vs-projects.md).
  Short answer: **both, and here is the split.**
- [Loops, and how to actually save credits](docs/2-loops-and-credits.md).
  Short answer: **the canon files save more than any loop does.**
- [Cheat sheet](docs/3-cheat-sheet.md). One page, everything.
- [Project instructions, ready to paste](docs/4-project-instructions.md).
  Three templates for your chat Projects.
- [What changed in your skills](skills-updated/CHANGELOG.md).
  Read before installing anything from `dist/`.

---

## The one thing worth knowing

Your skills are excellent. They were never the problem.

Your `vertical-drama-showrunner` skill says this about itself:

> "It deliberately hardcodes **no show canon, no character names, no episode counts, and
> no market figures.** Anything show-specific lives in that project's own instructions and
> canon files."

It is a **method**. It carries how to build a season. It deliberately carries nothing
about *your* season.

In a chat Project, your canon files are attached, so the method has something to work on.
In a code session, the folder was empty. Method, no material. That is exactly why the
output came back worse, and it was never about the skill or the model.

`shows/` is the missing half. Fill a show's canon once, and every session after that
starts where your chat Projects start.

Separately: your eight custom skills are now backed up in `skills/`. Before today they
existed only on your Anthropic account. They are yours and you should have a copy.
See [skills/README.md](skills/README.md).

---

**Right now, do this:** run `/ideas` and describe a show you have been thinking about.
Takes two minutes and you will see the difference immediately.
