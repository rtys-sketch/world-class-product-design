# Tools, MCP, and Conditional Design Tooling

## Contents

- Select capabilities, not brands
- Availability and safety protocol
- Design and reference tools
- Repository and implementation tools
- Browser, rendering, and visual QA tools
- Accessibility and performance tools
- Assets, tokens, components, and motion
- Optional MCP and external design skills
- Task-based tool combinations
- Evidence and failure handling

## Select capabilities, not brands

No tool in this file is guaranteed to be installed, authenticated, compatible, or appropriate. Figma, React, Storybook, MCP, Playwright, and every other named technology are optional. The design method must remain usable with repository inspection, manual implementation, browser rendering, direct screenshot analysis, or another available equivalent.

Choose the smallest toolchain that can answer the current uncertainty:

1. **Purpose:** design exploration, implementation, behavioral testing, accessibility, visual comparison, performance, or asset production.
2. **Artifact:** source repository, design file, running app, screenshots, recording, or report.
3. **Availability:** installed tools, credentials, platform support, and user authorization.
4. **Fit:** framework, browser, device, file format, and fidelity requirements.
5. **Evidence:** what output would actually verify the claim?
6. **Cost:** setup, maintenance, data exposure, and risk relative to likely improvement.

Do not adopt a tool merely because a prestigious workflow uses it. Do not refuse a strong design because the first familiar tool cannot express it; compare other feasible implementations before changing the concept.

## Availability and safety protocol

Before using a capability:

- inspect the actual available tools, packages, configuration, and documentation;
- verify authentication and permissions without exposing secrets;
- read project instructions and existing workflows;
- use a test or local environment for destructive or expensive operations;
- avoid sending proprietary code, designs, user data, or credentials to external services without authorization;
- do not publish, deploy, purchase, generate paid assets repeatedly, or change production state without proper authority;
- preserve existing tests and add only tooling that has a clear owner and maintenance path.

A successful connection is not evidence of a successful design test. Record what the tool actually produced and what was inspected.

## Design and reference tools

| Tool or capability | Purpose and strengths | Limitations | Compatibility conditions | When not to use / useful combination |
|---|---|---|---|---|
| Figma files and prototyping | Collaborative interface design, components, prototypes, design inspection | Static fidelity can hide behavior; files may be access-restricted; prototypes are not production proof | File/project access, correct permissions, current client or API/MCP support | Not required when code or screenshots are the source of truth; combine with rendered implementation QA |
| Figma Dev Mode or MCP | Structured design-to-code inspection, variables, assets, selected-node context | Server and account availability vary; generated code may not fit repository architecture; older/newer UI guidance can differ | Explicit MCP/tool availability, granted file access, version-aligned documentation | Avoid when copying design tokens or screenshots manually is simpler and authorized; combine with repository analysis and tokens |
| Penpot, Sketch, vector editors, or other design files | Alternative design and vector workflows | Feature and plugin parity differs; import may alter structure | Actual file support and export path | Do not convert files repeatedly if native inspection is available; combine with SVG and asset checks |
| Mobbin, Refero, Godly, Layers, Behance, Dribbble, Awwwards, Figma Community | Reference discovery, flow comparison, visual exploration | Selection bias, missing states, version drift, concept-only work, licensing and attribution concerns | Web or product access and lawful use | Not usability evidence; use the Reference Analysis Protocol and real-task comparison |
| Image search and reference capture | Find real visual references and compare product patterns | Search ranking and copyright can limit reuse; screenshots lack behavior | Available search/browser tooling and source context | Do not copy assets without rights; combine with source register and mechanism abstraction |
| Whiteboard, text tables, paper-like sketches | Fast structural divergence and flow mapping | Limited visual and behavioral fidelity | Any writing or diagram capability | Best before expensive tooling; combine with one representative high-fidelity spike |

## Repository and implementation tools

| Tool or capability | Purpose and strengths | Limitations | Compatibility conditions | When not to use / useful combination |
|---|---|---|---|---|
| Repository search and AST-aware analysis | Discover routes, components, tokens, dependencies, states, and duplication | Text search can miss dynamic behavior; AST tooling is language-specific | Read access and appropriate parser or language support | Do not redesign from file names alone; combine with running-app inspection |
| Existing framework and component conventions | Maintainable implementation in the project's actual stack | Local abstractions may be poorly documented or outdated | Inspect source, package versions, tests, and project guidance | Do not impose React, a new UI kit, or a new styling system by default |
| Editor diagnostics, type checking, linting, formatting | Catch syntax, contract, and consistency defects | Passing checks does not establish usability or visual quality | Project-supported commands and configuration | Do not change broad unrelated rules to silence a local issue; combine with behavior and rendering tests |
| Unit, integration, and end-to-end test runners | Verify component contracts, flows, state, and regressions | Tests can encode wrong assumptions; mocks can hide integration defects | Existing test stack and stable selectors/fixtures | Do not write screenshot-only tests for logic; combine with real states and accessibility checks |
| Version control and diff inspection | Preserve reversibility, isolate design changes, review migration scope | History does not explain current runtime by itself | Authorized repository access; no unrequested commits or publication | Do not overwrite unrelated user work; combine with before/after runtime evidence |
| Package and build tooling | Run the actual product and production build | Build success is not visual or behavioral validation; dependency changes carry risk | Supported runtime, lockfile, installed dependencies | Do not alter build scripts to bypass failures; fix upstream causes and combine with rendering |

## Browser, rendering, and visual QA tools

| Tool or capability | Purpose and strengths | Limitations | Compatibility conditions | When not to use / useful combination |
|---|---|---|---|---|
| Real browser and DevTools | Inspect computed layout, semantics, network, rendering, storage, and responsive behavior | One engine is not cross-browser proof; device emulation is not real-device validation | Supported browser and running artifact | Do not infer touch ergonomics or installed-PWA behavior from resized desktop alone |
| Playwright or equivalent browser automation | Repeatable navigation, state setup, screenshots, interaction and visual regression | Dynamic content, fonts, animations, authentication, and platform baselines can make diffs flaky | Installed runtime/browser, deterministic fixtures, appropriate permissions | Not needed for a tiny static inspection; combine with controlled states and manual visual review |
| Browser MCP or remote browser tools | Agent-driven navigation, DOM extraction, screenshots, and interaction in available environments | Tool-specific latency, anti-bot restrictions, session and device limitations | Explicitly available MCP/tool, authorized target, supported session | Do not use for unauthorized scraping or claim real-device coverage; combine with local runtime and manual checks |
| Screenshot capture and direct visual analysis | Evaluate hierarchy, spacing, type, overflow, and visual coherence | A screenshot cannot establish behavior, semantics, or smoothness | Visual-capable reviewer and legible captures | Do not mark interaction verified; combine with recordings, DOM, and runtime tests |
| Image cropping, montage, diffing, and color sampling | Inspect details, compare states, localize changes, and check dimensions | Pixel differences can be caused by environment; automated similarity is not design quality | Image tooling and stable capture conditions | Avoid using pixel-perfect match as the only objective; combine with semantic and art-direction critique |
| Visual-regression platform | Baseline management, cross-viewport and component change history | Baselines can preserve defects; service setup and snapshot stability required | Existing service or approved adoption, deterministic rendering | Do not approve diffs automatically; combine with human review and matched before/after states |
| Screen recording and frame inspection | Evaluate motion, interruption, scroll, keyboard, and lifecycle | Recording may alter performance and cannot prove frame timing alone | Capture support on browser/device | Use performance traces for rendering claims and real devices for native-like PWA behavior |
| Accessibility tree and DOM inspection | Verify semantic structure, names, roles, states, and focus targets | Tree presence does not guarantee a good screen-reader experience | Browser or platform inspection tools | Combine with keyboard and actual assistive-technology testing |

For deterministic visual tests, wait for fonts and critical assets, control data and time, disable or freeze nonessential animation, use consistent browser/platform baselines, and capture meaningful states. Keep a separate mode for normal interactive behavior; do not “stabilize” away the very motion or loading behavior being tested.

## Accessibility and performance tools

| Tool or capability | Purpose and strengths | Limitations | Compatibility conditions | When not to use / useful combination |
|---|---|---|---|---|
| axe-core or equivalent automated checks | Fast detection of selected semantic, contrast, and ARIA issues | Cannot judge meaningful labels, logical focus, task completion, or all contrast states | Browser/test integration and representative states | Never call a page conformant from an automated score alone; combine with manual review |
| Lighthouse or similar audits | Repeatable performance, accessibility, PWA, and best-practice signals | Simulated environment and category heuristics can differ from real use; PWA checks are not full installed validation | Supported Chromium environment and controlled test setup | Do not optimize the score at the expense of the product; combine with traces and real surfaces |
| Keyboard-only inspection | Reveals focus order, traps, obscured focus, and missing operation | Does not represent every assistive technology | Running artifact | Always relevant for interactive web UI; combine with semantic inspection |
| Screen readers and platform accessibility tools | Verify names, announcements, navigation, and task completion | Behavior varies by reader, browser, and OS; requires appropriate expertise | Actual supported combinations or explicitly limited environment | Do not infer support from ARIA source alone; record exactly which combinations ran |
| Contrast and color-vision tools | Check ratios and inspect distinguishability | Sampling can miss gradients, images, states, and actual rendering; simulations are incomplete | Correct color sampling and representative states | Combine with text, shape, labels, and manual visual inspection |
| Browser performance profiler | Find long tasks, layout, paint, rendering, memory, and network issues | Requires representative workload and careful interpretation | DevTools and runnable artifact | Do not profile only an empty initial screen; combine with real interaction and device testing |
| WebPageTest, field RUM, Web Vitals | Loading and user-centered performance across conditions | Lab/field differences, sample bias, and configuration affect results | Service access or instrumented product with authorization | Do not substitute aggregate metrics for route-specific task experience |
| Bundle and dependency analyzers | Identify payload and duplication costs | Size is not a complete runtime-performance model | Project build support | Avoid dependency surgery for negligible gain; combine with measured user impact |

## Assets, tokens, components, and motion

| Tool or capability | Purpose and strengths | Limitations | Compatibility conditions | When not to use / useful combination |
|---|---|---|---|---|
| Design-token pipelines and DTCG-aware tooling | Portable semantic values across platforms and outputs | Token exchange does not create coherent roles; specification and parser versions matter | Inspect actual format and tooling support; preserve documented DTCG status | Do not rewrite tokens solely for format purity; combine with component contracts and theme testing |
| Style Dictionary or equivalent transforms | Generate platform-specific token outputs | Adds build complexity and can encode inconsistent source structure | Existing or justified token architecture | Avoid when a small native token system is sufficient |
| Storybook, Ladle, Pattern Lab, or component workbenches | Isolate components, states, documentation, and visual tests | Workbench rendering can differ from product integration; adds maintenance | Existing stack or clear adoption value | Not required for every project; combine with in-app visual QA |
| Icon and SVG editors, SVGO, vector inspection | Consistent geometry, optimized assets, accessible SVG delivery | Optimization can remove needed IDs, titles, or styling; exported geometry may have poor optical alignment | Inspect paths and usage before optimization | Do not minify blindly; combine with rendered size and accessibility checks |
| Image generation and editing | Original illustration, concept imagery, textures, and exploration | Rights, provenance, text artifacts, consistency, and production suitability vary | Explicitly available authorized service and suitable output | Do not use generated imagery as fake evidence or to avoid art direction; combine with crop and content testing |
| Native CSS/Web Animations/View Transitions | Platform-integrated motion with fewer dependencies | API support and complex choreography vary | Current browser support and fallbacks | Prefer when sufficient; combine with reduced motion and interruption tests |
| GSAP, Motion, Framer Motion, or other motion libraries | Complex sequencing, springs, gestures, and shared transitions | Dependency cost, framework coupling, and easy overanimation | Installed or justified package compatible with project | Do not add a library for a simple state fade; combine with performance profiling |
| Lottie, Rive, video, or animated media | Authored character and illustrative motion | Payload, playback control, accessibility, and editing constraints | Asset pipeline and player support | Avoid for essential feedback that needs dynamic semantics; provide static alternatives |

## Optional MCP and external design skills

MCP can expose design files, repositories, browsers, issue trackers, assets, and other services through a common interaction pattern. It does not guarantee quality, availability, or compatibility. Select a server by the capability it actually exposes and inspect its current schema and permissions.

Community skills such as `frontend-design`, `ui-ux-pro-max`, or `design-taste` may appear in some environments. They are optional external resources, not guaranteed installed capabilities. Before use:

1. verify that the skill is currently available and permitted;
2. read its instructions and evaluate domain overlap;
3. check framework assumptions, output requirements, and conflicting rules;
4. choose the smallest compatible set rather than stacking every design skill;
5. preserve this skill's evidence, accessibility, safety, and creative-sovereignty requirements unless a higher-priority user instruction explicitly changes them.

Do not claim to have used a skill, MCP server, or plugin based only on its public existence. If unavailable, continue with native capabilities and state any material limitation.

## Task-based tool combinations

### New product in an existing repository

Repository analysis → product and reference research → lightweight concept comparison → implementation in the existing stack → browser rendering → accessibility and performance checks → visual critique.

### Redesign from screenshots and a running product

Matched capture → root-cause inventory → reference abstraction → redesign in code or design tool → deterministic before/after states → interactive and visual regression → manual critique.

### Design-file handoff

Authorized file inspection → variables/assets/component mapping → repository conventions → implementation → rendered comparison against intent rather than blind code generation.

### Complex dashboard

Real data-schema inspection → decision and metric contract → representative prototype → large and pathological data tests → table/chart accessibility → performance and drill-down validation.

### Premium PWA

PWA evidence detection → manifest/service-worker inspection → capability contract → Android Chrome and iOS Safari browser tests → installed-surface tests where available → safe-area, keyboard, Back, offline, update, and performance validation. Read `pwa-design.md`; do not treat desktop device emulation as installed testing.

### No design or browser tooling available

Inspect supplied source and screenshots → make explicit assumptions → produce the best authorized artifact or implementation → perform source-level checks → mark rendering, behavior, and device claims unverified. Lack of a preferred tool is not a reason to invent results.

## Evidence and failure handling

For every tool-assisted validation, record:

- tool and relevant version or environment;
- artifact and command or operation performed;
- states and viewports exercised;
- output actually inspected;
- defects found and changes made;
- remaining untested conditions.

When a tool fails, distinguish authentication, permission, setup, compatibility, timeout, and empty-result cases. Resolve or report the failure; do not silently reinterpret it as “no issues.” Use an alternative capability only when it answers the same evidence question.

Never claim successful visual, accessibility, user, cross-browser, installed-PWA, or performance testing from tool installation, source inspection, a compiling build, or an unexamined report.