# Implementation Intelligence

## Contents

- Preserve the design thesis in the real stack
- Repository reconnaissance
- Design-token architecture
- Component contracts and states
- Semantic and accessible implementation
- Layout, styling, and responsive behavior
- Typography, icons, and media assets
- Data, asynchronous states, and forms
- Motion implementation
- PWA implementation
- Performance and maintainability
- Verification and production safety

## Preserve the design thesis in the real stack

Implementation is part of design, not a translation step where taste is lost. Keep the organizing idea, focal hierarchy, content behavior, interaction model, and signature mechanism visible in the running artifact.

Do not weaken a strong concept merely because the first implementation approach is inconvenient. Compare alternatives within the existing stack, including a small feasibility spike. Change the concept only when evidence shows that a different solution is better overall.

At the same time, do not turn visual ambition into fragile absolute positioning, massive runtime cost, inaccessible custom controls, or unmaintainable one-off code. A premium result must survive real use and future change.

## Repository reconnaissance

Before editing:

1. Read project instructions, architecture notes, and relevant package/configuration files.
2. Identify routes, application shell, state management, styling conventions, component primitives, assets, and test infrastructure.
3. Locate the smallest appropriate implementation boundary.
4. Inspect existing states and domain behavior, not only the target screen.
5. Check dependency versions and current official documentation for APIs that matter.
6. Run relevant baseline tests or builds when feasible so pre-existing failures are not misattributed.
7. Preserve unrelated user changes and established naming conventions.

Do not introduce a new framework, design system, state library, styling engine, or component workbench solely to implement a visual direction. Add dependencies only when their value justifies maintenance and they are compatible with the project.

## Design-token architecture

Use tokens to encode decisions and relationships, not to rename every CSS value.

### Layer the system

- **Primitives:** palette steps, type families, spacing steps, radii, timing values.
- **Semantic roles:** surface.canvas, text.primary, action.primary, border.focus, status.error.
- **Component aliases:** special mappings only when a component has a genuine, reusable need.
- **Modes:** light, dark, compact, high-contrast, brand, or platform adaptations where required.

Prefer stable meaning over visual-value names. Avoid both extremes: raw values scattered everywhere and an abstract token for every one-off measurement.

Document:

- role and intended use;
- relationship to other roles;
- themes and modes;
- contrast or pairing constraints;
- exceptional cases and deprecation path.

The [DTCG 2025.10 token format](https://www.designtokens.org/TR/2025.10/format/) can support interchange. At the time of this reference it is described as stable but remains a Community Group Candidate Recommendation, not a W3C Standard. Verify parser and pipeline compatibility rather than assuming universal support.

Use fluid or computed tokens where they solve a real responsive relationship. Keep optically tuned values at the component level when a global scale cannot express them.

## Component contracts and states

Define components by anatomy, semantics, behavior, and content constraints before visual variants.

A useful contract includes:

- purpose and appropriate use;
- accessible role, name, states, and keyboard model;
- content slots and required/optional elements;
- sizes and density behavior;
- visual variants and semantic meaning;
- default, hover, focus, pressed, selected, disabled, busy, error, and success states as applicable;
- loading, empty, partial, and extreme-content behavior;
- responsive and container adaptation;
- motion and interruption;
- performance constraints;
- test cases and examples.

Do not create a separate component for every screen. Do not force genuinely different behavior into one enormous configurable component. Split when semantics or interaction diverge, even if visual styling overlaps.

Implement states in the primitive or shared contract where possible. Screen-level overrides should express product-specific composition, not repair missing focus, disabled, or error behavior repeatedly.

## Semantic and accessible implementation

Use native platform and HTML semantics first. Add ARIA only when native semantics cannot express the pattern and the full behavior is implemented.

Verify:

- headings, landmarks, lists, tables, forms, and link/button distinctions;
- accessible names, descriptions, values, states, and error associations;
- keyboard operation, focus order, visible focus, and return focus;
- focus containment only for true modal behavior;
- live-region announcements for meaningful asynchronous changes without noise;
- pointer, touch, keyboard, and alternative input equivalence;
- contrast, target size, text scaling, zoom, and reflow;
- reduced motion, forced colors, and contrast preferences where relevant;
- dragging alternatives and accessible authentication where applicable.

Visual order and semantic order should remain intelligible together. Do not use CSS reordering to create a reading sequence that conflicts with keyboard or screen-reader navigation.

Accessibility is not a final audit. Build it into primitives, state design, content, and test fixtures.

## Layout, styling, and responsive behavior

Use the layout mechanism best suited to the relationship: normal flow, flex, grid, container queries, positioned overlays, or platform-native equivalents. Avoid recreating document flow with absolute coordinates.

Implement:

- content-driven breakpoints and container adaptation;
- deliberate minimum and maximum sizes;
- logical properties for bidirectional layouts where supported and appropriate;
- explicit scroll ownership and sticky/fixed behavior;
- reserved space for asynchronous content and media;
- safe handling of long words, large numbers, and localization;
- graceful behavior at zoom and large text;
- stable geometry during loading and interaction.

Use mathematical alignment first, then reusable optical corrections. Avoid one-off negative margins and transforms whose purpose is undocumented.

Keep styling scope predictable. Follow the repository's existing CSS, utility, component, native, or design-token conventions. Refactor only when current architecture materially blocks quality and the change is authorized.

## Typography, icons, and media assets

### Fonts

Verify font files, formats, weights, styles, axes, subsets, licenses, and fallback metrics. Load only required resources and prioritize critical text without causing layout shift. Test fallback and failure states, not just successful font download.

Use variable axes deliberately and verify actual support. Do not allow synthetic bold or unintended fallback to define the final visual hierarchy.

### Icons and SVG

Preserve viewBox, optical alignment, stroke behavior, and accessible naming. Use decorative hiding only when the icon is genuinely redundant. Optimize SVG with knowledge of its IDs, styles, titles, and animation dependencies.

### Images and media

Provide appropriate intrinsic dimensions, responsive sources, crop behavior, loading priority, alternative text, and failure states. Art-direct crops for important compositions rather than relying on one center crop everywhere. Avoid autoplay or animated media that harms access, data use, or performance.

## Data, asynchronous states, and forms

Design implementation around state truth.

Distinguish:

- initial loading and subsequent refresh;
- empty result and failed request;
- cached, stale, current, and partial data;
- local optimistic state and authoritative confirmation;
- queued, synchronizing, rejected, and conflicted work;
- unavailable, permission-limited, and redacted values;
- zero, null, missing, and not-applicable data.

Preserve user input through validation, latency, navigation, and retry. Prevent duplicate submissions without hiding the reason submission is unavailable. Use server semantics and integration contracts as authoritative; do not change them for visual convenience.

Create fixtures that represent minimum, typical, maximum, malformed, and pathological content. Mocks should expose realistic states, not make the design artificially flawless.

## Motion implementation

Implement motion through explicit states and transitions rather than unrelated timeouts.

- Coordinate route, component, and data state.
- Support interruption and rapid repeated input.
- Preserve focus and semantic state independently of animation timing.
- Use platform-native or existing motion infrastructure when sufficient.
- Add a motion library only for capabilities that justify it.
- Respect reduced motion in the same component contract.
- Measure actual rendering and memory behavior.
- Keep a nonanimated path that remains complete and understandable.

For scroll and gesture handlers, batch geometry work and avoid synchronous layout loops. Do not use animation completion as the sole trigger for authoritative business actions.

## PWA implementation

When automatic detection identifies a confirmed, partial, or intended PWA, read `pwa-design.md` before changing installation, offline, viewport, or standalone behavior.

Inspect at minimum:

- manifest linkage, identity, icons, start URL, scope, and display modes;
- browser versus standalone navigation and external-link behavior;
- `viewport-fit=cover` and safe-area allocation where edge-to-edge layout is used;
- dynamic viewport, VisualViewport, and keyboard behavior;
- Back, deep-link, tab, scroll-restoration, and overlay contracts;
- touch gestures, overscroll, and system-navigation conflicts;
- service-worker cache semantics, privacy, offline states, outbox, and update lifecycle;
- platform capability detection and fallback;
- separate browser and installed validation surfaces.

Do not add a manifest or service worker solely to make an ordinary visual redesign appear complete. Do not force standalone installation, disable zoom, block all overscroll, or assume VirtualKeyboard, Background Sync, push, or hardware APIs are universally available.

Preserve a complete browser experience. Never reload active user work merely to accelerate a service-worker update.

## Performance and maintainability

Set performance budgets around critical routes and interactions. Measure before optimizing and choose the highest-leverage intervention.

Consider:

- critical resource and route payload;
- main-thread work and long tasks;
- font and media loading;
- layout stability and asynchronous geometry;
- list, table, chart, and visualization cost;
- image decoding and memory;
- large visual effects and continuous animation;
- caching, stale data, and network behavior;
- long-lived session cleanup and listener management.

Keep implementation understandable to the existing team. Prefer a small set of coherent primitives, explicit contracts, and documented exceptions over clever abstractions. Remove dead variants and one-off experiments after a direction is selected.

A compiling build, lint pass, or low bundle size does not establish smooth interaction or premium visual quality. Combine technical metrics with rendered and behavioral inspection.

## Verification and production safety

Use layered verification proportionate to risk:

- type, lint, and formatting checks for contract consistency;
- unit tests for logic and state transitions;
- component tests for semantics and interaction;
- integration or end-to-end tests for critical flows;
- accessibility automation plus manual checks;
- visual capture and regression for meaningful states;
- performance profiling under representative workloads;
- browser, device, and installed-surface tests appropriate to the support matrix.

Preserve business logic, access control, integrations, and deployment state unless changes are authorized. Never expose secrets, user data, or proprietary assets to unapproved services. Do not publish or deploy merely because implementation and tests succeeded.

Report separately:

1. implementation changes made;
2. checks actually executed and their results;
3. visual and behavioral evidence inspected;
4. defects fixed and regressions observed;
5. unverified environments and residual risks;
6. follow-up requiring user, backend, release, or specialist action.