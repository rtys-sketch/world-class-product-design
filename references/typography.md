# Typography

## Contents

- Typography as information architecture
- Select and evaluate typefaces
- Build a role-based type system
- Pairing and contrast
- Variable fonts and optical sizing
- Size, weight, width, and tracking
- Line height, measure, and paragraph rhythm
- Alignment, rag, and optical correction
- Numerical typography
- Multilingual and bidirectional typesetting
- Product-specific typography
- Validation protocol

## Typography as information architecture

Type communicates content, hierarchy, interaction, tone, and often brand identity simultaneously. Treat every text style as a semantic role, not a collection of visual attributes.

Start with the content inventory:

- page or view title;
- section and group headings;
- body and long-form reading;
- labels and control text;
- metadata and provenance;
- navigation and wayfinding;
- numerical readouts and tabular data;
- annotations, errors, and help;
- display or editorial moments;
- legal, localized, and accessibility-critical text.

Assign styles only after these roles and their relationships are clear. A type scale cannot compensate for an undefined content hierarchy.

## Select and evaluate typefaces

Choose type for actual product conditions.

### Functional criteria

- required writing systems, glyphs, punctuation, symbols, and currency support;
- readable distinction between ambiguous characters such as `I`, `l`, `1`, `O`, and `0`;
- appropriate x-height, aperture, spacing, and stroke contrast for intended sizes;
- useful weights and widths without excessive download or rendering cost;
- tabular, lining, oldstyle, or proportional figures as required;
- hinting and rendering on target operating systems and displays;
- licensing for product, web, embedding, and redistribution contexts;
- variable-font support and axis behavior where beneficial.

### Expressive criteria

Assess the typeface's construction and tone: geometric, humanist, grotesque, transitional, slab, monospace, calligraphic, or another model. Use these as descriptive lenses, not rigid categories. Ask whether its rhythm and detail support the product genome.

Do not choose a face only because a prestigious product uses it. The same font can feel precise in one composition and generic in another.

### Practical font tests

Set the same representative content in candidate fonts and compare:

- dense labels at the smallest intended size;
- a long paragraph with links and emphasis;
- large display copy with real word lengths;
- mixed letters, numbers, punctuation, and currencies;
- required locales and fallback behavior;
- regular, medium, and semibold hierarchy on ordinary displays.

## Build a role-based type system

Define each role by purpose first, then attributes:

| Role | Primary requirement | Typical risk |
|---|---|---|
| Display | Establish editorial or brand emphasis | Excessive size crowds out the task |
| View title | Orient the user and identify the object or area | Competes with alerts or primary content |
| Section heading | Divide content into scannable groups | Too many levels create visual chatter |
| Body | Sustain comfortable reading | Insufficient line height or excessive measure |
| Label | Identify controls and data | Truncation, weak contrast, ambiguous association |
| Metadata | Provide secondary context without disappearing | Over-suppression makes useful information illegible |
| Caption | Explain media or supplementary content | Used as an excuse for essential tiny text |
| Numeric | Support reading, comparison, and alignment | Proportional figures cause jitter or weak column scanning |
| Code | Preserve exact characters and structure | Font fallback and wrapping obscure meaning |

Use a limited set of sizes with semantic aliases. A modular scale can generate candidates, but adjust for x-height, content density, viewport, and actual perception. Two fonts at the same nominal size may not look equally large.

## Pairing and contrast

Pair typefaces only when the second family performs a distinct job: long-form reading versus display, code versus prose, data versus narrative, or a specific script.

Strong pairings usually have:

- clear role contrast;
- compatible vertical proportions and spacing rhythm;
- coordinated weight behavior;
- no competition for the same visual role;
- a reason tied to content or identity.

Weak pairings rely on superficial novelty, mix several display voices, or use two similar sans-serif families with no perceptible benefit. One versatile family or a superfamily is often stronger.

When mixing scripts, do not force identical visual treatment. Match perceived size, weight, baseline, and line height through testing with native readers where possible.

## Variable fonts and optical sizing

Variable fonts can tune weight, width, optical size, slant, grade, and custom axes continuously. Use axes to solve design problems, not because variation is available.

- **Weight (`wght`):** establish hierarchy while checking rendering and contrast at each size.
- **Width (`wdth`):** adapt labels or responsive display type; avoid distortion and excessive compression.
- **Optical size (`opsz`):** let supported fonts adjust glyph detailing for small or large settings.
- **Grade:** adjust stroke appearance without changing advance widths where the font supports it; useful for theme or rendering differences.
- **Custom axes:** inspect the font designer's intended use and test across the range.

On the web, optical sizing is commonly automatic when supported and enabled, but verify the actual font and browser output. Do not assume every variable font has an `opsz` axis. Define deliberate fallbacks if animation or fine axis control is unavailable.

Animating font axes can cause reflow, rasterization cost, and readability changes. Prefer stable text during critical interaction; test any variation on real content and hardware.

## Size, weight, width, and tracking

### Size

Choose sizes by reading distance, viewport, density, and role—not only by a mathematical scale. Check browser zoom, system text scaling, and user defaults. Large display text should remain proportional to content and available space rather than becoming a screenshot-only gesture.

### Weight

Use weight to clarify role and state. More weight is not always more hierarchy; it can reduce counters, darken a whole region, and flatten emphasis. Light text may disappear on ordinary displays or bright environments. Verify actual rendered weights, especially when synthetic bolding is possible.

### Width

Condensed styles can improve data density or create editorial character but may reduce word recognition and localization resilience. Extended styles can add presence but consume line length. Do not horizontally scale a font artificially to imitate a width axis.

### Tracking

Adjust letter spacing relative to size, font design, case, and script:

- large display settings may benefit from tighter spacing;
- small uppercase labels often need additional spacing;
- body text usually needs less manual tracking adjustment;
- numeric and code contexts require their own inspection;
- scripts have different spacing norms; do not apply Latin rules universally.

Treat numeric starting values from other projects as hypotheses. Evaluate complete words and lines, not isolated glyphs.

## Line height, measure, and paragraph rhythm

Line height should support the font's ascenders, descenders, x-height, script, measure, and density. Tight leading can make display type energetic but collide across languages. Loose leading can make body text feel fragmented.

Line length affects reading rhythm and return sweeps. Start with a comfortable prose measure, then test actual content and zoom. Narrow columns of long prose and very wide single-line paragraphs are both suspicious.

Maintain vertical rhythm through relationships among:

- heading space before versus after;
- paragraph spacing versus line spacing;
- list item separation;
- caption-to-media distance;
- label-to-control and help-to-control distance;
- baseline alignment across adjacent columns.

Do not force all text onto a rigid baseline grid if it produces bad component behavior or localization failures. Use baseline alignment where comparison benefits from it.

## Alignment, rag, and optical correction

Choose alignment according to script, task, and composition:

- start-aligned text generally supports consistent reading origins;
- centered text can suit short ceremonial or editorial moments but becomes difficult in long or uneven blocks;
- justified text needs careful hyphenation and spacing control to avoid rivers;
- end alignment may help numerical or complementary relationships but should not impede reading.

Inspect the rag—the contour of line endings. Bad rag can undermine an otherwise strong display composition. Rebalance headings deliberately, but do not insert fragile manual line breaks that fail under localization or responsive resizing.

Use optical corrections for:

- punctuation at display sizes;
- quotation marks and bullets outside the primary text edge where appropriate;
- rounded glyphs that appear to fall short of a straight alignment edge;
- icon-and-label pairs with unequal visual mass;
- negative tracking around specific display pairs only when the font and tooling support it robustly.

Prefer font-level kerning and reusable component rules over manual per-letter positioning.

## Numerical typography

Numbers often carry the product's core meaning. Design them as a dedicated system.

### Select figure behavior

- **Tabular figures:** align digits across rows and live updates; useful for tables, timers, metrics, and financial values.
- **Proportional figures:** improve rhythm in narrative text where column alignment is irrelevant.
- **Lining figures:** align with uppercase and interface labels.
- **Oldstyle figures:** integrate with some long-form editorial settings when supported and appropriate.

### Preserve meaning

Align decimal separators, units, signs, and currency consistently. Distinguish a true minus sign from a hyphen where semantics matter. Define behavior for:

- positive, negative, zero, null, unavailable, estimated, and approximate values;
- very large and very small magnitudes;
- percentages and basis points;
- currency symbols and locale-specific separators;
- units that should remain attached to values;
- redacted or permission-limited values.

Never use color as the only sign or status cue. Avoid rounding that changes a decision, and expose precision or methodology when users need it.

### Prevent update jitter

For live values, reserve appropriate width, use stable figure behavior, and avoid layout shifts when digits or units change. Do not let animation delay the readable final value.

## Multilingual and bidirectional typesetting

Design with real translations or credible stress samples early.

- Allow text expansion and contraction without fixed-height clipping.
- Support line breaking and hyphenation appropriate to the language.
- Test CJK line breaking, punctuation, font fallback, and vertical metrics independently.
- Check complex-script shaping and combining marks.
- Mirror layout and directional icons where appropriate in right-to-left contexts; do not mirror symbols whose meaning is not directional.
- Keep embedded numbers, dates, brand names, and mixed-direction strings intelligible.
- Use locale-aware formatting rather than string concatenation.
- Ensure fallback fonts do not create abrupt size, weight, or baseline changes.

A layout that only works in English is not typographically finished.

## Product-specific typography

### Dashboards and tables

Prioritize column scanning, numeric alignment, concise headers, and distinguishable units. Use weight and spacing to separate metrics rather than making every value oversized. Consider accessible header associations independently of visual style.

### Forms

Keep labels persistently available, associate help and errors spatially and semantically, and make input text more prominent than decorative placeholders. Avoid using placeholder as the sole label. Support zoom, autofill, and long values.

### Mobile

Respect platform text scaling and dynamic type conventions. Preserve hierarchy at larger accessibility sizes by reflowing and reprioritizing rather than uniformly shrinking or truncating.

### Editorial and marketing

Use expressive display type, controlled rag, art-directed line breaks, and media relationships. Keep body reading comfortable and ensure the expressive layer does not undermine navigation or performance.

### Developer tools

Use monospace selectively for code, identifiers, and exact data—not as an automatic brand signal for all text. Distinguish code styling from general UI labels.

## Validation protocol

1. Verify the correct font files and axes actually load; inspect fallback states.
2. Test every semantic role with real minimum and maximum content.
3. Inspect small text, large display text, and numbers on ordinary and high-density displays.
4. Check contrast, zoom, text scaling, and increased-spacing accessibility settings.
5. Test long translations, CJK, RTL, mixed scripts, and locale-formatted values where supported.
6. Inspect widows, orphans, rag, clipping, truncation, and unwanted wrapping across viewports.
7. Compare light and dark themes; weight and contrast may need different treatment.
8. Measure font-related loading and layout shift; do not sacrifice stability for a minor stylistic gain.
9. Review semantic headings and accessible names independently of visual type roles.
10. Record unverified environments rather than assuming typographic fidelity.