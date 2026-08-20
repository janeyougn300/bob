# What changed in each skill, and why

Read this before installing. Every change is listed. Nothing was rewritten for the sake
of it, and six of the eight skills were left almost entirely alone because they are
genuinely strong.

The originals are untouched in `/skills/`. If you dislike a change, that folder is the
way back.

---

## The headline

**Your skills were not the problem.** They are professional instruments. The three
vertical ones carry hook taxonomy with variance rules, gate mechanics with the discharge
ban, pipeline reliability ordering, lock-point discipline, and roughly a dozen unit
mechanics each cross-confirmed. That is not a thing most working writers have.

They had one shared blind spot, and it is the one that produced the bad output you
complained about. All three say canon lives in the project. None said what to do when
there is no project. That gap is now closed in all three.

---

## vertical-drama-showrunner

**Added: "When there is no project."** The skill said show canon lives in the project's
own files. It did not say what happens when there is no project. That case has a quiet
failure mode: nothing errors, the method runs against invented defaults, and the output
comes back well-formed and generic. Now it names the four things it needs (runtime and
word count, episode and gate counts, the lead and rulebook opponent and season question,
locked names), and when they are missing it says which and asks rather than guessing.
Ideation, feedback and research are explicitly exempt so the check does not become
friction.

**Added: "Which skill owns what."** It never mentioned its two companions. Now the three
agree on precedence: editor's rule set wins an audit verdict, showrunner wins structure
and format, muse wins the line, canon beats all three.

Nothing else touched.

## vertical-script-editor

**Added: "When the canon is not there."** Same gap, sharper consequence here, because an
audit run against invented canon produces findings that are correctly formatted and
hollow, and the reader cannot tell from the output. Drafting and grid work now require
the four inputs. Auditing proceeds regardless but lists anything it could not check
under `CANNOT CHECK` with the missing input named, because reporting the gap is itself a
finding. Hook scoring on supplied text stays ungated.

**Added: the same routing block.**

Nothing else touched. The twenty-two rules are untouched.

## vertical-drama-muse

**Added: "Ideation needs nothing. Drafting needs canon."** This one needed the opposite
treatment from the other two. The skill is right that ideating into an empty room is
correct and that momentum is the deliverable, so that behaviour is now protected
explicitly. But drafting actual scene text with no format lock produces pages built on a
guessed runtime, which get thrown away. The line drawn: a pitch card is ideation, a
scene is drafting.

**Added: `vertical-script-editor` to the companion note**, which previously named only
the showrunner.

Nothing else touched.

## i-have-adhd

**Removed: `disable-model-invocation: true`.** This is the biggest single fix in the set.
That one line meant Claude could never turn the skill on by itself. You had to type
`/i-have-adhd` at the start of every session, and if you forgot, the entire conversation
ran in default style. That is the whole reason Claude "doesn't talk to you well."

**Added: a "Turning it on" section**, so the model turns it on at the start of the
session without waiting to be asked, with the reasoning stated: you have ADHD every
session, not only the ones where you remember to ask. Still turns off on "stop adhd
mode."

**Description now triggers** on "keep it short", "too much text", "get to the point",
"I am lost", "where were we", and asks for it to be on by default.

The ten rules themselves are untouched. They are good.

## microdrama-pitch-data

**This one had gone stale by its own rule.** Rule 1 says refresh anything more than a
quarter past its date. The figures were dated January 2026. It is August 2026.

**Added: a LAST VERIFIED stamp** at the top, dated 20 August 2026, with instructions to
check today's date against it and to update the stamp on refresh. This is the part that
keeps working after today.

**Refreshed with live 2026 data:** Q1 2026 category IAP (~$750M, +20% YoY), H1 2026
overseas (~$1.27B, +13% YoY), ReelShort Q1 2026 (~$140M IAP, still number one), both
platforms crossing 50M MAU, the current production band, and the SAG-AFTRA ceiling.

**Added: the deceleration note, which is the finding that matters.** Growth went +115%
across 2025, +20% in Q1 2026, +13% in H1 2026. The category is still large and still
growing. It is no longer tripling. That puts Deloitte's $7.8B 2026 projection, which
your skill carried, in tension with the actual run rate: four quarters near the Q1 2026
level lands around $3B on that measure, not $7.8B. A deck citing the doubling without
naming the run rate is exposed to the first question a numerate executive asks. The
skill now says so and gives two honest ways to handle it.

**Added: two measurement traps.** Gross consumer spending is not revenue, and quarterly
IAP does not annualize to gross consumer spend. Both catch people, and your library
carries figures in both units.

**Corrected: paywall conversion** widened from 3 to 5 percent to 3 to 8 percent.

**Clarified: the two ROI numbers.** Recoup threshold 1.5 to 2.0 and hit return 5x to 20x
are not in conflict, they answer different questions. Presenting the second as an
expected return loses a numerate room, so the skill now says which to use when.

**Added: creative volume as a cost line.** ReelShort has reportedly run 1.34 million
creatives. A user-acquisition model with no creative line item has a hole in it.

## key-art-director

**Fixed a broken reference.** Line 79 handed off to a skill called `canvas-design`. No
such skill exists on your account. The instruction was dead: nothing would happen, and
nothing would say so. Now it points at `design` for laying out plates and mood boards,
and states plainly that this skill's deliverable is the direction and the prompt, not
the pixels.

**Description widened** to trigger on re-prompting a generated image that came back
cheap-looking, and on writing any image-generator prompt for a title even when the words
"art" or "cover" are never used.

Nothing else touched. The composition rules are good.

## prestige-slate-deck

**Added two handoffs.** It correctly routed to `microdrama-pitch-data` and `pptx`, but
never mentioned `key-art-director`, even though key-art-director routes back to it. Now
it does, and it also routes a weak title to `vertical-script-editor` rather than writing
a better logline over a premise that does not hold. A story problem wearing a deck
problem's clothes is the most expensive thing in a pitch.

**Added:** a note to check the pitch-data skill's last-verified stamp.

Nothing else touched.

## rule-foundry

**Removed a hardcoded count.** The opening line said the library "already holds 126
rules." That number goes stale the first time you mine a source. It is also the exact
move the skill bans on its own cards at STEP 8, which says to record the property and
not a count. Now it points at `references/held-rules.md` and says to count if a number
is needed.

Nothing else touched. This skill is tight.

---

## What was deliberately left alone

- Every craft rule, in every skill.
- The twenty-two rules in the vertical bible, the episode grid, the hook sprint sheet.
- The masters vault.
- The visual system.
- All four of the foundry's tests and its card format.
- Six of the eight descriptions, which are already well-shaped for triggering.
- The duplicated "shared law" in the muse. It restates the showrunner's craft rules on
  purpose, so the muse holds the line when it runs alone. Worth knowing the copies can
  drift: if you edit a craft rule in one, check the other.

## Known trade-off

Three skills got longer. Skill bodies work best under about 500 lines and none of these
are near that, so the cost is small. The blocking check is worth a few dozen lines
because it converts a silent failure into a question, and a question costs one message
while a silent failure costs a rewrite.
