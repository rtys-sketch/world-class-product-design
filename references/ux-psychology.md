# UX Psychology and Design Methods

## Contents

- Use methods as lenses
- Nielsen heuristic evaluation
- Laws and perceptual models
- Cognition and discovery
- Research and task methods
- Interaction, feedback, and inclusion
- Delivery-condition methods

## Use methods as lenses

No method guarantees a good product. Select a method because it can reduce a specific uncertainty, then combine it with direct observation and implementation evidence. Do not convert named laws into pseudo-precise calculations or use a heuristic score as a substitute for users.

Each method below addresses seven questions: **what** it is, **why** it can work, **when** to use it, **how** to apply it, **how to validate** it, **common failures**, and **alternatives or complements**. Validation means evidence appropriate to the claim; an internal critique only supports an internal critique.

## Nielsen heuristic evaluation

Heuristic evaluation is an expert inspection method, not a usability test. Use several evaluators when practical, traverse representative tasks independently, then consolidate findings with severity, evidence, and affected context. NN/g's [ten heuristics](https://www.nngroup.com/articles/ten-usability-heuristics/) are broad principles; the following makes them operational without treating them as visual rules.

| Heuristic | What and why | When and how to apply | Validation, failures, and alternatives |
|---|---|---|---|
| Visibility of system status | Users need timely feedback to form an accurate model of what happened. | Use for waiting, saving, syncing, background work, selection, and mode changes. Show state near the cause and preserve durable status when needed. | Inspect delays and interruptions; test whether users can state current status. Failure: spinners without meaning. Complement with event logs or progress detail. |
| Match between system and real world | Familiar language and domain order reduce translation effort. | Use for labels, icons, units, workflows, and conceptual models. Start with user vocabulary and domain conventions. | Test comprehension with target audiences and locales. Failure: internal jargon or misleading metaphors. Complement with explanation for genuinely new concepts. |
| User control and freedom | Exits and recovery reduce the cost of mistakes and exploration. | Use for dialogs, multi-step tasks, editing, subscriptions, and destructive actions. Support cancel, back, undo, or clear recovery. | Test accidental entry, interruption, and reversal. Failure: back exits without preserving work. Alternatives depend on irreversibility; explain consequences honestly. |
| Consistency and standards | Predictable patterns lower relearning and help users transfer expectations. | Use across components, terminology, platform behavior, and external conventions. Standardize meaning before appearance. | Compare flows and run expectation tests. Failure: consistency preserves a bad pattern. Depart when a better model is validated. |
| Error prevention | Removing predictable mistakes is better than explaining them afterward. | Use for consequential, repetitive, constrained, or easily confused input. Apply constraints, defaults, previews, confirmation, and reversible design selectively. | Analyze error logs or observed errors by cause. Failure: blanket constraints reject valid input or confirmation becomes routine. Complement with recovery. |
| Recognition rather than recall | Visible options and contextual cues reduce memory demands. | Use for commands, navigation, recent items, formats, and multi-step context. Keep relevant choices and cues available. | Test return visits and interrupted tasks. Failure: exposing everything creates clutter. Use progressive disclosure or search for large sets. |
| Flexibility and efficiency of use | Accelerators let experienced users bypass repeated guidance. | Use for high-frequency tasks and expert workflows. Add shortcuts, defaults, saved views, bulk actions, and customization. | Measure repeated-task performance and discovery. Failure: accelerators hide the baseline path or create conflicts. Keep equivalent accessible controls. |
| Aesthetic and minimalist design | Relevant information competes less with the current task; visual craft supports signal quality. | Use during hierarchy and density reviews. Remove or demote elements that do not support current goals. | Test findability with real content, not only preference. Failure: hiding necessary context or making text faint. Complement with staged disclosure. |
| Help users recognize, diagnose, and recover from errors | Useful errors explain cause and recovery in user language. | Use wherever input, connectivity, permissions, conflicts, or system failures occur. State what happened, what remains safe, and the next action. | Inject failures and test recovery success. Failure: blame, codes alone, or dead-end retry. Complement with prevention, support, and diagnostics. |
| Help and documentation | Contextual assistance helps when the interface cannot be self-explanatory. | Use for complex domains, uncommon tasks, and high-stakes decisions. Provide searchable, task-oriented, layered help. | Test whether users can find and apply the answer. Failure: documentation excuses avoidable complexity or blocks the task. Improve the flow or embed guidance. |

**Method validation:** report tasks, evaluator count, artifact version, and findings; do not report “users found” unless users participated. **Common failure:** turning evaluation into a checklist of superficial compliance. **Alternative or complement:** cognitive walkthrough for first-use learnability, accessibility audit for conformance, and usability testing for observed behavior.

## Laws and perceptual models

### Hick's Law

- **What:** a relationship between choice-set structure and decision time under certain conditions, often simplified as “more choices mean slower decisions.”
- **Why:** reducing simultaneous alternatives or making the desired alternative easier to identify can reduce selection effort.
- **When:** navigation, menus, pricing, settings, onboarding choices, and comparison tasks.
- **Apply:** remove irrelevant choices, group by meaningful categories, recommend only with justification, expose common choices first, and preserve access to the full set.
- **Validate:** measure decision success and time with realistic alternatives; inspect errors and confidence, not just elapsed time.
- **Failures:** treating it as a universal logarithmic stopwatch, hiding necessary choices, or splitting one decision across many screens.
- **Alternatives:** progressive disclosure, recognition cues, better information scent, or comparison design when users need many options.

### Fitts's Law

- **What:** a motor-performance model relating pointing time to target distance and size in suitable pointing tasks.
- **Why:** larger or closer targets are generally easier to acquire; edges and corners can have special pointing behavior.
- **When:** touch controls, pointer interactions, toolbars, frequent actions, and targets for users with motor impairments.
- **Apply:** provide adequate target size and spacing, place frequent actions within comfortable reach, enlarge effective hit areas without overlapping neighbors, and avoid precision-only gestures.
- **Validate:** test on real devices and input modes, including one-handed use, zoom, and motor variability; inspect mis-taps and reach.
- **Failures:** applying it to cognitive decision time, using visual size as hit size, or meeting a minimum while targets remain crowded.
- **Alternatives:** keyboard commands, direct manipulation, list selection, or reducing travel through contextual controls.

### Jakob's Law

- **What:** the heuristic that users bring expectations from familiar products and platforms.
- **Why:** leveraging learned patterns can reduce initial learning and let attention remain on the task.
- **When:** navigation, authentication, commerce, media controls, editing, and platform-native interactions.
- **Apply:** identify dominant conventions for the actual audience, preserve their core behavior, and differentiate through content or carefully scoped improvements.
- **Validate:** expectation tests, first-click behavior, onboarding observation, and comparison against the conventional baseline.
- **Failures:** copying competitors' defects, assuming one audience shares one convention, or resisting all innovation.
- **Alternatives:** a new mental model with onboarding and reversible exploration when the convention itself causes substantial friction.

### Gestalt grouping

- **What:** perceptual principles describing how people organize visual elements into groups and wholes.
- **Why:** clear grouping can reduce the effort required to infer relationships and scan structure.
- **When:** forms, dashboards, lists, toolbars, navigation, charts, and any dense composition.
- **Apply:** coordinate proximity, similarity, common region, continuity, figure–ground, and motion; use semantic grouping in parallel.
- **Validate:** grouping tests, scan observation, grayscale inspection, and accessibility-tree review.
- **Failures:** using cards as the only grouping tool, implying interaction through similarity, or relying on visual grouping without programmatic structure.
- **Alternatives:** explicit labels, headings, dividers, table semantics, or restructuring content when grouping cues are insufficient.

## Cognition and discovery

### Cognitive-load management

- **What:** the deliberate reduction of working-memory and attention demands that do not contribute to the task.
- **Why:** fewer irrelevant demands can leave more capacity for understanding and decision-making.
- **When:** complex forms, expert tools, learning experiences, interruptions, high-risk decisions, and dense displays.
- **Apply:** remove duplication, chunk by meaning, keep needed context visible, externalize memory aids, sequence decisions, and use familiar representations.
- **Validate:** observe hesitation, backtracking, errors, and subjective effort with representative users; compare realistic task conditions.
- **Failures:** equating low load with few pixels or few screens, fragmenting related information, or removing necessary complexity.
- **Alternatives:** training, reference material, automation, or better domain visualization when complexity is intrinsic and valuable.

### Progressive disclosure

- **What:** showing primary needs first while keeping secondary or advanced capabilities available through a clear path. NN/g's [guidance](https://www.nngroup.com/articles/progressive-disclosure/) emphasizes the primary/secondary split and discoverability.
- **Why:** it can reduce initial complexity without eliminating capability.
- **When:** optional settings, advanced filters, detailed evidence, infrequent actions, and complex creation workflows.
- **Apply:** identify frequency and consequence, keep the primary path complete, label disclosure controls by content, preserve state, and avoid deep nesting.
- **Validate:** test whether users who need advanced features can find them and whether primary users complete the core task.
- **Failures:** hiding essential information, using ambiguous “more” labels, or adding clicks to frequently used functions.
- **Alternatives:** visible but quiet secondary content, separate detail views, search, or role-based workspaces.

### Recognition over recall

- **What:** making options, context, and prior input visible instead of requiring users to remember them.
- **Why:** cues can reduce memory burden and improve recovery after interruption.
- **When:** command systems, navigation, recent work, data entry, comparisons, and multi-step tasks.
- **Apply:** expose categories, recent items, sensible defaults, selected filters, examples, thumbnails, and persistent summaries.
- **Validate:** test return use, delayed completion, and command discovery with new and experienced users.
- **Failures:** cluttering the interface with every possibility, stale suggestions, or exposing sensitive history.
- **Alternatives:** searchable recall for huge sets, keyboard accelerators for experts, or privacy-conscious session-only memory.

### Information scent

- **What:** cues that help users predict what a link, category, or path will yield. NN/g discusses [labels, context, expected value, and effort](https://www.nngroup.com/articles/information-scent/).
- **Why:** better predictions reduce wrong turns and backtracking.
- **When:** navigation, search results, cards, menus, help, and content-rich products.
- **Apply:** use specific labels, meaningful snippets, metadata, thumbnails, and category cues; align link promise with destination.
- **Validate:** first-click testing, tree testing, search-query analysis, and observation of backtracking.
- **Failures:** clever labels, generic “learn more,” teaser text that hides the answer, or scent that attracts clicks to disappointing destinations.
- **Alternatives:** direct search, curated entry points, conversational guidance, or flattening ambiguous categories.

### Mental models

- **What:** users' evolving explanations of what a system contains, how it behaves, and what actions will do.
- **Why:** design aligned with a useful model makes outcomes easier to predict; new models require deliberate teaching.
- **When:** introducing novel objects, modes, automation, AI behavior, permissions, or background processes.
- **Apply:** elicit user language and expectations, make states and causality visible, use consistent metaphors only where accurate, and expose system boundaries.
- **Validate:** ask users to predict outcomes, explain state, and recover from surprises; inspect misconceptions rather than only completion.
- **Failures:** pretending the system has no model, literal metaphors with false implications, or blaming users for mismatches.
- **Alternatives:** familiar conventions, guided examples, transparent rules, or simplified system behavior.

## Research and task methods

### Jobs to Be Done

- **What:** framing user needs as progress sought in a context rather than only as demographics or feature requests.
- **Why:** it can reveal competing solutions, triggers, anxieties, and outcomes that feature lists miss.
- **When:** product definition, onboarding, workflow redesign, positioning, and prioritization.
- **Apply:** investigate trigger, desired progress, current workaround, constraints, anxieties, and success evidence through appropriate research.
- **Validate:** compare predicted needs with observed behavior and outcome measures across contexts; revisit after release.
- **Failures:** inventing a job statement from internal assumptions, forcing every micro-task into one slogan, or ignoring actual user segments.
- **Alternatives:** task analysis for concrete flows, service blueprinting for cross-channel delivery, or user stories for implementation scope.

### User- and human-centered design

- **What:** an iterative approach that grounds design in people's needs, contexts, capabilities, and feedback throughout delivery.
- **Why:** direct involvement can reveal mismatches between intended and actual use.
- **When:** any product with meaningful human consequences; scale the method to risk and uncertainty.
- **Apply:** identify affected groups, recruit appropriately, combine contextual inquiry with prototypes, include accessibility needs, and iterate after release.
- **Validate:** document sample, method, task, findings, limitations, and design changes; triangulate self-report with behavior.
- **Failures:** asking for preferences instead of studying tasks, testing only convenient users, or treating stakeholder opinion as user evidence.
- **Alternatives:** expert review for obvious issues before testing, analytics for behavioral patterns, or participatory design for shared decision-making.

### Task analysis

- **What:** decomposition of goals into actions, decisions, information needs, dependencies, and recovery.
- **Why:** it exposes hidden work and mismatches between system steps and user goals.
- **When:** complex workflows, redesign, automation, expert tools, and error-prone processes.
- **Apply:** observe or interview, map current and desired sequences, capture branches and artifacts, identify frequency and risk, then remove or support steps deliberately.
- **Validate:** walk the model with practitioners, test exceptions and interruptions, and compare completion and error patterns.
- **Failures:** mapping only the happy path, copying a broken current process, or over-decomposing trivial actions.
- **Alternatives:** JTBD for motivation, service blueprint for organizational handoffs, or state-machine modeling for implementation.

### Information architecture as a method

- **What:** organizing, labeling, and connecting content and functionality so users can find and understand them.
- **Why:** a coherent structure improves orientation and findability independent of visual polish.
- **When:** navigation changes, growing content inventories, search problems, multi-role systems, and new product structure.
- **Apply:** inventory objects, identify organizing principles, define labels and relationships, design navigation and search, then test representative findability tasks.
- **Validate:** tree tests, card sorts where appropriate, first-click behavior, search logs, and role-based walkthroughs.
- **Failures:** organizing by internal departments, mixing category principles, or testing labels without destination context.
- **Alternatives:** search-led access for some large corpora, workflow hubs, or personalized entry points with stable underlying structure. See `information-architecture.md` for patterns.

### Content-first design

- **What:** using real or credible content to determine structure, hierarchy, components, and interaction.
- **Why:** content shape and meaning often reveal the appropriate design better than placeholder geometry.
- **When:** editorial products, marketing, forms, help, dashboards, commerce, and any interface where language carries decisions.
- **Apply:** gather representative content, write key labels and states early, test extreme lengths, design fallback and missing content, and involve content owners.
- **Validate:** review comprehension, reading flow, localization, truncation, and real-content production feasibility.
- **Failures:** waiting for final copy before designing anything, treating lorem ipsum as neutral, or letting one ideal sample dictate all layouts.
- **Alternatives:** schema-first design for highly structured data, followed immediately by representative content rather than generic placeholders.

## Interaction, feedback, and inclusion

### Interaction-cost reduction

- **What:** reducing the combined physical, cognitive, visual, and temporal effort required to achieve an outcome.
- **Why:** unnecessary steps and searching compound across repeated tasks.
- **When:** frequent workflows, forms, navigation, data entry, and expert operations.
- **Apply:** count decisions and actions, remove redundant entry, preserve context, support batch work, provide accelerators, and reduce avoidable waiting.
- **Validate:** compare realistic end-to-end tasks, including mistakes and learning—not only click counts.
- **Failures:** optimizing clicks while increasing memory or errors, hiding steps in automation, or shifting cost to another role.
- **Alternatives:** additional friction for reflection or consent when consequences justify it; automation with review for repetitive work.

### Error prevention and recovery

- **What:** designing constraints, guidance, reversible actions, and repair paths around predictable failure.
- **Why:** preventing or containing errors protects user work and trust.
- **When:** destructive actions, payments, permissions, data import, repetitive input, and safety-critical tasks.
- **Apply:** use forgiving formats, sensible defaults, constraints, previews, consequence summaries, undo, idempotent submission, and saved drafts.
- **Validate:** inject invalid input, duplicate actions, conflicts, timeouts, and accidental gestures; measure recovery and data preservation.
- **Failures:** modal confirmation for everything, disabled submit with no explanation, or validation that rejects legitimate edge cases.
- **Alternatives:** automatic correction for safe deterministic mistakes, explicit review for ambiguous high-risk decisions, or sandboxing for exploration.

### Feedback loops

- **What:** a visible relationship among action, system response, resulting state, and next opportunity to act.
- **Why:** timely, interpretable feedback supports prediction, learning, and control.
- **When:** every interactive system, especially saving, syncing, live updates, automation, and irreversible actions.
- **Apply:** acknowledge input quickly, distinguish pending from completed, show scope and result, preserve durable history where needed, and close the loop with recovery or continuation.
- **Validate:** introduce latency and failure, test whether users can explain state, and inspect repeated submissions or premature navigation.
- **Failures:** optimistic success that later proves false, global spinners with no local cause, or animated feedback that delays information.
- **Alternatives:** queued status for long jobs, explicit manual refresh for costly updates, or silent success with accessible history for low-risk frequent actions.

### Accessibility-centered design

- **What:** designing for varied perception, cognition, motor ability, input, technology, and environment from the start.
- **Why:** accessible semantics and adaptable presentation improve access and often improve general robustness.
- **When:** always; apply additional depth for public services, high-risk tasks, and known accessibility needs.
- **Apply:** use semantic structure, keyboard and alternative input, visible focus, readable contrast, text scaling, reduced motion, captions, error support, and accessible names.
- **Validate:** combine automated checks with manual keyboard, screen-reader, zoom, contrast, motion, and target-size inspection; include users with disabilities when research is feasible.
- **Failures:** treating an automated score as conformance, adding ARIA without understanding semantics, or checking only the happy path.
- **Alternatives:** platform-native accessibility guidance and specialist audit; alternatives supplement rather than replace inclusive baseline design.

### Responsive and adaptive design

- **What:** changing layout, navigation, disclosure, and interaction to fit viewport, input, platform, and user context.
- **Why:** preserving task viability across conditions is better than uniformly scaling one composition.
- **When:** multi-device products, text scaling, orientation changes, foldables, embedded contexts, and varying pointer precision.
- **Apply:** define content priorities, recompose regions, adapt controls to input, preserve state and focus, and design intermediate widths rather than only named devices.
- **Validate:** test continuous resize, zoom, orientation, touch and keyboard, large text, network changes, and task continuity.
- **Failures:** device stereotypes, hiding essential features on small screens, hover dependence, or breakpoints based on a screenshot target.
- **Alternatives:** platform-specific experiences when behavior genuinely differs, or adaptive server/client delivery when performance and capability justify it.

### Perceived-performance design

- **What:** shaping waiting and response so system progress is understandable while actual performance is optimized.
- **Why:** uncertainty and unresponsiveness can feel worse than a known, bounded wait.
- **When:** loading, search, upload, generation, synchronization, transitions, and background processing.
- **Apply:** acknowledge input immediately, preserve layout stability, use meaningful progress or skeletons only when accurate, allow cancellation, and optimize critical rendering and response paths.
- **Validate:** measure actual timings and field performance, then test whether users understand state and can continue appropriate work.
- **Failures:** fake progress, indefinite skeletons, animation used to conceal jank, or optimistic content that changes without explanation.
- **Alternatives:** real progress, partial results, background completion, caching, or reducing work; perception techniques never excuse avoidable slowness.