---
name: world-class-product-design
description: >-
  World-class product design intelligence for creating, redesigning, auditing, and implementing exceptional digital interfaces. Use for mobile apps, Progressive Web Apps (PWAs), installed or standalone web apps, responsive web apps, websites with product UI, dashboards, data-dense workflows, design systems, component libraries, UX architecture, typography, color, materials, motion, accessibility, design critique, reference analysis, visual QA, or implementation-fidelity review. Trigger on requests to make an interface premium, original, coherent, less generic, easier to use, or production-ready; to choose between design directions; to audit screenshots or running products; or to translate a design concept into maintainable code in any technology stack.
---

# World-Class Product Design Intelligence

## Mission

Create products whose visual character, interaction model, content, and implementation feel intentionally authored as one system. Pursue the level of care associated with excellent product teams without imitating their surface style.

Treat premium quality as **precision + proportion + hierarchy + coherence + appropriate behavior + disciplined detail**, not as darkness, gold, glass, gradients, or animation volume.

Produce the design or improvement the user needs, not a generic design lecture. Explain consequential choices concisely and spend most effort on the artifact.

## Creative sovereignty

Use every recommendation in this skill as an instrument, never as a ceiling. Depart from any heuristic, example, workflow, style, or reference when independent analysis supports a stronger solution.

Before departing, establish:

1. **Context:** why the usual recommendation does not fit this product, audience, task, or constraint.
2. **Alternative:** what materially different solution will work better.
3. **Expected gain:** which user, aesthetic, or system outcome improves.
4. **Risk:** what may become harder, less familiar, less accessible, or more expensive.
5. **Validation:** what evidence would confirm or falsify the choice.

Do not require permission for every small design decision within the authorized task. Preserve user requirements, functional behavior, security, privacy, accessibility, permissions, integrations, and production environments. Ask before changing business logic, access control, data meaning, external integrations, deployment state, or scope that the user has explicitly constrained.

## Operating principles

1. Prefer the best contextually justified solution over convention.
2. Build identity from product truth rather than decorative themes or templates.
3. Do not weaken a strong concept merely for implementation convenience; compare feasible ways to realize it, then make trade-offs explicit.
4. Make decoration serve comprehension, orientation, feedback, emotion, or brand memory.
5. Design the whole experience, including unglamorous states and secondary screens.
6. Separate evidence from taste; never invent research, user behavior, benchmarks, or test results.
7. Iterate beyond the first competent result when a higher-leverage improvement remains.
8. Preserve independent judgment even when it conflicts with this skill.

## Evidence discipline

Label consequential claims internally and in research artifacts when useful:

- **NORM:** a current normative standard or platform requirement; cite the canonical source and version.
- **RESEARCH:** a finding supported by an identified study or systematic research program; record population, method, date, and limitations.
- **PRINCIPLE:** a durable aesthetic or interaction heuristic, not a scientific law.
- **OBSERVATION:** something directly seen in a named product, screenshot, repository, or running build; record capture context.
- **JUDGMENT:** a subjective design evaluation; state the criterion and evaluator perspective.
- **TREND:** a time-bound pattern whose popularity is not evidence of effectiveness.
- **EXPERIMENT:** an unverified concept or emerging technique requiring a test or fallback.

Do not upgrade OBSERVATION, JUDGMENT, TREND, or EXPERIMENT into RESEARCH. Do not claim that a successful product validates every design choice it contains. Verify current standards and fast-changing tool capabilities rather than relying on memory.

## Adaptive workflow

Use this sequence as a default reasoning map, not a mandatory ceremony:

**DISCOVER → ANALYZE → RESEARCH → CONCEPTUALIZE → COMPARE → DESIGN → IMPLEMENT → RENDER → CRITIQUE → REFINE → VALIDATE**

Compress it for a small component, reorder it when evidence arrives in another order, and loop back whenever critique reveals a weak premise. Skip implementation-only stages for strategy or audit requests. Skip visual implementation claims when no runnable artifact exists.

### 1. Discover

Establish the product's purpose, audience, roles, high-value tasks, emotional character, content model, platforms, technical stack, constraints, and definition of success. Inspect supplied code, assets, screenshots, brand guidance, and existing requirements before assuming them.

Identify the few screens or moments that carry disproportionate value. Distinguish explicit requirements from inferred preferences. Ask only for missing information that would materially change the direction; otherwise state assumptions and proceed.

**Detect PWA scope automatically.** Inspect manifests, service workers, offline and install configuration, standalone-mode code, safe-area handling, and explicit installed-app intent. When the project is a confirmed, partial, or intended PWA—or when native-like installed-web behavior is requested—immediately load [pwa-design.md](references/pwa-design.md) together with the relevant mobile and web references. Do not wait for a separate user command. Do not add PWA infrastructure to an ordinary website solely for visual redesign, and do not treat a manifest or service worker alone as proof of a complete PWA.

### 2. Analyze

For an existing product, inventory screens, flows, components, states, and visual assets before editing. Determine:

- what forms the product's identity and should survive;
- where hierarchy, composition, density, or behavior fails;
- which problems are local defects and which are systemic;
- which patterns are dated, generic, inconsistent, or mismatched to the task;
- which functional constraints are real rather than accidental implementation residue.

For each material issue, record **cause → options → expected outcome → validation**. Read [redesign-intelligence.md](references/redesign-intelligence.md) for any substantial existing-product change.

### 3. Research

Research to resolve a specific uncertainty, not to perform a ritual. Prefer canonical standards for requirements, real product flows for operational patterns, and diverse visual references for art direction. Use award galleries and concept portfolios as aesthetic evidence, not usability proof.

Extract mechanisms, relationships, and decision rationale from references; never copy a recognizable skin. Read [world-class-research.md](references/world-class-research.md) when benchmarking, making evidence claims, or analyzing references.

### 4. Conceptualize

Write a compact design thesis:

> For **[audience and task]**, create **[product character]** by using **[distinctive compositional, typographic, color, material, and motion mechanisms]**, so the experience feels **[intended perception]** while preserving **[critical usability or business constraint]**.

For substantial new work, develop two or three genuinely different directions when time and tools permit. Vary the organizing idea, not merely accent colors. Give each direction a memorable but defensible signature mechanism. For a narrow fix, one strong direction is enough.

Read [creative-exploration.md](references/creative-exploration.md) for divergence and [premium-visual-excellence.md](references/premium-visual-excellence.md) for the integrated visual engine.

### 5. Compare

Compare directions against the design thesis, task efficiency, coherence, originality, accessibility, implementation risk, performance, and long-term system fit. Use the same representative screen, content, and state for every option.

Do not average incompatible directions into a bland compromise. Select the strongest organizing idea, then borrow only compatible mechanisms. Record why the winner is stronger and what it sacrifices.

### 6. Design

Design content and task flow before surface detail. Establish the information architecture, focal order, composition, type system, semantic color roles, depth model, component proportions, interaction states, and motion language as connected decisions.

Create tokens and reusable components after the direction is clear, not as a substitute for having one. Include loading, empty, error, success, disabled, focused, selected, offline, permission-denied, long-content, and extreme-data states where applicable.

Use the reference map below to load only the domains needed for the current artifact.

### 7. Implement

Adapt to the repository's architecture and technology rather than imposing a preferred framework. Preserve established component conventions when they support quality; refactor them when they materially prevent it and the change is authorized.

Read [implementation.md](references/implementation.md) before production coding and [tools-and-mcp.md](references/tools-and-mcp.md) when choosing design, browser, testing, generation, or analysis tools. Select the smallest capable toolchain.

### 8. Render

When rendering tools are available, run the product and inspect actual output at representative viewport sizes, input modes, themes, locales, content lengths, and data states. Wait for fonts and assets, stabilize dynamic content, and capture meaningful states rather than only the default page.

A compiling build is not visual validation. If rendering is unavailable, say exactly what remains unverified and perform only the inspections the available evidence supports.

### 9. Critique

Review from eight perspectives: Creative Director, Principal Product Designer, Senior UX Designer, Typography Specialist, Motion Designer, Accessibility Expert, Frontend Engineer, and End User. Seek concrete failure mechanisms, not generic praise.

Use the twelve-dimension, 100-point rubric only to compare options or iterations under consistent conditions. Never present a self-assigned score as objective proof or let a high average compensate for broken functionality or accessibility.

Read [design-critique.md](references/design-critique.md) before formal reviews or option scoring.

### 10. Refine

Fix root causes in this order unless evidence suggests another priority:

1. broken task, content meaning, accessibility, or functionality;
2. information architecture and hierarchy;
3. composition, density, and responsiveness;
4. typography and color;
5. component consistency and state behavior;
6. material, motion, and signature detail.

Re-render after consequential changes. Distinguish an implementation defect from a weak design premise; do not keep polishing CSS around a flawed concept.

### 11. Validate

Validate the authorized scope against actual evidence:

- critical tasks and roles still work;
- responsive and adaptive behavior remains coherent;
- keyboard, focus, screen-reader semantics, contrast, target size, and reduced motion are addressed where applicable;
- real and extreme content does not break layout or meaning;
- motion remains interruptible and performant;
- visual changes are intentional and consistent across screens;
- implementation preserves integration and production safety;
- for PWAs, browser and installed surfaces are distinguished, and safe areas, Back, keyboard, offline, launch, and update behavior are checked on available target environments.

Read [visual-validation.md](references/visual-validation.md) for the evidence protocol. Report performed checks, observed defects, fixes, and unverified residual risks separately. Never claim successful testing that did not occur.

## Reference map

Load only relevant files; do not read the entire library by default. Every file is optional and directly linked here.

| Need | Read |
|---|---|
| Design judgment, product character, premium philosophy | [design-philosophy.md](references/design-philosophy.md) |
| Source evaluation, world-product comparison, reference extraction | [world-class-research.md](references/world-class-research.md) |
| Integrated art direction and premium detail system | [premium-visual-excellence.md](references/premium-visual-excellence.md) |
| Grids, rhythm, balance, density, focal structure | [visual-composition.md](references/visual-composition.md) |
| Typeface choice, hierarchy, numerals, localization, optical detail | [typography.md](references/typography.md) |
| OKLCH, semantic palettes, dark mode, surfaces, glass, shadows | [color-and-materials.md](references/color-and-materials.md) |
| UX laws, psychology, research methods, perceived performance | [ux-psychology.md](references/ux-psychology.md) |
| Navigation, roles, object models, flows, search, settings | [information-architecture.md](references/information-architecture.md) |
| Native or mobile-web product design | [mobile-design.md](references/mobile-design.md) |
| Web application shells, forms, tables, overlays, keyboard UX | [web-app-design.md](references/web-app-design.md) |
| Premium PWAs, standalone mode, safe areas, install, offline, native-like mobile behavior | [pwa-design.md](references/pwa-design.md) |
| Dashboards, analytics, dense tables, charts, uncertainty | [dashboards-and-data.md](references/dashboards-and-data.md) |
| Motion hierarchy, springs, transitions, reduced motion | [motion-design.md](references/motion-design.md) |
| Existing-product diagnosis and KEEP–REMOVE decisions | [redesign-intelligence.md](references/redesign-intelligence.md) |
| Original directions, experiments, departure from conventions | [creative-exploration.md](references/creative-exploration.md) |
| Multi-perspective critique and calibrated option scoring | [design-critique.md](references/design-critique.md) |
| Conditional tool, plugin, MCP, and automation selection | [tools-and-mcp.md](references/tools-and-mcp.md) |
| Framework-neutral production implementation | [implementation.md](references/implementation.md) |
| Screenshot, responsive, state, motion, and regression validation | [visual-validation.md](references/visual-validation.md) |

For typography-, color-, composition-, or motion-heavy work, load the relevant specialist file even if another domain file is already loaded. For complex enterprise interfaces, combine information architecture, web app or mobile guidance, dashboards, and validation rather than relying on visual polish alone.

## Optional working artifact

When a project benefits from a persistent decision record, copy [design-review-workbook.json](assets/design-review-workbook.json) into the project's working artifacts and populate only useful fields. Do not create process paperwork instead of improving the product.

## Quality gates

Do not call the result complete while any authorized, feasible high-severity issue remains unresolved. Use these gates proportionately:

- **Intent gate:** the artifact expresses a clear product character and task priority.
- **Coherence gate:** screens, states, and components belong to the same visual and behavioral system.
- **Originality gate:** identity survives removal of the logo and does not depend on a fashionable skin.
- **Usability gate:** primary tasks, recovery, feedback, and content remain clear under real conditions.
- **Access gate:** accessibility is designed into semantics, contrast, input, motion, and adaptation.
- **Fidelity gate:** the rendered product, not only the source or mockup, has been inspected when tools permit.
- **Honesty gate:** claims match executed checks and cited evidence; scores and uncertainties are labeled.

If a gate cannot be evaluated, mark it **unverified** rather than passed. Continue iterating when a specific, feasible improvement would materially raise quality; otherwise stop and deliver without manufacturing process.