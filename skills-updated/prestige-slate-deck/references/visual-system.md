# Prestige-Cable Visual System

Concrete specifications. Read this before generating any slide.

## Contents
1. Color
2. Typography
3. Layout and grid
4. Image treatment and legibility
5. Per-slide recipes
6. What signals cheap

---

## 1. Color

### Core palette

| Role | Hex | Use |
|---|---|---|
| Background primary | `#0B0B0C` | Slide base |
| Background panel | `#111113` | Cards, panels, sidebars |
| Blood red accent | `#B0141B` | Single accent per slide |
| Blood red deep | `#8B0000` | Alternate, heavier weight |
| Ominous crimson | `#6B0F1A` | Low-saturation option; reads ominous rather than vibrant |
| Champagne gold | `#C8A24B` | Thin rules, small-caps labels, numbers |
| Gold bright | `#D4AF37` | Sparingly, for emphasis on a single figure |
| Bone / text | `#F5F2EA` | All body and display type |
| Secondary grey | `#6E6E6E` | Captions, metadata, format strips |

### Rules

- Background occupies 60 to 70 percent of every slide. Dominance is what reads as designed rather than decorated.
- **One red element per slide, maximum.** A red title and a red rule and a red highlight is three, and the slide now reads as an error message.
- Never pure white (`#FFFFFF`) for type. Bone reads warm and expensive; pure white reads like a spreadsheet.
- Never pure black (`#000000`) for backgrounds either. `#0B0B0C` holds shadow detail in the key art.
- Gold and red do not touch. Separate them with dark space.

### Per-title differentiation

Within the palette, give each title one dominant color note so slides don't read as interchangeable: one leans deeper crimson, one leans gold-forward, one leans near-monochrome. Change the accent temperature, not the system.

---

## 2. Typography

### The reference (context, not usable)

HBO's bespoke corporate typeface is **Street**, commissioned in 2016 after HBO determined its existing type system no longer suited its needs. Type design by Carvalho Bernau (Susana Carvalho and Kai Bernau) with Erik van Blokland of LettError, delivered as a screen-first graded family. It is a compact, large-x-height American gothic: accessible but premium.

Other prestige references: *Game of Thrones* uses a custom serif modeled on **Trajan Pro** (Roman square capitals, signaling authority and antiquity). *Industry* uses **Tusker Grotesk**. **Druk** (Commercial Type) sits behind much modern prestige key art. HBO Max corporate has used **Gilroy** with **ITC Avant Garde Gothic** secondary.

**None of these are usable in Google Slides.** They are licensed or unavailable. They are listed so the substitutes below are chosen deliberately rather than randomly.

### The shippable stack (Google Fonts)

| Need | Font | Notes |
|---|---|---|
| Condensed display, primary | **Oswald** | Closest safe analogue to the prestige gothic |
| Condensed display, heavy | **Anton** | Single ultra-bold weight, movie-poster energy |
| Blocky display | **Archivo Black** | When Anton is too narrow |
| Condensed alternate | **Fjalla One**, **Barlow Condensed** | Secondary headlines |
| Epic / inscriptional | **Cinzel** | The Trajan feel, for period or epic titles |
| Elegant serif accent | **Playfair Display**, **Cormorant** | Taglines, pull quotes |
| Body | **Barlow** | Clean humanist sans, reads well at small sizes |

**Bebas Neue is not on Google Fonts.** Use Oswald or Anton instead. This is a common and costly mistake.

### Sizing

- Display titles: 36 to 44pt, ALL CAPS, tight tracking (negative letter-spacing).
- Section headers: 24 to 28pt.
- Body: 14 to 16pt, sentence case, generous line height (1.5).
- Format strips and metadata: 10 to 12pt, small caps, in secondary grey or gold.
- Pair exactly one display face with one body face. Three faces on a slide is a tell.

---

## 3. Layout and grid

- **Canvas:** 16:9, 1920x1080.
- **Margins:** minimum 80px on all sides. Full-bleed imagery ignores this; type never does.
- **One dominant image per slide.** Competing focal points read as amateur.
- **One idea per slide.** Body copy caps at 25 words.
- **Left-align** all body copy and most headlines. Center only a display title on a cover or tone slide.
- **Negative space is a feature.** Resist filling it.

### Poster grids (comps and slate-at-a-glance slides)

- Uniform aspect ratio across every poster. Mixed ratios are the single fastest way to look unprofessional.
- Even gutters, 16 to 24px.
- Aligned baselines across the row.
- Caption beneath each in small caps, secondary grey.
- Maximum six per row, two rows.

### The format strip

Along the bottom of every hero slide: episode count, episode length, status, genre tags. Small caps, 10 to 12pt, gold or grey, separated by thin vertical rules. This is where executives look for the operational facts, and putting it in the same place every time makes the deck feel engineered.

---

## 4. Image treatment and legibility

### Scrims

Text over imagery requires a scrim or it fails on a projector.

| Situation | Treatment |
|---|---|
| Title anchored bottom | **Floor fade**: image fades to `#0B0B0C` across the bottom third, type sits over the solid area. Poster standard. |
| Title anchored to one corner | Corner gradient, black to transparent, roughly 40 percent opacity at the anchor |
| Text spanning the frame | Darken the whole image approximately 40 percent |
| Text over a face | Move the text. Never darken a face to fit copy on it. |

Anchor gradients at the bottom or a corner so faces stay visible and lit.

### Grading

- High contrast, warm, low, directional light. Chiaroscuro.
- Named light source with named shadow fall. "Warm amber lamp behind him, hallway dark" is a composition; "dim lighting" is nothing.
- Close on faces and hands. Wide spatial compositions do not survive a slide crop.
- Skin read through lighting and shadow, never through exposure.

### Resolution

Every image must be at least 1920px on its long edge. A low-resolution comp poster undermines every other choice on the slide.

---

## 5. Per-slide recipes

**Cover.** Full-bleed key art with floor fade. Slate name in Anton, 44pt, all caps, tight tracking, bone. Studio and date in Barlow small caps, 11pt, gold, bottom left. Nothing else.

**Tone slide.** Solid `#0B0B0C`. Three words, one per line, Anton 44pt, bone, left-aligned, centered vertically. One word in `#B0141B`. No image, or a muted mood grid at 30 percent opacity behind.

**Why now.** Three numbers in Anton 44pt gold, each with a 12pt Barlow caption in grey beneath. One sentence in Barlow 16pt bone across the bottom. Nothing else on the slide.

**Slate at a glance.** Poster grid, uniform ratio, even gutters. Genre tag and status in small caps beneath each. Header in Oswald 28pt.

**Hero.** Full-bleed key art, floor fade. Title in Anton 40pt bone, bottom left above the fade edge. Logline in Playfair Display italic 18pt directly beneath. MC-POV synopsis in Barlow 15pt, maximum 90 words, in a panel at `#111113` occupying the right third at 90 percent opacity. Format strip along the very bottom.

**Why we pick it.** Three panels at `#111113`, even gutters. Each: a gold numeral, a 20pt Oswald claim in caps, and 25 words of Barlow beneath. Comps row along the bottom at reduced size.

**The ask.** Solid background. One sentence, Anton 36pt, bone, with the decision verb in red. Date beneath in gold small caps. Empty otherwise. The emptiness is the point.

---

## 6. What signals cheap

Check every slide against this list before delivering.

- Mixed poster aspect ratios in a grid
- More than one red element
- Pure white type or pure black background
- Centered body paragraphs
- Drop shadows on text
- Three or more typefaces
- Low-resolution comp imagery
- Text sitting on a face
- Multiple competing focal points
- Six bullet points
- Stock photography that looks like stock photography
- A title slide that explains what the format is
- Explicit imagery doing the work that lighting should do
