# Redesign Intelligence

## Contents

- Redesign causes, not surfaces
- Establish the authorized baseline
- Inventory the existing product
- Diagnose root causes
- KEEP, REFINE, REDESIGN, REIMAGINE, REMOVE
- Choose redesign depth
- Preserve identity and functional truth
- Compare before and after
- Implement and migrate safely
- Redesign review

## Redesign causes, not surfaces

A redesign is a change to relationships and behavior, not a new skin over the same inventory. Start by identifying why the current experience fails and which parts remain valuable.

Do not assume:

- dated styling means the underlying workflow is wrong;
- a successful competitor's pattern fits this product;
- consistency requires changing every screen at once;
- users want novelty simply because the team is tired of the interface;
- implementation residue is a functional requirement;
- a visually dramatic before/after proves improvement.

Preserve business logic, permissions, integrations, data meaning, and production safety unless change is explicitly authorized and separately validated.

## Establish the authorized baseline

Record:

- requested outcome and non-negotiable constraints;
- affected roles, routes, platforms, and workflows;
- current product version and capture date;
- available analytics, research, support evidence, and technical telemetry;
- brand or regulatory requirements;
- implementation and release constraints;
- prohibited changes;
- what “better” must mean: task success, comprehension, conversion, efficiency, trust, coherence, identity, maintainability, or another outcome.

Distinguish observed evidence from stakeholder hypotheses. If baseline research is unavailable, say so and use the redesign itself to generate testable alternatives rather than fabricated certainty.

## Inventory the existing product

Capture the product as a system.

### Screen and flow inventory

For each representative screen, record:

- role, entry point, route, and primary task;
- objects, actions, and destination;
- current state and data conditions;
- dependencies and integrations;
- errors, empty states, permissions, and recovery;
- screenshots at relevant viewports;
- known defects and support issues.

Include secondary screens that carry essential work. Redesigning only the visible landing or dashboard screen often makes the rest feel more fragmented.

### Component and token inventory

Identify:

- reused primitives and one-off variants;
- typography, spacing, color, radius, elevation, and icon patterns;
- interaction states and accessibility semantics;
- components with high product-wide leverage;
- local overrides that reveal missing system capability;
- implementation duplication versus intentional product differences.

### Identity inventory

List what users might recognize without the logo: structure, language, iconography, imagery, motion, numerical treatment, signature workflows, or brand color. Preserve valuable identity unless there is a reason to change it.

## Diagnose root causes

Classify the dominant cause before choosing a treatment.

| Evidence | Likely cause | Appropriate response |
|---|---|---|
| Users cannot find the right area | IA, labeling, information scent | Restructure objects/navigation before visual polish |
| Everything competes for attention | Hierarchy and emphasis model | Rebuild focal order and semantic roles |
| Screens look unrelated | System grammar and implementation drift | Establish shared contracts and migrate high-leverage patterns |
| Dense tasks require excessive scanning | Composition, disclosure, or task model | Regroup, align, filter, or redesign the workflow |
| Controls look refined but tasks fail | Flow, feedback, data, or permissions | Repair behavior and meaning first |
| Product is usable but forgettable | Weak product character | Develop a signature mechanism from product truth |
| Mockup looks good but running UI feels rough | Rendering, performance, states, or implementation fidelity | Fix execution and validate real output |
| Frequent work is slow despite few clicks | Interaction cost, recall, waiting, or context loss | Analyze end-to-end effort, not click count |

Use **cause → options → expected outcome → validation** for each material issue. If several causes interact, address the highest-leverage premise first rather than polishing every symptom.

## KEEP, REFINE, REDESIGN, REIMAGINE, REMOVE

Classify every meaningful element, pattern, flow, or requirement. These labels describe intervention depth, not quality rankings.

### KEEP

Retain because the element works, carries identity, satisfies a constraint, or would cost more to change than improve.

- **Evidence:** task success, strong recognition, useful convention, robust implementation, or explicit requirement.
- **Action:** preserve behavior and meaning; document any necessary compatibility work.
- **Risk:** keeping legacy assumptions without examination. Revisit when surrounding structure changes.

### REFINE

Retain the premise but improve execution, consistency, clarity, accessibility, or detail.

- **Suitable for:** typography, spacing, labels, component states, contrast, motion, minor layout, content quality.
- **Action:** make targeted changes with regression comparison.
- **Risk:** endless refinement of a component whose role is no longer valid.

### REDESIGN

Keep the user goal and essential requirements but change the screen, component structure, or interaction pattern substantially.

- **Suitable for:** weak hierarchy, inefficient flow representation, unsuitable navigation pattern, confusing dashboard, poor responsive composition.
- **Action:** develop alternatives, compare complete states, and implement new contracts.
- **Risk:** changing learned behavior without enough value or migration support.

### REIMAGINE

Question the current product or workflow premise and create a different model for achieving the outcome.

- **Suitable for:** structural mismatch, obsolete assumptions, new capabilities, fundamentally better task organization.
- **Action:** return to domain research and concept exploration; prototype the new model before broad implementation.
- **Risk:** scope expansion, hidden business-logic changes, and disruption. Keep authorization and validation explicit.

### REMOVE

Eliminate an element, step, option, or surface because its cost exceeds its value.

- **Suitable for:** redundant actions, unused decoration, duplicate navigation, unnecessary input, unsupported claims, repeated confirmations.
- **Action:** verify dependencies, permissions, analytics or user evidence where available, and provide any required alternative or migration.
- **Risk:** removing accessibility, trust, compliance, or edge-case support because it appears visually inconvenient.

### Classification record

| Item | Classification | Evidence and rationale | What must remain true | Validation |
|---|---|---|---|---|
|  | KEEP / REFINE / REDESIGN / REIMAGINE / REMOVE |  |  |  |

Do not classify by personal preference. “Looks old” is not enough; identify the actual perceptual or behavioral liability.

## Choose redesign depth

Select the shallowest level that can solve the root cause well, but do not force a deep problem into a shallow intervention.

1. **Detail pass:** optical, typography, color, state, and content corrections.
2. **Component pass:** new contracts and states for recurring elements.
3. **Screen pass:** composition, hierarchy, and responsive recomposition.
4. **Flow pass:** sequence, feedback, recovery, and navigation changes.
5. **Model pass:** object model, roles, task structure, or product premise.

Explain why the chosen depth is necessary. A model problem usually reappears after a screen-level reskin.

## Preserve identity and functional truth

Create two explicit lists:

### Must remain true

- authoritative data and business rules;
- user roles and access boundaries;
- required integrations and external behavior;
- legal, safety, and compliance content;
- core task outcomes and recovery;
- valuable brand or product recognition;
- accessibility and platform requirements;
- user work, saved state, and historical continuity.

### May change

- composition and representation;
- navigation placement where authorized;
- component anatomy and visual tokens;
- disclosure and acceleration;
- motion and material language;
- copy that does not alter commitments or meaning;
- implementation structure that can be migrated safely.

When an item appears in both lists, separate visual flexibility from semantic constraint. For example, the presentation of a fee can change; its amount, timing, and disclosure obligations cannot.

## Compare before and after

Use matched conditions:

- same role and task;
- same route and flow step;
- same data, content length, and account state;
- same viewport, platform, theme, and input mode;
- equivalent loading, error, empty, and permission states.

Evaluate:

1. task clarity and recovery;
2. hierarchy and information scent;
3. composition and density;
4. typography and content legibility;
5. interaction and motion continuity;
6. accessibility and adaptation;
7. product character and distinctiveness;
8. implementation complexity and performance.

Do not compare a polished new happy path with an old error state, or a new desktop mockup with an old mobile screenshot. Do not use fabricated metrics such as “40% better usability” without a valid measurement.

A before/after image demonstrates visual difference, not improvement. Pair it with observed defects, rationale, and actual validation evidence.

## Implement and migrate safely

Sequence work to preserve a coherent running product:

1. establish tokens and semantic contracts without forcing visual change;
2. upgrade high-leverage primitives and their states;
3. migrate representative flows and validate them;
4. update dependent screens and exceptions;
5. remove superseded patterns after compatibility is proven;
6. refine product-wide details and documentation.

For large products, use an incremental migration with clear boundaries. Avoid an indefinite mixture of old and new components without an ownership and retirement plan.

Protect URLs, saved preferences, drafts, analytics meaning, and integrations where required. Coordinate backend or permission changes separately with appropriate authority.

When rollout is relevant, consider feature flags, staged availability, reversible release, and targeted feedback. Do not deploy or change production state without authorization.

## Redesign review

- Every removed element has a reason and no unexamined dependency.
- Every preserved element still fits the new system.
- Refined components improve more than local appearance.
- Redesigned flows solve the diagnosed root cause.
- Reimagined models have explicit authorization and stronger validation.
- Old and new states have been compared under matched conditions.
- Accessibility, permissions, and data meaning were not traded for aesthetics.
- Real implementation has been rendered and inspected when tools permit.
- Remaining migration inconsistencies and unverified outcomes are reported honestly.