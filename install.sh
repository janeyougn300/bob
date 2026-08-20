#!/usr/bin/env bash
#
# Makes the writing setup work in EVERY project on this machine, not just this folder.
#
# Installs:
#   - the ADHD output rules, into ~/.claude/CLAUDE.md   (so Claude talks right everywhere)
#   - the 7 writing agents,   into ~/.claude/agents/
#   - the 9 slash commands,   into ~/.claude/commands/
#   - the 8 updated skills,   into ~/.claude/skills/
#
# Run it:   bash install.sh
# Undo it:  bash install.sh --uninstall
#
# Nothing is overwritten without a backup. Existing files are saved as *.backup-<date>.

set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="${HOME}/.claude"
STAMP="$(date +%Y%m%d-%H%M%S)"
MARK_START="<!-- WRITING-ROOM:START -->"
MARK_END="<!-- WRITING-ROOM:END -->"

say() { printf '%s\n' "$*"; }

# ---------------------------------------------------------------- uninstall

if [[ "${1:-}" == "--uninstall" ]]; then
  say "Removing the writing room from ${DEST}"

  for d in agents commands; do
    if [[ -d "${REPO}/.claude/${d}" ]]; then
      while IFS= read -r f; do
        name="$(basename "$f")"
        if [[ -f "${DEST}/${d}/${name}" ]]; then
          rm -f "${DEST}/${d}/${name}"
          say "  removed ${d}/${name}"
        fi
      done < <(find "${REPO}/.claude/${d}" -maxdepth 1 -name '*.md')
    fi
  done

  if [[ -d "${REPO}/.claude/skills" ]]; then
    while IFS= read -r s; do
      name="$(basename "$s")"
      if [[ -d "${DEST}/skills/${name}" ]]; then
        rm -rf "${DEST}/skills/${name}"
        say "  removed skills/${name}"
      fi
    done < <(find "${REPO}/.claude/skills" -mindepth 1 -maxdepth 1 -type d)
  fi

  if [[ -f "${DEST}/CLAUDE.md" ]] && grep -q "${MARK_START}" "${DEST}/CLAUDE.md"; then
    cp "${DEST}/CLAUDE.md" "${DEST}/CLAUDE.md.backup-${STAMP}"
    sed -i.tmp "/${MARK_START}/,/${MARK_END}/d" "${DEST}/CLAUDE.md"
    rm -f "${DEST}/CLAUDE.md.tmp"
    say "  removed the ADHD block from ~/.claude/CLAUDE.md"
    say "  (backup at ~/.claude/CLAUDE.md.backup-${STAMP})"
  fi

  say ""
  say "Done. This repo still works on its own."
  exit 0
fi

# ---------------------------------------------------------------- install

say "Installing the writing room into ${DEST}"
say ""

mkdir -p "${DEST}/agents" "${DEST}/commands"

# --- agents and commands -------------------------------------------------

copied_agents=0
copied_commands=0

for pair in "agents:copied_agents" "commands:copied_commands"; do
  d="${pair%%:*}"
  src="${REPO}/.claude/${d}"
  [[ -d "$src" ]] || continue
  while IFS= read -r f; do
    name="$(basename "$f")"
    target="${DEST}/${d}/${name}"
    if [[ -f "$target" ]] && ! cmp -s "$f" "$target"; then
      cp "$target" "${target}.backup-${STAMP}"
      say "  backed up existing ${d}/${name}"
    fi
    cp "$f" "$target"
    if [[ "$d" == "agents" ]]; then
      copied_agents=$((copied_agents + 1))
    else
      copied_commands=$((copied_commands + 1))
    fi
  done < <(find "$src" -maxdepth 1 -name '*.md' | sort)
done

say "  ${copied_agents} agents installed"
say "  ${copied_commands} commands installed"

# --- skills --------------------------------------------------------------
# The updated versions of the 8 custom skills. Same names as the ones synced
# from the account, so these take precedence wherever both are visible.

copied_skills=0

if [[ -d "${REPO}/.claude/skills" ]]; then
  mkdir -p "${DEST}/skills"
  while IFS= read -r s; do
    name="$(basename "$s")"
    target="${DEST}/skills/${name}"
    if [[ -d "$target" ]] && ! diff -rq "$s" "$target" >/dev/null 2>&1; then
      rm -rf "${target}.backup-${STAMP}"
      cp -r "$target" "${target}.backup-${STAMP}"
      say "  backed up existing skills/${name}"
    fi
    rm -rf "$target"
    cp -r "$s" "$target"
    copied_skills=$((copied_skills + 1))
  done < <(find "${REPO}/.claude/skills" -mindepth 1 -maxdepth 1 -type d | sort)
fi

say "  ${copied_skills} skills installed"

# --- the ADHD block ------------------------------------------------------
# Pulled live from CLAUDE.md section 1 so the two never drift apart.

BLOCK_BODY="$(awk '
  /^## 1\. How to talk to the person you are working with/ {grab=1}
  /^## 2\./ {grab=0}
  grab {print}
' "${REPO}/CLAUDE.md")"

if [[ -z "$BLOCK_BODY" ]]; then
  say ""
  say "Could not read section 1 from CLAUDE.md. Agents and commands installed anyway."
  exit 1
fi

BLOCK="${MARK_START}
${BLOCK_BODY}
> Installed from the writing room. Edit that repo's CLAUDE.md and re-run install.sh.
${MARK_END}"

touch "${DEST}/CLAUDE.md"

if grep -q "${MARK_START}" "${DEST}/CLAUDE.md"; then
  cp "${DEST}/CLAUDE.md" "${DEST}/CLAUDE.md.backup-${STAMP}"
  BLOCK_TMP="$(mktemp)"
  printf '%s\n' "$BLOCK" > "$BLOCK_TMP"
  BLOCK_FILE="$BLOCK_TMP" \
  TARGET_FILE="${DEST}/CLAUDE.md" \
  MARK_A="$MARK_START" \
  MARK_B="$MARK_END" \
  python3 -c '
import os, re
target = os.environ["TARGET_FILE"]
block = open(os.environ["BLOCK_FILE"]).read().rstrip("\n")
a, b = os.environ["MARK_A"], os.environ["MARK_B"]
text = open(target).read()
text = re.sub(re.escape(a) + ".*?" + re.escape(b), lambda _: block, text, flags=re.S)
open(target, "w").write(text)
'
  rm -f "$BLOCK_TMP"
  say "  updated the ADHD block in ~/.claude/CLAUDE.md"
else
  [[ -s "${DEST}/CLAUDE.md" ]] && printf '\n\n' >> "${DEST}/CLAUDE.md"
  printf '%s\n' "$BLOCK" >> "${DEST}/CLAUDE.md"
  say "  added the ADHD block to ~/.claude/CLAUDE.md"
fi

# ---------------------------------------------------------------- report

say ""
say "Done."
say ""
say "Now works in every project on this machine:"
say "  - Claude leads with the action, numbers steps, and skips the padding"
say "  - /ideas /new-show /grid /write /audit /hooks /art /brief /save"
say "  - the 7 writing agents"
say "  - the 8 updated skills, including the ADHD one that now turns itself on"
say ""
say "This covers Claude Code only. Claude chat on the web reads skills from your"
say "account, which nothing here can write to. For chat, install the .skill files"
say "in dist/ using the Save skill button, and paste docs/4-project-instructions.md"
say "into your Projects."
say ""
say "Show canon still lives in THIS repo, under shows/. That part is deliberate."
say "Canon is per-show, not global, and the skills expect it that way."
say ""
say "One catch: on a cloud session the home folder is wiped when the container"
say "shuts down, so re-run this after a fresh cloud session. On your own computer"
say "it is permanent."
say ""
say "Undo any time:  bash install.sh --uninstall"
