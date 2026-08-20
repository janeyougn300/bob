# Loops, and how to actually save credits

You asked for loops to save credits. Loops are real and they are set up. But the honest
answer is that **loops are the fourth-biggest saving on this list**, and I would rather
tell you that than sell you the thing you asked for.

Ranked by how much they actually save you:

---

## 1. Canon files. Biggest saving by a distance

Every session starts knowing nothing. Without files, you spend the first twenty minutes
re-explaining your show, and you pay for those twenty minutes every single time.

With `shows/<name>/` filled in, Claude reads the canon in about ten seconds and starts
working.

**Rough shape of the saving:** re-explaining a show costs somewhere around 15 to 30
minutes of conversation. Reading the canon costs a few seconds of file reads. Across a
sixty-episode season, that is the difference between most of your credits going into
setup and most of them going into pages.

**How to get it:** run `/save` at the end of every session. That is the whole discipline.
It writes down what you decided so tomorrow does not re-derive it.

If you do one thing from this document, do that one.

---

## 2. Subagents. Second biggest

When an agent reads a four-thousand-line script, those four thousand lines live in *its*
context, not yours. You get back a five-item punch list.

Without agents, that script sits in your conversation for the rest of the session, and
every message afterward carries it.

They also run in parallel, so eight episodes take about as long as one.

**How to get it:** already done. `/write` and `/audit` fan out automatically.

---

## 3. Slash commands. Third

`/write bitter-vows 4` runs a page of careful instructions you did not type. No
re-explaining what a good episode looks like. No forgetting the format lock. No drift
where you explain it slightly differently each time and get slightly different output.

**How to get it:** already done. Nine commands in `.claude/commands/`.

---

## 4. Actual loops. Fourth, and narrower than you think

A loop runs the same task repeatedly on a schedule or over a list.

**Where a loop genuinely helps you:**

- Drafting a batch: `/write bitter-vows 1-8` fans out across eight parallel agents.
  That is a loop, and it is the one you will use most.
- Scoring every hook in a season: `/hooks bitter-vows all`.
- A long unattended job you start and walk away from.

**Where a loop actively hurts you:**

- Anything creative that needs your taste in the middle of it. A loop that drafts twenty
  episodes unattended produces twenty episodes you have to audit, and the bad decision in
  episode 3 has propagated through all twenty. You pay twice: once to generate the drift,
  once to fix it.
- Polling. Never set something running every five minutes to check on something. That
  burns credits doing nothing.

**The honest rule:** loop the mechanical parts. Keep yourself in the loop for the
creative ones. Vertical drama is mostly creative ones.

There is a `/loop` skill available if you want a scheduled repeating task. Say what you
want to repeat and how often, and it gets set up. My recommendation is that you do not
need it yet.

---

## 5. Things that quietly waste credits

Five, ranked:

1. **Long sessions that wander.** Twenty exchanges in, every message carries all twenty.
   Finish a thing, run `/save`, start fresh. A clean session is cheaper *and* sharper.
2. **Pasting scripts into chat.** Put the file in `shows/` and say "read ep 4." Reading a
   file is cheap. Pasting it into the conversation means carrying it forever.
3. **Re-explaining your voice.** That is what `brain/voice-profile.md` is for. Fill it
   once.
4. **Asking for one episode, eight times.** Ask for eight. Same instructions, one setup.
5. **Not saying what you actually want.** "Make it better" costs a round trip and gets a
   guess. "The ep 4 exit is soft, it ends on her reaction instead of the fact" gets a fix
   first time.

---

## The routine that costs the least

```
/brief                          ← 10 seconds. Where you left off.
... do the work ...
/save                           ← 30 seconds. Locks it in.
```

Then close the session. Do not leave it open and come back to it tomorrow with forty
exchanges of history still attached.

---

## What to do this week

1. Run `/save` at the end of every session. Even a short one.
2. Fill `brain/voice-profile.md`. Paste in twenty lines you know are good. This is the
   highest-value ten minutes available to you, and it improves every session forever.
3. Fill one show's canon completely. Then compare that show's output to your chat
   Projects. That comparison is the proof.

Ignore loops until you are drafting at volume. When you get there, `/write show 1-8` is
already waiting and it is the only loop you will need.
