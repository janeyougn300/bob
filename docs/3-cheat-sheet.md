# Cheat sheet

One page. Print it if that helps.

---

## Every session

```
/brief          start. where you left off.
/save           end. writes it down, commits it.
```

## Making things

```
/ideas <what you want>              premises, twists, titles, fresh takes
/new-show <Title>                   scaffolds a show, asks 5 questions
/grid <show>                        builds the episode grid
/write <show> <ep or range>         drafts episodes to files
/art <show> <what>                  covers, thumbnails, image prompts
```

## Fixing things

```
/audit <show> <ep or "season">      honest coverage, worst first
/audit <show> season --fix          same, and applies the line fixes
/hooks <show> <range or "all">      scores and rewrites every ending
/grid <show> fix                    diagnoses a sagging season
```

## When Claude talks to you badly

```
read CLAUDE.md section 1
```

## Where things live

```
shows/<name>/00-FORMAT-LOCK.md      runtime, word count, gate ep     ← blocks drafting
shows/<name>/01-SHOW-BIBLE.md       logline, season question, poster ← blocks drafting
shows/<name>/02-CHARACTERS.md       lead, opponents, locked names    ← blocks drafting
shows/<name>/03-EPISODE-GRID.md     the per-episode plan
shows/<name>/04-CANON-LOG.md        decisions. /save writes here.
shows/<name>/05-VOICE.md            how this show sounds
shows/<name>/scripts/               the episodes

brain/voice-profile.md              how YOU sound. fill this.
brain/keepers.md                    good ideas you have not used yet
```

---

## The rules Claude is holding itself to

Say "you broke rule X" if it slips.

**Line level, banned outright:**
- em dashes
- AI-speak: delve, tapestry, beacon, testament, seamlessly, leverage, dynamic, underscore,
  shatters the silence, moreover, furthermore, revolutionize, showcase, elevate, journey,
  it is worth noting
- named emotions ("she felt anxious") instead of the physical tell
- voiceover or internal monologue as narration
- dialogue explaining what the action already showed

**Episode level:**
- opens in the middle of the disruption. no waking, no arriving, no looking around
- first spoken line names a want: an accusation, a demand with a deadline, or a price
- open value and close value are different words. if they match, it is filler
- the turn flips who outranks whom, in front of witnesses
- ends on a fact that cancels the plan, leaving one specific wrong answer available
- cut before the reaction

**Season level:**
- never two of the same hook type back to back
- never two of the same sign back to back
- the poster promises all land in the free block
- **never gate on a discharge.** not the explosion, not the rescue, not the answer
- largest reveal in the last free episode, second largest in the first paid one
- every set piece subtracts something nameable in three words

**Talking to you:**
- first line is the action
- numbered steps
- says where you are every turn
- five items max
- one next action at the end
- no "great question," no "hope this helps"
- honest when something is bad, with the replacement attached

---

## The one sentence

Your skills carry the method. `shows/` carries your material. You needed both, and only
had one.
