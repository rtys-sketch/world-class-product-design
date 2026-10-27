# Color and Materials

## Contents

- Build a color role system
- Create a usable palette
- OKLCH and perceptual color work
- Contrast and accessibility
- Light, dark, and adaptive themes
- Semantic, brand, and data color
- Surface and depth models
- Shadows, borders, and highlights
- Transparency, blur, and glass
- Gradients and texture
- Validation protocol

## Build a color role system

Start with roles, not swatches. A palette becomes a design system only when colors have stable meanings and relationships.

Define roles for:

- canvas and grouped surfaces;
- raised, sunken, selected, and disabled surfaces;
- primary and secondary text;
- muted text that must remain readable;
- borders, dividers, focus indicators, and scrims;
- primary, secondary, and destructive actions;
- links and interactive affordances;
- informational, success, warning, and error states;
- selection, hover, pressed, and visited states where relevant;
- charts, categories, thresholds, and data emphasis;
- brand expression and illustrative accents.

Separate **semantic roles** from **primitive values**. For example, an action role may reference a blue primitive in one theme and a different tonal value in another without changing meaning.

Do not let token naming fossilize a visual value: `color.action.primary` is more adaptable than `color.blue.button`, provided the role is truly reused for the same meaning.

## Create a usable palette

### 1. Establish the neutral architecture

Neutrals usually carry most of the interface. Build them around surface and text relationships rather than a uniform light-to-dark ramp. Decide whether neutrals are warm, cool, tinted by brand, or deliberately achromatic, then check that tinted neutrals do not distort semantic colors.

### 2. Define tonal families

Create tonal steps for each important family. Preserve distinguishable roles across steps; a mathematically even ramp may not produce perceptually even or useful UI states.

Use tonal families to support:

- resting and interactive states;
- text on different surfaces;
- subtle backgrounds and strong foregrounds;
- light and dark theme mappings;
- data and illustration ranges.

### 3. Set an emphasis budget

Decide where the strongest chroma and contrast may appear. A common allocation is identity, primary action, selection, and critical status. If everything is saturated, saturation stops communicating anything.

### 4. Test in composition

Evaluate palette candidates in a representative screen with real text, controls, charts, and imagery. Isolated swatches hide simultaneous contrast, metamerism, proportion effects, and competition with content.

## OKLCH and perceptual color work

OKLCH represents lightness, chroma, and hue in a perceptually oriented model. It is useful for palette manipulation because changing one dimension often produces more predictable visual relationships than analogous changes in RGB or HSL.

Use it to:

- generate candidate tonal scales;
- hold hue approximately stable while adjusting lightness or chroma;
- compare palette families;
- explore wide-gamut accents with a deliberate fallback;
- reduce accidental saturation shifts between lightness steps.

Do not assume:

- equal OKLCH lightness guarantees equal WCAG contrast;
- equal chroma values look equally saturated across all hues;
- every specified color is displayable on the target device;
- gamut mapping will preserve the intended hue or emphasis;
- perceptual uniformity eliminates the need for visual testing.

Check actual computed and rendered colors, including fallback behavior. For normative color syntax and gamut behavior, consult current CSS Color specifications; for accessibility, use the required conformance method rather than a color-space intuition.

## Contrast and accessibility

Contrast requirements depend on content, size, state, and applicable standard. For WCAG 2.2, commonly relevant thresholds include 4.5:1 for normal text, 3:1 for qualifying large text, and 3:1 for essential non-text visual information under the applicable non-text contrast criterion. Exceptions and definitions matter; verify against the [normative specification](https://www.w3.org/TR/WCAG22/) rather than treating these numbers as a complete accessibility test.

Design beyond minimum ratios:

- Preserve readable muted text; “secondary” should mean lower emphasis, not inaccessible.
- Check text over images and gradients at every responsive crop and state.
- Verify boundaries and state indicators for controls, focus, selection, and charts.
- Never encode meaning through color alone; add text, shape, pattern, position, or iconography as appropriate.
- Test common color-vision deficiencies as a diagnostic, not as a simulation of every user's experience.
- Support forced-colors or high-contrast modes where the platform requires them.
- Do not reduce disabled-state contrast so far that users cannot discover available functionality or understand context.

Alternative contrast models can inform design exploration, but do not substitute them for a legally or organizationally required standard without explicit adoption.

## Light, dark, and adaptive themes

A dark theme is a new material and hierarchy system, not an inversion.

Reconsider:

- surface luminance steps and elevation;
- shadow visibility and colored ambient light;
- text weight and contrast;
- chroma, which can appear more intense on dark surfaces;
- image and illustration treatment;
- dividers, focus rings, disabled states, and selection;
- charts and semantic status backgrounds;
- brand colors whose identity depends on a specific background.

Test in bright and dim environments where possible. Consider user and system preferences, but keep theme switching predictable and preserve the current task and scroll position.

Adaptive translucency or wallpaper-driven color can connect a product to its environment, but content legibility and semantic stability take priority. Provide a controlled fallback when the environment produces a poor combination.

## Semantic, brand, and data color

### Semantic status

Define status by meaning before hue. Success, warning, error, information, pending, offline, and neutral are not interchangeable. Provide distinct foreground, background, border, and icon roles where needed. Check that semantic colors remain distinguishable beside brand accents.

Be cautious with red and green: cultural meaning, color vision, financial-market conventions, and domain semantics vary. Use explicit signs and labels.

### Brand color

A brand accent does not have to appear on every component. Sometimes brand lives in typography, imagery, composition, voice, or one signature moment. If the brand color fails an interactive contrast role, create a suitable functional extension while preserving the brand in appropriate contexts.

### Data color

Separate three jobs:

- **categorical:** distinguish discrete series;
- **sequential:** represent magnitude order;
- **diverging:** represent deviation around a meaningful midpoint.

Do not reuse a categorical palette as a magnitude scale. Keep neutral data distinct from highlighted or actionable data. Provide labels, patterns, shapes, or direct annotation when color alone is insufficient. Consider printing, projectors, and low-quality displays when relevant.

## Surface and depth models

Choose a depth model that matches the product's spatial logic.

| Model | Mechanism | Suitable context | Risk |
|---|---|---|---|
| Flat structural | Space, alignment, type, and divider | Dense tools, reading, utility | Insufficient affordance if interactive boundaries are unclear |
| Tonal | Subtle surface luminance shifts | Grouping, themes, quiet hierarchy | Steps become indistinguishable or create visual banding |
| Outlined | Borders and edge contrast | Forms, compact controls, high-contrast contexts | Excess boxes and visual noise |
| Elevated | Shadow and layered surfaces | Overlays, transient UI, spatial stacking | Arbitrary shadows create fake hierarchy |
| Translucent | Context visible through a treated surface | System chrome, contextual overlays, media | Legibility depends on unpredictable content |
| Textural | Grain, material, lighting, illustration | Editorial, expressive, tactile products | Noise, fatigue, performance, and reduced clarity |

Define what each layer means. For example: canvas → grouped content → interactive raised object → popover → modal → critical alert. Avoid arbitrary elevation levels disconnected from behavior.

## Shadows, borders, and highlights

### Shadows

Use shadow to communicate elevation, overlap, or light—not to make every element “premium.” Establish a small family with coherent direction and softness. Larger, softer shadows generally suggest different separation than small, crisp ones, but the exact values must fit scale and theme.

Colored shadows can integrate with brand or ambient light; they can also look muddy or neon. Test on actual surfaces.

### Borders

Borders can define hit regions, group content, and preserve accessibility where shadows disappear. Tune them per theme and surface. Check that a border does not create unintended double lines around nested components.

### Highlights and inner edges

Subtle highlights can suggest material thickness or improve separation. Use one consistent light logic. Multiple incompatible highlights and shadows make components look assembled from different systems.

## Transparency, blur, and glass

Use translucency only when seeing context through a layer improves orientation or material expression.

Before using glass:

1. Identify the user benefit of background visibility.
2. Control the range of content that can appear behind the surface.
3. Add sufficient tint, opacity, border, or fallback to preserve contrast.
4. Test text, controls, and focus over bright, dark, busy, and animated content.
5. Provide an opaque or reduced-transparency alternative where needed.
6. Measure rendering cost on target hardware, especially for large or scrolling blurred regions.

Blur is not contrast. A blurred image can still make text unreadable. Backdrop effects may also be unsupported, expensive, or visually different across platforms.

## Gradients and texture

### Gradients

Use gradients to suggest light, depth, brand atmosphere, data magnitude, or directional movement. Avoid using them as generic background filler.

Check:

- banding and compression on target displays;
- text contrast along the entire gradient;
- hue transitions that pass through muddy or unintended colors;
- interpolation color space and browser consistency;
- static and reduced-transparency fallbacks;
- whether the gradient changes meaning across themes.

### Texture

Texture can humanize flat digital surfaces or support a material metaphor. Keep scale and contrast subordinate to content. Avoid high-frequency noise behind small text, and inspect tiling, moiré, and export artifacts.

Use generative or procedural textures only with deterministic output where visual regression matters.

## Validation protocol

1. Test semantic roles in representative screens, not just palette boards.
2. Measure required text and non-text contrast in every state and theme.
3. Inspect color-vision, grayscale, forced-color, and high-contrast behavior.
4. Test light, dark, and environmental variations with real content and imagery.
5. Verify wide-gamut and fallback colors on supported and unsupported devices.
6. Inspect transparency over worst-case backgrounds and during motion.
7. Test chart palettes with actual category counts, thresholds, and labels.
8. Inspect shadows, hairlines, gradients, and texture at different pixel densities and zoom levels.
9. Measure backdrop-filter, large-shadow, and animated-gradient performance where used.
10. Confirm that removing color still leaves meaning, hierarchy, and interaction recoverable.