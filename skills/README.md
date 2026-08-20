# Your skills, backed up

Eight skills you wrote yourself. Backed up here on 2026-08-20 because until now they
existed in exactly one place: your Anthropic account. This is a copy you own.

| Skill | What it does | Size |
|---|---|---|
| `vertical-drama-muse` | Invents premises, twists, hooks, titles. Writes the voice. Carries a masters vault. | 64K |
| `vertical-script-editor` | Audits against a fixed rule set. Vertical bible, episode grid, hook sprint sheet. | 48K |
| `vertical-drama-showrunner` | Structure, gates, retention, paywall economics, AI-video pipeline discipline. | 36K |
| `prestige-slate-deck` | Exec slate decks and one-sheets in a prestige-cable visual system. | 28K |
| `rule-foundry` | Mines a manuscript for transferable craft rules. | 24K |
| `microdrama-pitch-data` | Market data, comps, trope taxonomy, unit economics. | 16K |
| `key-art-director` | Key art, covers, title treatments, image prompts. | 12K |
| `i-have-adhd` | Output shaping for an ADHD reader. | 12K |

`manifest-custom.json` holds the metadata: skill IDs, descriptions, last-updated dates.

---

## These are not loaded from here

Your skills load from your Anthropic account, synced to `~/.claude/skills/synced/`.
This folder is a **backup**, not the live copy. Editing a file here changes nothing.

To actually change a skill, edit it on claude.ai and let it sync. Then re-run the backup
(below) so this copy stays current.

## Refreshing the backup

```bash
for s in i-have-adhd key-art-director microdrama-pitch-data prestige-slate-deck \
         rule-foundry vertical-drama-muse vertical-drama-showrunner vertical-script-editor; do
  cp -r ~/.claude/skills/synced/$s skills/
done
```

Worth doing after any significant edit on claude.ai.

## Restoring, if you ever need to

Copy a folder back into `~/.claude/skills/synced/`, or upload it on claude.ai. Each
skill is a plain folder with a `SKILL.md` and sometimes a `references/` directory. There
is no build step and no lock-in. That is worth knowing.

---

## One thing about `i-have-adhd`

Its frontmatter carries this line:

```yaml
disable-model-invocation: true
```

That means Claude can never turn the skill on by itself. You have to type
`/i-have-adhd` at the start of every session, and if you forget, you get default Claude
for the whole conversation.

**That is fixed for you already, in two places, and neither one touches your skill:**

1. `/CLAUDE.md` section 1 inlines the rules. They are active in this repo automatically.
2. `install.sh` copies that section into `~/.claude/CLAUDE.md`, so they are active in
   every project on the machine.

Your original skill is untouched. `/i-have-adhd` still works exactly as before if you
want it somewhere the install has not reached.

If you would rather fix it at the source, delete that one line on claude.ai and the
skill will self-invoke. The reason it defaults to off is that a persistent output style
is usually something people want to opt into per session. For you it is not, so turning
it off is the right call.

---

## The other seven skills are genuinely good

Worth saying plainly, because the thing you were unhappy about was never these.

`vertical-drama-showrunner` alone carries hook taxonomy with variance rules, gate
mechanics with the three admissible shapes and the discharge ban, pipeline reliability
ordering, lock-point discipline, and about a dozen unit mechanics each confirmed against
multiple sources. That is a professional instrument.

What it deliberately does not carry, in its own words:

> "no show canon, no character names, no collaborator names, no episode counts, and no
> market figures"

That absence is correct design. It keeps the skill portable across every show and stops
a stale 2026 number from being trusted over a live search two quarters from now.

It also means the skill is a method that needs material. `/shows/` is where the material
goes. That was the whole gap.
