---
name: rule-foundry
description: Mine one screenplay, teleplay, novel, or manuscript for transferable craft rules and file them into a standing rule library. Use when the user attaches a source and asks to extract rules, mine it, run a foundry pass, pull craft rules from it, or produce a rule export. Also use when the user asks to diff a manuscript against its adaptation. Do not use for auditing, punching up, or drafting the user's own work; those are the vertical drama skills.
---

# RULE FOUNDRY

One source in, a rule export out, filed against the standing library.

The library's size is whatever `references/held-rules.md` currently holds. Read it and count if a number is needed. A count written into this file goes stale the first time a source is mined, and this skill bans exactly that move on its own cards at STEP 8.

## HARD LIMITS

- One source per session. If more than one source is attached, refuse all but one and say which you took. Rules extracted from a second source get quietly shaped by whatever the first source trained you to look for, and the resulting cards look portable when they are actually averaged.
- Read `references/held-rules.md` before writing a single card. A candidate that matches a name in that index is an amendment to a standing card, not a new card.
- Never extract from memory of a work. If the file did not arrive, say so and stop. Rules extracted from recall of a broadcast are not rules extracted from a page.

## STEP 1. INTAKE

State four things back to the user before extracting. If any is a placeholder or missing, stop and ask.

- Source. What the artifact is, its length, its draft state, and whether it is truncated.
- Register. PROSE if the artifact is scene text, action lines and dialogue. PRODUCER if it is outline, scene ordering, or structural placement. Most scripts are PROSE primary with a secondary PRODUCER layer.
- Focus lane. One of hooks, endings, dialogue, pacing. One lane per session. Splitting eight slots across four domains yields two rules per domain, which is not enough to test either register.
- Invention lane. Requested or not. If requested, three invention slots are held separate from the craft slots.

If the user says execute without narrowing the lane, mine all four and say in the export that the slate is shallow because of it.

## STEP 2. CEILINGS

- Screen sources: eight craft rules, three invention moves. Per source, not per pass.
- Prose sources: five prose rules, three invention moves.
- A second pass on the same source cannot append more cards. It is a challenge round: a new candidate beats a standing card on the same axis or it dies.

Ranking out at the ceiling is not a test failure. Record those candidates by name so a later source can bring them back.

## STEP 3. THE FOUR TESTS

Every candidate is tested before it enters. Name the failing test when you cut one.

- PROPER NOUN SCRUB. Delete every name, title and setting from the source. If the rule dissolves, it was plot in a rule costume.
- GENRE TRANSPLANT. State the rule applied to a completely different genre. If it stops making sense, it does not transfer.
- REVERSAL. State the opposite. If nobody could plausibly write that way on purpose, it is a truism.
- MECHANICAL, NOT TASTE. Does it read "when X happens, do Y, because otherwise Z goes wrong"? A trigger, a move, and a named failure it prevents. A wish, an effect, a texture, or a character type fails. A trigger that fires on every episode is not a trigger.

## STEP 4. CARD FORMAT

Every card carries all six fields. No card ships missing one.

```
NAME: imperative, under eight words
WHEN: the trigger condition, specific enough to fire or not fire
DO: the move, in the imperative
STOPS: the named failure it prevents, and why that failure happens
EXAMPLE: Before / After, invented, in a genre other than the source
PAGE TEST: an instruction someone who never read the source can run on a draft and get a yes or no
```

Never reproduce dialogue or action text from a copyrighted source. Every example is fabricated in a foreign genre.

A page test that requires reading the writer's intent is not a page test. Count something, search for something, or cover something and reread.

## STEP 5. THE COMPRESSION GATE

Every craft rule ships tagged, decided out loud, never silently. Episodes run two to three minutes.

- SURVIVES. Runs as written.
- SURVIVES SMALL. States the exact cut and the compressed form. If you cannot name the cut, the tag is wrong.
- DIES. Routes to PROSE LAW. It does not get argued into VERTICAL LAW by enthusiasm. A move needing three scenes of setup is a DIES and gets called one.

The operative question is runway, not register: does this rule spend an asset the audience accumulated, or does it create one in the moment? Accumulation rules die at two to three minutes. Creation rules survive. This is why rules mined from novels can cross into vertical untouched and rules mined from hour-long scripts can die on contact with it.

A slate where more than half the cards land on SURVIVES SMALL means the tag is being used to avoid deciding. Say so in the export.

## STEP 6. DESTINATIONS

- VERTICAL LAW. Execution of a vertical unit.
- THE ENGINE. Premise, architecture, and complication generation, in any format.
- PROSE LAW. Execution of a long-form scene or line, including everything tagged DIES.
- SHOW KIT. Never. No craft rule enters a per-show or per-studio file.

## STEP 7. CONTRADICTION CHECK

Run before routing, not at the end.

When a candidate collides with a rule in `references/held-rules.md`, resolve by narrowing one trigger, never by softening both. Write the boundary line onto both cards. Do not split the difference. Do not write two rules for one mechanism.

If the collision cannot be resolved by narrowing, do not resolve it. Put it to the user as a decision with both wordings quoted.

## STEP 8. ENTRY

A rule enters its destination on first observation, with the source property named on the card.

When a later source produces the same mechanism, amend the standing card. Add the source to its evidence line. Keep whichever wording carries the sharper page test.

Evidence records the property, not a count. Four hits from four episodes of one series is one architecture confirmed four times. Write it that way. Do not write "4 of 27".

Caps: twenty-five rules per destination file. At the cap a new rule must displace a named standing rule or it does not enter. Record the displacement on both cards.

## STEP 9. EXPORT

Produce one file named `rules-[source title in lowercase with dashes].md` containing, in this order:

- Source line, register, focus lane, ceilings applied.
- CRAFT RULES. Full cards.
- INVENTION MOVES. Full cards, or "none" with the reason.
- CUT LIST. Every candidate killed, each with the failing test named, or "cut at ceiling" with its rank.
- CONTRADICTIONS. Every collision found, and how it was narrowed, or the decision handed back.
- ROUTING. Which destination each surviving card takes.

No install text. No promotion claims. No source counts.

## ADAPTATION DIFF MODE

When the user attaches both a manuscript and its adaptation, do not run the extraction pass. Run a diff instead, in four sections: KEPT, CUT, COMPRESSED, INVENTED. Then produce conversion rules only, in the same card format, each answering what the adapter did to make the source work at format length. Word-frequency comparisons across the two forms are the fastest way to find what was cut.
