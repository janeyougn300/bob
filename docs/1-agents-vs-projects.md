# Should I use agents, or keep my chat Projects?

**Both. Keep every Project you have. Do not migrate anything.** Here is the split, and
then the explanation if you want it.

---

## The split

| Do this in a **chat Project** | Do this **here** |
|---|---|
| Thinking out loud | Producing files |
| One scene, one hook, one problem | Eight episodes at once |
| Talking through a story you are stuck on | Auditing a whole season |
| Quick answers on your phone | Anything you need saved and versioned |
| Anything you would do in ten minutes | Anything that takes an hour |

Rule of thumb: **if the output is a conversation, use a Project. If the output is a
file, use this.**

---

## What each of these words actually means

You said you do not know how agents work. Here is the whole thing in four definitions.
There is nothing else to learn.

**A skill** is a document of instructions Claude reads when it is relevant. You already
have fifteen of them, and several are genuinely excellent. A skill is the *method*.

**A Project** (in the chat app) is a folder with instructions and attached files that are
always in context. The files are the *material*.

**Method plus material equals good output.** That equation is the whole story. Your chat
Projects work because they have both. Your code sessions did not, because the repo was
empty.

**An agent** is a helper Claude sends off to do one job in its own separate context
window. It reads what it needs, does the work, comes back with the answer. Its research
and its dead ends never enter your conversation.

Three real consequences of that last one, and they are the entire reason agents exist:

1. **You can run several at once.** `/write bitter-vows 1-8` launches eight drafters in
   parallel. Eight episodes come back in the time one takes.
2. **Your main conversation stays clean.** The auditor reads four thousand lines of
   script; you see a five-item punch list. Those four thousand lines never touch your
   context.
3. **Episode 8 is as good as episode 1.** In one long chat, quality drifts as context
   fills. Eight fresh agents do not drift.

**A slash command** is a saved prompt. `/write bitter-vows 4` runs a page of careful
instructions you did not have to type or remember. That is all a command is.

---

## So do you need agents?

**For your workload, yes.** Specifically for these three things:

1. **Volume.** Vertical drama is sixty to a hundred episodes. Drafting that in one chat
   thread means the back half is worse than the front half. Parallel agents fix that.
2. **Honest auditing.** A fresh agent that has not spent the last hour helping you build
   something is measurably more willing to tell you it is not working. Your own thread
   develops a stake in the thing.
3. **Anything with a lot of reading.** Auditing a season, mining a manuscript. That is
   context you should not have to pay for twice.

**For everything else, your chat Projects are already better,** because they are faster
to reach, they work on your phone, and thinking out loud is genuinely what they are for.

Anyone who tells you to move all your work into code is wrong.

---

## What is already built for you

Seven agents live in `.claude/agents/`. You call them by name, or a command calls them
for you, which is easier.

| Agent | Job |
|---|---|
| `idea-machine` | Premises, twists, titles, fresh takes on flat things |
| `season-architect` | Grids, gates, opponent webs, manuscript adaptation |
| `episode-drafter` | Writes episodes to spec, one at a time, at full quality |
| `hook-doctor` | Scores and rewrites openings and endings |
| `draft-auditor` | Ruthless coverage, exact line fixes, worst first |
| `market-scout` | Live research, never a number from memory |
| `art-director` | Covers, thumbnails, title cards, image prompts |

**You never have to type an agent name.** The commands route for you. `/audit` calls the
auditor and the hook doctor together, merges what they find, and hands you five things
ranked. That is the point.

---

## Should you build more agents?

Not yet. Use these seven for two weeks first.

Build a new one when you catch yourself typing the same long instruction for the third
time. That is the only signal worth acting on. Building agents for jobs you have not
done yet is how people end up with twenty tools they do not use.

When that moment comes, say **"make me an agent that does X"** and it gets written for
you. You do not need to learn the file format.

---

## The honest summary

You did not have an agent problem. You had an empty-folder problem.

Your skills were already elite. What was missing was the show canon that a chat Project
gives you for free and a bare repo does not. That is now `shows/`, and filling it once
per show is the entire fix.

The agents on top are a real speed and quality gain at volume. But they are the second
thing, not the first.
