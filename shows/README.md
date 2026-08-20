# shows/

One folder per show. Each holds the canon that the skills need and do not carry
themselves.

**To start a show:** run `/new-show` in a session, or copy the template by hand:

```bash
cp -r shows/_TEMPLATE "shows/my-show-name"
```

## What is in a show folder

| File | What it is | Blocks drafting if empty? |
|---|---|---|
| `00-FORMAT-LOCK.md` | Runtime, word count, gate episode, pipeline, lock dates | **Yes** |
| `01-SHOW-BIBLE.md` | Logline, season question, the poster, irony debt, motif | **Yes** |
| `02-CHARACTERS.md` | Lead, opponent web, tells, wardrobe, locked names | **Yes** |
| `03-EPISODE-GRID.md` | Per-episode sign, values, turn, exit fact, hook type | Yes, for drafting |
| `04-CANON-LOG.md` | Append-only decision record | No, but write to it every session |
| `05-VOICE.md` | Show-specific line-level rules and samples | No, but output is worse without it |
| `scripts/` | The actual episode files | n/a |

## Why the blocking rule exists

`vertical-drama-showrunner` deliberately carries no show canon, no character names, no
episode counts and no market figures. It is a method. Without canon, the method has
nothing to apply itself to, and the output comes back generic.

That is exactly what went wrong the last time this was tried in a code session and not
a chat Project. The chat Project had the files attached. The repo was empty.

Fill the canon. Then the method works.
