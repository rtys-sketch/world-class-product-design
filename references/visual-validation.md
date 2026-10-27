# Visual and Rendered Validation

## Contents

- Evidence levels and honesty
- Prepare the running artifact
- Build the validation matrix
- Stabilize captures without hiding behavior
- Visual inspection passes
- Responsive and adaptive inspection
- PWA browser and installed validation
- Accessibility and input inspection
- Motion and performance evidence
- Before/after and visual regression
- Defect classification and iteration
- Evidence report

## Evidence levels and honesty

Use the strongest available evidence and name it accurately.

| Level | Evidence | What it can support | What it cannot prove alone |
|---|---|---|---|
| L0 — Intent | Thesis, specification, mockup, source | Intended structure and style | Rendered fidelity, behavior, usability |
| L1 — Static render | Screenshots of actual output | Composition, typography, color, clipping, visible states | Interaction, motion, semantics, performance |
| L2 — Interactive render | Running product exercised through tasks | Behavior, state transitions, keyboard, responsive interaction | Real-device ergonomics or broad compatibility beyond tested environment |
| L3 — Device/platform | Real browser, OS, device, or installed surface | Platform behavior, safe areas, lifecycle, touch, installed PWA | Untested devices, universal performance, user outcomes |
| L4 — Measured performance/accessibility | Traces, automated and manual specialist checks | Specific measured or inspected properties | Complete accessibility or universal quality from a score |
| L5 — User evidence | Representative users performing defined tasks | Observed task behavior and reported experience for that sample | Universal preference or outcomes beyond study limits |

Do not describe L0 or L1 evidence as “fully tested.” A compiling build is not visual validation. If suitable rendering tools are unavailable, mark visual fidelity unverified and deliver only the claims supported by source or static evidence.

## Prepare the running artifact

1. Use the project's actual run and build path where feasible.
2. Resolve dependencies and environment requirements without altering production or unrelated configuration.
3. Identify the exact revision, route, account role, data fixture, and feature flags.
4. Verify that the rendered artifact includes the intended change; avoid inspecting a stale server or wrong route.
5. Prepare representative data and permissions.
6. Record browser, OS, viewport, device pixel ratio, theme, locale, and input mode.
7. For PWAs, record browser versus installed display mode, installation path, service-worker state, and cache condition.

If the app cannot run, distinguish setup, permission, dependency, and product failures. Report or resolve them; do not substitute an imagined screenshot.

## Build the validation matrix

Select a representative matrix from product risk and supported environments rather than capturing every combination indiscriminately.

### Viewports and physical conditions

Include:

- narrowest supported width and a typical small phone;
- medium and large phones where mobile is supported;
- short viewport and landscape;
- tablet, foldable, or split-screen where relevant;
- laptop, wide desktop, and resizable windows where relevant;
- browser zoom and large text;
- orientation changes and intermediate widths;
- safe-area and system-chrome variations.

Use product content breakpoints, not only popular device presets. Common CSS widths such as 320, 360, 390, and 430 can seed a phone matrix but are not proof of device coverage.

### Visual modes

- light, dark, and system-driven themes;
- increased contrast, forced colors, and reduced transparency where supported;
- reduced motion and default motion;
- brand, white-label, or density modes;
- default and enlarged text;
- required locales and bidirectional layouts.

### Content and data states

- first use and empty;
- loading and delayed;
- partial and stale;
- typical and ideal;
- error, offline, and reconnecting;
- success and updated;
- read-only, permission-limited, and expired;
- minimum, maximum, long, malformed, and extreme values;
- zero, null, missing, negative, and unavailable data where meaningful.

### Roles and tasks

Test the highest-value task for each materially different role. Include deep links, interrupted flows, recovery, and return visits rather than only fresh default screens.

## Stabilize captures without hiding behavior

For visual comparison:

- wait for fonts, images, and critical asynchronous content;
- use deterministic data, dates, identities, and locale;
- disable nonessential random content;
- freeze or complete animation only for static capture;
- hide cursor and focus only when not evaluating them;
- keep browser, platform, pixel ratio, and color profile consistent for pixel comparisons;
- capture the same scroll position and component state;
- control service-worker and cache state for PWA comparisons.

Do not stabilize away the behavior being tested. Motion, loading, focus, keyboard, live updates, and offline transitions need interactive captures or recordings, not frozen mock states.

Keep capture mode separate from normal interaction. Loading or runtime errors should fail the capture process rather than producing a misleading blank or partial image.

## Visual inspection passes

Inspect the full view and magnified crops. Use more than one pass so details do not distract from structure.

### Pass 1 — Product and focal order

- Is the current task and primary content obvious?
- Does the intended focal sequence hold without explanation?
- Do decorative elements outrank useful information?
- Does the design thesis remain recognizable?

### Pass 2 — Composition and responsiveness

- Check alignment anchors, balance, grouping, density, and negative space.
- Look for accidental containers, near-miss edges, overflow, clipping, and stranded content.
- Inspect intermediate widths, not only named breakpoints.
- Verify that sticky and fixed regions do not hide content.

### Pass 3 — Typography and content

- Verify actual font loading, weights, optical sizing, fallback, and rendering.
- Inspect line breaks, rag, truncation, widows, labels, numbers, and units.
- Stress long translations, CJK, RTL, mixed scripts, and text scaling.
- Check that empty and error copy is specific and useful.

### Pass 4 — Color and materials

- Inspect contrast in every state and over actual imagery or gradients.
- Check surface hierarchy, border visibility, shadows, transparency, and theme adaptation.
- Look for banding, gamut fallback, muddy colors, and inconsistent light logic.
- Verify that grayscale still preserves meaning and hierarchy.

### Pass 5 — Components and states

- Compare repeated primitives for consistent anatomy, spacing, iconography, and behavior.
- Inspect hover, focus, pressed, selected, disabled, busy, and validation states where applicable.
- Check minimum and maximum content, nested components, and overlay collisions.

### Pass 6 — Signature and detail

- Evaluate whether the signature mechanism survives implementation and ordinary states.
- Inspect optical alignment, radii, hairlines, icons, crops, and transitions between screens.
- Remove accidental detail rather than adding compensatory decoration.

## Responsive and adaptive inspection

At each significant composition change:

1. verify content priority and available actions;
2. check that moved regions preserve labels and relationships;
3. preserve route, selection, focus, filters, drafts, and meaningful scroll;
4. test keyboard and touch equivalents for changed controls;
5. inspect table, navigation, overlay, and media transformations;
6. resize continuously through the breakpoint to detect transient defects;
7. test both short and tall content so the layout is not tuned to one capture.

Check horizontal overflow at the document and component level. Do not conceal overflow as a fix unless clipping is intentional and content remains accessible.

## PWA browser and installed validation

When PWA evidence or intent exists, apply `pwa-design.md` and separate these surfaces:

- Android Chrome in a normal browser tab;
- Android installed PWA on a supporting device/browser;
- iOS Safari in a normal browser tab;
- iOS/iPadOS Home Screen web app;
- tablet, foldable, and desktop installed modes where supported.

For each available surface, inspect:

- launch identity, start URL, deep links, and app switcher presence;
- safe areas, status/navigation chrome, and dynamic browser bars;
- visible Back/up, Android system Back, browser Back, and iOS edge behavior where available;
- bottom navigation, tab history, and scroll restoration;
- keyboard opening, resizing, dismissal, and focused-input visibility;
- overscroll, pull-to-refresh, edge gestures, and custom gesture conflicts;
- cold/warm launch, background/resume, offline launch, and reconnection;
- service-worker update with active work and cached-data freshness;
- installation guidance and fallback on unsupported surfaces.

Do not claim installed-PWA validation from desktop device emulation, iOS behavior from an Android test, or smooth real-device performance from screenshots. Mark unavailable surfaces unverified.

## Accessibility and input inspection

Combine automated and manual methods.

Inspect:

- keyboard-only completion, focus order, focus visibility, and return focus;
- obscured focus under sticky regions and overlays;
- accessible names, roles, states, headings, landmarks, and error associations;
- screen-reader behavior on supported combinations;
- contrast, target size, spacing, and non-color cues;
- zoom, reflow, text spacing, and large text;
- reduced motion, forced colors, and contrast preferences;
- dragging and gesture alternatives;
- touch, pointer, keyboard, voice, and switch input where relevant.

Run automated checks in representative states, including open dialogs, errors, and dynamic content. A high automated score does not establish task accessibility.

## Motion and performance evidence

Use recordings and traces for claims that screenshots cannot support.

Inspect:

- input acknowledgment and delay;
- route and overlay continuity;
- gesture tracking and cancellation;
- rapid repeated input and interruption;
- loading, failure, and rollback;
- reduced-motion substitution;
- frame pacing, long tasks, layout shifts, and memory under representative workloads.

Record the actual device/browser and whether recording or profiling could affect results. Avoid converting a visual impression into an exact frame-rate claim.

## Before/after and visual regression

Compare matched conditions: same route, role, data, state, viewport, theme, and capture setup.

Use diffs to localize change, not to decide whether the change is good. A baseline may contain the defect being fixed. Review every meaningful difference and classify it as:

- intended improvement;
- intended neutral change;
- unexplained difference requiring investigation;
- regression;
- environment noise or nondeterministic capture.

For redesigns, pair visual comparison with the original root-cause diagnosis. For component systems, include integration screens so isolated workbench approval does not hide product-level breakage.

## Defect classification and iteration

Classify before fixing:

| Type | Example | Response |
|---|---|---|
| Implementation defect | Font failed, incorrect token, overflow, missing state | Fix implementation and re-render |
| Local design defect | Weak label hierarchy or cramped control | Refine the component or layout |
| Systemic design defect | Inconsistent semantic colors or navigation across screens | Change shared contracts and migrate dependents |
| Weak premise | Attractive screen supports the wrong task or object model | Return to structure or concept exploration |
| Evidence gap | Installed iOS behavior unavailable | Mark unverified and obtain appropriate environment if required |
| Environment artifact | Dynamic timestamp or platform font diff | Stabilize or document; do not “fix” the product incorrectly |

Iterate in root-cause order: functionality and access, structure, composition, typography/color, component behavior, material/motion detail. Re-render after consequential changes and inspect for regressions beyond the edited region.

## Evidence report

Use a compact report with no unsupported passes.

| Field | Required content |
|---|---|
| Artifact | Product, route/component, revision, and build/run context |
| Environments | Actual browser, OS, device, viewport, theme, locale, input, and PWA display mode |
| States | Data, role, network, and interaction states exercised |
| Checks performed | Static, interactive, automated, manual, device, or performance checks |
| Evidence inspected | Screenshots, recordings, traces, DOM/accessibility output, and matched diffs |
| Results | Passed, failed, or unverified per relevant condition |
| Defects and fixes | Root cause, severity, intervention, and re-test result |
| Residual risk | Untested surfaces, assumptions, and remaining design concerns |

Do not use “responsive,” “accessible,” “cross-browser,” “native-like,” “offline-ready,” or “production-ready” as blanket claims unless the evidence scope supports them. State exactly what was validated and what remains unknown.