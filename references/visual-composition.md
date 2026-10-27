# Visual Composition

## Contents

- Compose priorities, not containers
- Establish the macro structure
- Grids and alignment anchors
- Proportion, scale, and focal order
- Balance and intentional asymmetry
- Negative space and density
- Rhythm, repetition, and interruption
- Gestalt relationships
- Containers and grouping
- Composition families
- Responsive recomposition
- Diagnostic protocol

## Compose priorities, not containers

Composition is the visible organization of attention and relationships. Begin with three inventories:

1. **Information:** what must be seen, compared, or understood?
2. **Action:** what can be done now, next, or later?
3. **Context:** what orientation, status, or provenance must remain available?

Rank these for the current state. Then compose regions according to the ranking. Do not start by filling a page with equally weighted cards.

A strong composition usually makes four things clear without explanation:

- where the user is;
- what deserves attention first;
- which elements belong together;
- what action or continuation is available.

## Establish the macro structure

Choose a macro structure based on task topology.

| Structure | Suitable tasks | Primary risk |
|---|---|---|
| Single column | Reading, focused forms, linear decisions | Excessive length and wasted wide-screen space |
| Main + supporting rail | Detail with context, creation with guidance, primary task with secondary activity | Rail competes with or strands essential information |
| Navigation + workspace | Multi-area applications | Chrome consumes space or fragments orientation |
| Master–detail | Queues, messages, records, comparison | Narrow viewports require deliberate navigation and preservation of context |
| Canvas + contextual tools | Design, maps, media, modeling | Controls obscure content or become hard to discover |
| Dashboard matrix | Monitoring and comparison | Equal tiles hide priority and relationships |
| Timeline or stream | Events, history, conversations, activity | Chronology overwhelms importance or filtering |
| Split comparison | Before/after, alternatives, source/derived work | Synchronization and unequal content complexity |

Treat these as starting grammars. Combine or depart from them when the task demands it.

## Grids and alignment anchors

A grid should create meaningful relationships, not merely divide width evenly.

### Build from content

1. Identify recurring content widths: long-form text, media, controls, numerical columns, navigation.
2. Choose outer margins appropriate to viewport and density.
3. Define a small set of column or track behaviors: fixed, content-sized, fluid, and minimum/maximum constrained.
4. Establish primary alignment anchors for headings, values, controls, and content edges.
5. Place exceptional elements deliberately; preserve a visible reason for breaking the grid.

### Use spacing as a relationship language

A spacing scale supports consistency but does not determine composition. Assign semantic roles such as:

- inset within a control;
- gap between related elements;
- separation between subgroups;
- separation between major regions;
- page or scene margin.

Smaller distances imply closer relationships, but proximity cannot repair incorrect grouping. Do not use arbitrary negative margins to compensate for poorly chosen primitives.

### Optical alignment

Mathematical alignment can look wrong because of glyph shape, icon mass, image crop, border thickness, or asymmetric control geometry. After structural alignment is correct, adjust visually and document the component-level rule. Avoid one-off transforms scattered through pages.

## Proportion, scale, and focal order

Use scale to encode consequence. A focal element may be larger, more isolated, higher contrast, more detailed, earlier in sequence, or differently shaped. Size alone often produces crude hierarchy.

### Create a focal ladder

For each view, identify:

- **F0 — environment:** orientation and persistent context;
- **F1 — primary subject:** the current answer, task, or content;
- **F2 — support:** evidence, related objects, and secondary action;
- **F3 — utility:** metadata, settings, and infrequent controls.

Not every view needs four visibly distinct levels; use the ladder to prevent accidental equivalence.

### Control proportional relationships

Compare ratios, not only absolute sizes:

- heading to body;
- primary action to adjacent actions;
- content to chrome;
- media to caption;
- main region to supporting rail;
- whitespace between groups to whitespace within groups.

If everything scales uniformly at larger viewports, the result may become diffuse rather than more useful. Recompose when relationships change.

## Balance and intentional asymmetry

Balance is the distribution of visual weight: size, contrast, density, color, texture, and position. Symmetry is one way to achieve balance, not the definition of it.

Use asymmetry to:

- prioritize a dominant task or narrative;
- create directional movement;
- distinguish content from utility;
- introduce editorial character;
- make one interruption meaningful.

Stabilize asymmetry with repeated anchors, counterweights, and alignment. Unresolved asymmetry looks like accidental misalignment.

A useful test is to describe the composition as masses without reading content. If the intended focal region does not dominate appropriately, styling details will not fix it.

## Negative space and density

Negative space is active structure. Use it to separate concepts, establish importance, provide rest, and make interaction targets easier to parse.

### Place space where it explains relationships

Prefer:

- more space between unrelated groups than within them;
- deliberate margins around a focal region;
- breathing room at reading and decision boundaries;
- stable internal spacing for controls and data.

Avoid:

- uniform padding around every object;
- large empty areas caused by missing content rather than intentional composition;
- spreading dense operational tools so far apart that comparison and flow suffer;
- compressing metadata until it becomes unreadable in the name of minimalism.

### Density is a task variable

Offer density modes when users have legitimately different needs, such as monitoring versus detailed review. Preserve hit-target accessibility, readable type, and semantic hierarchy in compact modes. Density should change spacing and disclosure before it reduces legibility.

## Rhythm, repetition, and interruption

Rhythm comes from repeated intervals, shapes, type roles, and content patterns. It helps users predict where information will appear.

Build rhythm through:

- recurring baselines and row heights;
- repeated section introductions;
- consistent media ratios within a comparable set;
- stable placement of status and actions;
- predictable spacing between levels of grouping.

Interrupt rhythm only to signal a meaningful change: a critical exception, a new phase, a featured item, or a shift in content type. If every item interrupts the rhythm, none does.

Avoid mechanically repeating identical modules when content differs. Variation should expose content structure, not disguise its absence.

## Gestalt relationships

Use perceptual grouping principles as design lenses, not deterministic laws.

| Principle | Practical use | Common failure |
|---|---|---|
| Proximity | Group related labels, values, and controls | Unrelated items appear connected because spacing is uniform |
| Similarity | Show shared type, state, or behavior | Similar styling implies interaction for static content |
| Common region | Bound a coherent set or interactive surface | Cards proliferate and compete with content |
| Continuity | Guide scanning along aligned rows, columns, or paths | Misalignment breaks comparison and flow |
| Closure | Use familiar shapes and partial cues economically | Decorative forms make users infer unintended objects |
| Figure–ground | Separate subject from supporting surface | Low contrast or busy backgrounds obscure the subject |
| Common fate | Move related elements together to express connection | Unrelated animation implies a false relationship |
| Focal point | Establish an entry into the composition | Several accents compete for first attention |

Test grouping with blurred or grayscale previews and with assistive-technology structure; visual grouping alone does not create semantic grouping.

## Containers and grouping

Use a container when it performs at least one clear job:

- defines an interactive hit region;
- isolates scroll or input behavior;
- establishes a modal or overlay boundary;
- distinguishes a data set or object from surrounding content;
- provides a necessary surface contrast;
- creates a reusable object users can manipulate.

Do not containerize merely to fill space or create “card design.” Consider grouping through headings, alignment, spacing, dividers, or background shifts first.

For nested containers, reduce visual emphasis with depth. Outer and inner surfaces competing equally produce a boxed-in, fragmentary composition.

## Composition families

Use these as art-direction starting points, then adapt.

### Editorial

Strong narrative sequence, expressive type scale, purposeful media, selective asymmetry. Suitable for storytelling, discovery, and branded explanation. Risk: weak repeated-task efficiency.

### Instrument

Stable anchors, dense readouts, exact alignment, persistent status, fast comparison. Suitable for analytics, operations, finance, and monitoring. Risk: excessive chrome and undifferentiated metrics.

### Canvas

Content dominates; tools appear contextually or at stable edges. Suitable for creation, maps, and visual exploration. Risk: discoverability and mode confusion.

### Ledger

Rows, columns, histories, totals, provenance, and numerical alignment dominate. Suitable for transactions, records, administration, and audit. Risk: treating every task as a table.

### Conversation

Sequence, turn-taking, context, and response states dominate. Suitable for messaging and assistants. Risk: hiding durable structure or forcing conversational input where direct controls are better.

### Collection

Media or objects form comparable sets with filtering, preview, and detail. Suitable for commerce, libraries, and asset management. Risk: visually rich grids without decision-supporting metadata.

## Responsive recomposition

Responsive design is not proportional shrinking. At each width or input change, decide:

1. What remains primary?
2. What moves into a different region or disclosure?
3. What changes representation—for example tabs to menu, table to structured list, sidebar to overlay?
4. What context must persist across the change?
5. What happens to focus, selection, scroll position, drafts, and ongoing tasks?

Preserve meaning and task continuity across breakpoints. Do not hide essential functionality solely to simplify the small-screen composition.

## Diagnostic protocol

1. **Block out:** replace detail with grayscale masses and inspect focal order.
2. **Trace anchors:** draw vertical and horizontal alignment lines; investigate near-misses.
3. **Measure relationships:** compare within-group and between-group spacing.
4. **Find the container count:** remove containers that do no structural or behavioral work.
5. **Stress content:** test minimum, maximum, mixed-media, and missing-content cases.
6. **Stress viewport:** inspect narrow, wide, short, zoomed, and orientation-changed layouts.
7. **Trace the task:** ensure composition supports sequence and comparison, not only first-glance beauty.
8. **Revisit the system:** confirm that a local improvement does not break product-wide grammar.