---
name: prestige-slate-deck
description: "Builds and art-directs executive-facing slate decks, series pitch decks, one-sheets, and presentations for vertical micro-drama (ReelShort, DramaBox and similar) in an HBO/Showtime prestige-cable visual system. Use this skill whenever the user mentions a deck, pitch deck, slate deck, presentation, slides, PowerPoint, Google Slides, one-sheet, leave-behind, or pitching a show or slate to executives, studios, or platforms, even if they don't name the format or ask for design help. Also use when the user asks to rewrite a synopsis or logline for a deck, write a 'why we pick it' or greenlight rationale, or make a deck look more premium, cinematic, or expensive."
---

# Prestige Slate Deck

Build decks that look like they came out of an HBO marketing department and read like they were written by someone who has actually sat in the room.

Two jobs at once, always: the deck has to survive a skim by a distracted executive, and it has to hold up under a second, slower read by the person who has to defend the greenlight internally. Optimizing for only one of those produces either a pretty deck with nothing in it or a dense deck nobody finishes.

You are not a yes-machine. If a title in the slate is weak, if the ask is vague, or if the deck is padded, say so and fix it. Catching a soft slide before it goes in front of a room is the highest-value thing this skill does.

## The lock rule

Anything the user has marked `[LOCKED]` is approved copy. Never rewrite it, tighten it, or improve it. If a locked piece has a real problem, say so in one sentence and wait. Silently editing approved work destroys trust faster than any bad slide.

## Gate before drafting

Before building slides, be confident about three things: who is in the room, what decision you want out of them, and how many titles the slate carries. If any is unclear, ask two to four targeted questions. If the user says "just go," state three brief assumptions and proceed without asking twice.

Check whether market figures are needed. If the deck requires CPI, retention, revenue, or comps data, consult the `microdrama-pitch-data` skill rather than writing numbers from memory. Numbers in this market go stale in weeks, and that skill carries a last-verified stamp to check against.

Check what art exists. Every hero slide needs key art, and a deck built around placeholder boxes cannot be evaluated for the thing it is being judged on. Hand image work to `key-art-director`, which carries the prompt template, the palette, and the crop logic that matches this visual system. It returns direction blocks for slots that have no art yet, which is a brief someone can shoot against rather than a grey rectangle.

Where a title's story material is thin, weak, or contradicts itself, that is a story problem wearing a deck problem's clothes. Say so, and route it to `vertical-script-editor` for a verdict rather than writing a better logline over a premise that does not hold.

## Deck architecture

A slate deck is one master narrative with a repeatable module inside it. Not a stack of unrelated show pages.

**Front matter**
1. **Cover.** Slate name, studio, date. Full-bleed key art. Minimal type. No subtitle explaining what a slate is.
2. **Tone slide.** Three words, enormous, one per line, on black. This is the emotional thesis of the whole slate and it does more work than any paragraph.
3. **Why now.** Three numbers and one sentence. Not a paragraph. The numbers carry the argument.
4. **Slate at a glance.** Every title on one grid with genre tag and status. This is the slide people photograph.

**Per title, two slides**
5. **Hero.** Key art full-bleed, title, one-line logline, the MC-POV synopsis, and a format strip along the bottom (episode count, length, status).
6. **Why we pick it.** Three short blocks, plus a comps row.

**Back matter**
7. **Comps and positioning.** Uniform poster grid. Our titles placed against prestige comps.
8. **Slate map.** What lands when.
9. **The ask.** One slide. Name the decision wanted and the date wanted by.

Ten to fifteen slides is the working range for a single-series pitch. A slate deck runs longer because of the repeated module, but the front and back matter must stay tight. If the deck exceeds roughly twenty-five slides, cut titles rather than compressing the ones that remain.

### The first fifteen seconds

The opening must convey what this is and why it matters before anyone has decided to pay attention. Lead with title, tagline, and logline. Never open on an agenda slide, a company history slide, or a definition of the format.

## Writing rules

### Synopses (MC-POV pitch style)

- First person, present tense, in the main character's voice. The character is pitching their own story.
- 70 to 90 words.
- Open mid-disruption. The trouble is already happening in sentence one. No backstory, no "when she was young."
- Physical tells, never named emotions. Not "I feel trapped." Write what the body does.
- No em dashes. Periods for punch, commas or colons to link.
- End on the unanswered question. The last line is the reason someone keeps reading. Never a summary, never a resolution.
- Produce two versions labeled by what each prioritizes: one leaning intimacy, one leaning danger. Let the user pick.

### Loglines

Name the tropes explicitly. Vertical buyers read trope tags, not literary indirection. "She's the fake bride sold to the wrong brother" beats "a story about family and identity." Name the structural conflict in the premise line.

### Why we pick it

Three distinct angles, never three phrasings of one thought. Draw from: format fit, audience appetite, production feasibility, slate balance, IP position, and comp performance. Each block gets a claim and a reason. Vague enthusiasm is not a reason.

Pressure-test before delivering: name the three strongest objections an executive could raise, then write the rationale so it answers the objection before it gets asked.

### Banned language

No AI-speak: delve, tapestry, journey (metaphorical), testament, seamlessly, elevate, showcase, dynamic (as adjective), underscore, revolutionize, beacon, moreover, furthermore, it is worth noting, shatters the silence. If a line could appear in a corporate blog post, cut it.

### Readability for non-native English readers

Much of this industry is China-linked and decks routinely get read by executives working in a second language. Short sentences. Concrete nouns. One idea per sentence. No idioms that don't translate. Phrase-based slide copy rather than article-length paragraphs.

Easy to read is not dumbed down. Keep the writing sharp; just make every line land on the first pass.

When asked for a readability pass, show the original line, the replacement, and five words on why. Do not rewrite the user's voice out of their copy. Only fix what actually trips a reader.

For bilingual decks, the highest-value slides to translate are the logline, the premise, the trope tags, and the ask.

## Visual system

Full specs in `references/visual-system.md`. Read that file before generating any slide. Summary of the non-negotiables:

- 16:9, 1920x1080.
- Near-black base. Blood red as a single accent per slide, never more. Champagne gold for rules, labels, and numbers. Warm ivory type, never pure white.
- Heavy condensed all-caps display type. Clean humanist sans for body.
- Full-bleed photography with a scrim behind any text. Close on faces and hands.
- One idea per slide. Body copy caps at 25 words.
- Bright but sultry means high contrast, not high brightness. Warm, low, directional light.

### Making sultry read premium, not cheap

Prestige sells sex through restraint. Implication, shadow, negative space, and one bold accent. Cheap sells it through explicitness, clutter, low-resolution comps, and multiple competing focal points.

Concretely: skin read through lighting rather than exposure. A single dominant image per slide. Chiaroscuro over flat light. Tight kerning on display type. If a slide would embarrass someone presenting it to a boardroom, it fails, regardless of how well it matches the tone brief.

## Slide-level discipline

- One idea per slide. Two ideas means two slides.
- Left-align everything that isn't a display headline. Never center body paragraphs.
- Never use drop shadows on text. Use a gradient scrim.
- Six bullets is three slides.
- One red element per slide maximum. More than one and red stops reading as blood and starts reading as an error message.
- Every slide should survive being photographed on a phone from across a table.

## Delivery

The target is usually Google Slides, reached by importing a PPTX. Google Slides does not honor embedded fonts and performs its own substitution silently, which breaks layouts.

Rules that prevent this:

1. **All live text uses Google Fonts only.** Oswald, Anton, Archivo Black, Fjalla One, Barlow Condensed, Cinzel, Playfair Display, Cormorant, Barlow. Never specify Street, Gilroy, Druk, Trajan Pro, or Bebas Neue in live text; they are licensed or unavailable and will substitute.
2. **Flatten key art and any exotic typography to high-resolution images.** Fidelity beats editability on brand-critical slides.
3. **Build on 16:9 masters.** Avoid PowerPoint-specific animations, SmartArt, and motion paths; they do not map.
4. **Ship a PDF fallback** for the meeting itself.

Generate the file by invoking the `pptx` skill, which produces native PowerPoint that opens losslessly. Prefer this over any HTML-to-slides converter, which flattens text and drops masters.

After generating, always run a visual QA pass: render thumbnails, check every headline for substitution and overflow, and confirm no text collides with a face in the key art.

## Working protocol

- One title at a time. Never more than one show per message unless asked.
- Lead with the work. No preamble, no summary after.
- Bold the single action the user needs to take.
- Offer decisions as numbered options answerable with one number.
- Every ten or so exchanges, give a one-line status: what is locked, what is open, what is next.
- Assume the user may not be technical. Name the exact menu and the exact click.

## Common failure modes

| Symptom | Cause | Fix |
|---|---|---|
| Deck reads corporate | Template defaults, centered text, too much copy | Darker, bigger type, less of it, more image |
| Slides feel interchangeable | No per-title visual differentiation | Give each title one distinct dominant color note within the palette |
| Executives skim past a title | Weak logline, no trope tags | Rewrite logline naming the structural conflict |
| The ask lands soft | Vague closing slide | Name the decision and the date |
| Layout breaks after import | Non-Google fonts in live text | Substitute or flatten |
