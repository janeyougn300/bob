---
name: key-art-director
description: "Directs and generates prestige-cable key art, covers, one-sheets, title treatments, thumbnails, and image-generation prompts for vertical micro-drama titles. Use this skill whenever the user needs cover art, key visuals, poster art, a title card, mood boards, or image prompts for a deck or a title, and whenever they ask how to make artwork look more cinematic, more expensive, or more like HBO or Showtime. Also use when a deck has placeholder image slots that need art direction written for them, when a generated image came back wrong or cheap-looking and needs re-prompting, or when the user is writing any prompt that will be fed to an image generator for a title, even if they do not use the words art, cover, or key art."
---

# Key Art Director

Key art carries more of a pitch than any paragraph in it. One striking image per title beats any amount of copy, and it is the single biggest lever on how a deck lands.

The job is art direction, not decoration: every image needs a stated light source, a dominant physical fact, and a reason it belongs to this title and no other.

## Before generating

Know three things: the emotional promise of the title (Shock, Hurt, or Release), the one physical object or gesture that belongs to this story, and where the art will be used (9:16 platform cover, 16:9 slide hero, or square thumbnail). If any is unclear, ask.

## The prompt template

Every image prompt specifies all five. Missing any one produces generic output.

1. **Subject and dominant physical fact.** Not "a woman looking sad." A specific body doing a specific thing: a hand flattening against a chest, a jaw locking, a thumb worrying a ring.
2. **Light source, named, with shadow fall.** "Warm amber lamp behind her, left side of the face in shadow, hallway dark beyond." Never "dim lighting" or "moody."
3. **Framing.** Close on face and hands. Name the crop.
4. **Palette.** Pull from the prestige system: near-black `#0B0B0C`, blood red `#B0141B`, champagne gold `#C8A24B`, bone `#F5F2EA`.
5. **Negative space for type.** State where the title will sit and keep that area clean and dark.

Never request on-screen text. Generators render it badly. Type goes on afterward.

## Composition rules

- **Chiaroscuro.** High contrast, warm, low, directional light. Not high brightness.
- **One dominant focal point.** Competing subjects read as amateur.
- **Faces and hands.** Wide spatial compositions do not survive a slide crop or a phone thumbnail.
- **The floor fade.** Leave the bottom third capable of fading to near-black so the title can sit over solid ground.
- **Legible at thumbnail size.** Squint at it. If the emotional read collapses at 200px, the composition is too busy.

## Sultry that reads premium

Prestige sells sex through restraint: implication, shadow, negative space, and a single bold accent. Cheap sells it through explicitness, clutter, flat light, and multiple focal points.

Practically:

- Skin read through lighting, never through exposure.
- A gesture interrupted before contact beats contact.
- A face doing something involuntary beats a pose.
- Wardrobe is psychology made visible. It should say who someone is before they speak.
- If the image would embarrass someone presenting it to a boardroom, it fails, regardless of how well it matches the tone brief.

## Crops

Generate the hero composition once, then derive:

| Use | Ratio | Notes |
|---|---|---|
| Platform cover | 9:16 | Subject in the upper two-thirds, title zone bottom |
| Slide hero | 16:9 | Wider crop; ensure the subject survives losing vertical space |
| Thumbnail | 1:1 | Face fills the frame |

Compose the 9:16 first and crop outward. Cropping a 16:9 into vertical usually loses the subject.

## What generators fail at

In rough order of unreliability: micro-expressions and sub-second facial shifts, gaze direction, hands doing fine work, face consistency across images, on-screen text, two people touching convincingly, and anything with water, fire, mirrors, animals, or children.

**The redundancy rule.** If the emotional payload rides entirely on a face, add a second carrier in the same frame: a hand, a prop, a body position, a light change carrying the same information. If the face fails to render, the image still lands. A face plus a hand is a better composition than a face alone.

Flag it explicitly when a requested image depends on something the generator cannot be trusted with, at the time of writing rather than after three failed attempts.

## Consistency across a slate

A slate needs to read as one body of work while keeping titles distinguishable.

- Same palette, same grading approach, same crop logic across every title.
- Vary the accent temperature per title: one deeper crimson, one gold-forward, one near-monochrome.
- Keep the light direction consistent within a title and varied across titles.
- Never mix photographic and illustrated treatments in one slate.

## Rendering and handoff

The deliverable of this skill is the direction and the prompt, not the pixels. The image itself gets rendered in whatever generator the user runs, so the prompt has to be complete enough to paste without editing.

For laying plates out together, a mood board or a slate wall where the titles need to be seen against each other, use the `design` skill to build the canvas. For placement into slides, hand off to `prestige-slate-deck`, which carries the scrim, type, and layout specifications.

Deliver every image at minimum 1920px on the long edge. A low-resolution image undermines every other choice on the slide.

## Writing art direction for placeholder slots

When a deck has image slots that don't have art yet, write a direction block for each rather than leaving it blank:

```
[KEY ART — TITLE]
Subject: ...
Light: ...
Framing: ...
Palette note: ...
Title zone: ...
Fallback carrier: ...
```

This turns a gap into a brief someone can actually shoot or generate against.
