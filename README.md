# The Writing Room

A working studio for vertical micro-drama: canon, agents, and loops, built around the
skills already on this account.

**→ [START-HERE.md](START-HERE.md)**

---

## What this is

Your `vertical-drama-showrunner` skill says of itself:

> "It deliberately hardcodes **no show canon, no character names, no episode counts, and
> no market figures.** Anything show-specific lives in that project's own instructions
> and canon files."

The skills are the method. This repo is the material. A chat Project has both, which is
why chat output was better. A bare code session had only the method.

## Layout

```
START-HERE.md        Five things, plain language. Read this.
CLAUDE.md            Loads automatically. ADHD comms rules, skill routing, quality bar.
install.sh           Installs the rules + agents + commands machine-wide.
brain/               Your voice profile, your keepers, your do-not-write list.
shows/               One folder per show. The canon.
docs/                Agents vs Projects. Loops and credits. Cheat sheet.
.claude/agents/      7 specialists with their own context windows.
.claude/commands/    9 slash commands.
```

## Commands

```
/brief                          where you left off
/ideas <what>                   ranked premises, twists, titles
/new-show <Title>               scaffold a show
/grid <show>                    build the episode grid
/write <show> <ep or range>     draft episodes to files
/audit <show> <target>          honest coverage, worst first
/hooks <show> <range>           score and rewrite every ending
/art <show> <what>              key art and image prompts
/save                           write canon, commit. run this every time.
```

## Agents

`idea-machine` · `season-architect` · `episode-drafter` · `hook-doctor` ·
`draft-auditor` · `market-scout` · `art-director`

The commands route to them. You never have to name one.

## Machine-wide install

```bash
bash install.sh              # ADHD rules + agents + commands in every project
bash install.sh --uninstall  # clean removal, backs up anything it touches
```

Show canon stays in this repo on purpose. Canon is per-show, and the skills expect it
there.
