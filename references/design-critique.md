# Design Critique and Comparative Evaluation

## Contents

- Critique evidence, not taste alone
- Review sequence
- Eight-perspective critique engine
- Issue severity and diagnosis
- Twelve-criterion 100-point rubric
- Calibration and scoring protocol
- Iteration and comparative review
- Critique output pattern

## Critique evidence, not taste alone

A critique should reveal why an artifact succeeds or fails and what to do next. It is not a performance of sophistication or a list of preferences.

Separate:

- **Observation:** what is directly visible or measurable.
- **Inference:** the likely perceptual, behavioral, or technical mechanism.
- **Judgment:** the quality evaluation against a stated criterion.
- **Recommendation:** a change expected to improve that criterion.
- **Validation:** evidence that would confirm the improvement.

Do not present a designer's simulation of a user as observed user research. Do not assign numerical scores to unavailable evidence and call them objective.

## Review sequence

### 1. Establish the contract

Review the design thesis, target roles and tasks, platform, content, technical constraints, and explicit non-negotiables. A beautiful answer to the wrong brief is not a strong answer.

### 2. Inspect the premise

Evaluate object model, task flow, information architecture, content, and product character before visual finish. If the premise is weak, stop polishing and return to the appropriate earlier stage.

### 3. Inspect representative states

Use the primary task plus consequential empty, error, loading, long-content, permission, and responsive states. A single default screen cannot support a product-wide claim.

### 4. Run eight perspectives

Review independently before consolidating. This prevents the visual director's opinion from hiding engineering or accessibility defects.

### 5. Consolidate causes

Merge issues that share a root cause. Distinguish:

- implementation defect;
- local design defect;
- systemic design defect;
- weak design premise;
- missing evidence or unverified condition.

### 6. Refine and re-review

Fix high-severity causes first, render again when possible, and compare under matched conditions. Re-score only criteria for which evidence changed.

## Eight-perspective critique engine

### 1. Creative Director

**Mandate:** product character, art direction, authorship, and memorability.

Ask:

- What is the central idea, and can it be stated without listing styles?
- Does the product have an ownable mechanism beyond logo and accent color?
- Are contrast, restraint, imagery, and signature moments coherent?
- Which decisions imitate references rather than express product truth?
- What should be removed to strengthen the idea?

**Blind spot to counter:** falling for a dramatic hero while the working product lacks identity.

### 2. Principal Product Designer

**Mandate:** product-wide coherence, task model, design-system leverage, and trade-offs.

Ask:

- Does the structure fit roles, objects, frequency, and consequence?
- Do screens belong to one product while supporting different tasks?
- Are exceptions justified and reusable?
- Does the solution scale across states, roles, and future content?
- Is the chosen redesign depth appropriate to the root cause?

**Blind spot to counter:** protecting system consistency at the expense of a clearly better local or new solution.

### 3. Senior UX Designer

**Mandate:** findability, interaction cost, mental models, feedback, recovery, and content.

Ask:

- Can users understand where they are and what to do next?
- Are labels, defaults, and disclosure aligned with expectations?
- What happens on error, interruption, empty data, and return?
- Are frequent tasks efficient and infrequent tasks discoverable?
- Which evidence supports the flow beyond expert inspection?

**Blind spot to counter:** treating heuristic compliance as proof of usability.

### 4. Typography Specialist

**Mandate:** readability, hierarchy, type craft, numerals, and localization.

Ask:

- Are roles distinct without excessive sizes and weights?
- Do actual fonts render well at intended sizes on target displays?
- Are measure, leading, tracking, rag, and alignment tuned?
- Do numbers align and update without losing meaning or stability?
- What happens with large text, fallback fonts, long translations, CJK, and RTL?

**Blind spot to counter:** judging a typeface from a display headline rather than the complete content system.

### 5. Motion Designer

**Mandate:** causality, continuity, responsiveness, physical character, and interruption.

Ask:

- What does each animation explain or enhance?
- Do transitions preserve spatial and object identity?
- Can rapid input interrupt or reverse motion safely?
- Does loading motion represent real system state?
- Is reduced-motion behavior equally understandable?

**Blind spot to counter:** evaluating an ideal recording instead of real performance and interrupted interaction.

### 6. Accessibility Expert

**Mandate:** semantics, perception, input, adaptation, and equitable task completion.

Ask:

- Can keyboard and assistive-technology users complete the same tasks?
- Are names, roles, states, headings, focus, and errors meaningful?
- Does the design work with zoom, large text, contrast preferences, reduced motion, and touch?
- Are status and action understandable without color, hover, gesture, or animation?
- Which checks require manual or user-based validation and remain unverified?

**Blind spot to counter:** treating an automated score or contrast sample as full accessibility conformance.

### 7. Frontend Engineer

**Mandate:** implementation fidelity, robustness, performance, maintainability, and platform behavior.

Ask:

- Does the running artifact preserve the design under real data and states?
- Are components semantic, reusable, and free of fragile one-off geometry?
- What happens during resize, latency, failure, and long sessions?
- Are fonts, assets, motion, and data rendering within performance budgets?
- Which visual requirements create technical risk, and can a better implementation preserve the concept?

**Blind spot to counter:** rejecting a strong concept from an assumed implementation limitation without testing alternatives.

### 8. End User

**Mandate:** task value, comprehension, effort, trust, and emotional response from the target user's likely context.

Ask:

- What is valuable here, and what gets in the way?
- Can the intended user explain the current state and next action?
- Does the interface respect their time, knowledge, abilities, and environment?
- What would cause hesitation, error, or distrust?
- Is the product memorable in a way relevant to their goal?

**Evidence rule:** label this **user-proxy critique** unless representative users actually participated. When user evidence exists, cite the sample, task, context, and observed behavior rather than generic “users will love it.”

**Blind spot to counter:** projecting the design team's expertise and preferences onto users.

## Issue severity and diagnosis

Assign severity from impact, frequency, affected audience, consequence, and recoverability.

| Severity | Meaning | Action |
|---|---|---|
| Blocker | Task, security, permission, data integrity, or essential access is broken | Do not present as complete; stop relevant delivery or rollout |
| Critical | Major task or accessibility failure with serious consequence or no practical recovery | Fix before aesthetic polish or release recommendation |
| Major | Significant friction, incoherence, or recurring defect affecting important use | Fix within the current design iteration when in scope |
| Minor | Local issue with limited consequence or straightforward workaround | Schedule by leverage and system impact |
| Polish | Refinement with small but real perceptual benefit | Address after higher-severity causes; do not inflate |

Use this issue statement:

> **Evidence:** [what and where]. **Mechanism:** [why it happens]. **Consequence:** [task, perception, access, or system impact]. **Severity:** [level]. **Intervention:** [root-cause change]. **Validation:** [matched check].

Avoid solutions disguised as observations, such as “the button needs more shadow” before establishing that its affordance is unclear and why.

## Twelve-criterion 100-point rubric

Use this rubric to compare directions or iterations under consistent evidence conditions. Do not use it as an absolute certification of product quality.

Rate each criterion from 0 to 5, then calculate:

> **Weighted points = rating ÷ 5 × criterion weight.**

| Criterion | Weight | What is being judged |
|---|---:|---|
| Premium perception | 12 | Coherent precision, proportion, content quality, material discipline, edge-state care, and contextual sophistication |
| Visual originality | 8 | Ownable mechanisms and product-specific authorship rather than recognizable template or trend assembly |
| Composition | 10 | Macro structure, balance, alignment, density, negative space, rhythm, and responsive recomposition |
| Typography | 10 | Role hierarchy, readability, type craft, numerical behavior, localization, and actual font rendering |
| Color harmony | 7 | Semantic roles, tonal relationships, theme adaptation, accent allocation, and content integration |
| Visual hierarchy | 10 | Focal order, grouping, emphasis, action priority, and information scent across states |
| Interaction quality | 10 | Feedback, control, recovery, gesture and input behavior, state continuity, and interaction cost |
| Information architecture | 8 | Object model, navigation, labels, findability, flow structure, and deep-link or role coherence |
| Consistency | 7 | Shared meaning and behavior across screens, components, platforms, and justified variations |
| Motion quality | 5 | Causality, timing, spatial continuity, interruption, reduced motion, and rendering smoothness |
| Accessibility | 8 | Semantics, keyboard and alternative input, contrast, target use, text scaling, reduced motion, and accessible states |
| Implementation fidelity | 5 | Agreement between intent and running output, robustness, performance, maintainability, and absence of rendering defects |
| **Total** | **100** | Comparative score only after coverage and blocking gates are evaluated |

### Rating anchors

| Rating | Anchor |
|---:|---|
| 0 | Absent, broken, or fundamentally unsuitable; critical failures dominate |
| 1 | Severe weaknesses; isolated competent decisions do not form a usable or coherent approach |
| 2 | Weak but partially viable; frequent defects or generic decisions require substantial redesign |
| 3 | Competent and coherent baseline; important tasks work, but notable weaknesses or missed opportunities remain |
| 4 | Excellent; deliberate, refined, and robust with only localized improvement opportunities |
| 5 | Exemplary in the stated context; distinctive and exceptionally well resolved across representative states, with strong supporting evidence |

A 5 is not “I like it.” Require evidence across the criterion's full scope. A 3 is a respectable baseline, not a failing grade.

## Calibration and scoring protocol

### Evidence coverage

Before scoring, mark each criterion:

- **Observed in rendered artifact:** direct screenshot or runtime evidence.
- **Observed in static artifact:** limited to properties visible in that artifact.
- **Inferred from source:** implementation suggests behavior but output was not verified.
- **Unverified:** no adequate evidence.

Interaction, motion, accessibility, and implementation fidelity usually cannot receive full-confidence scores from static images alone. Mark unavailable criteria unverified rather than assigning zero or guessing. Show score coverage alongside the total; if needed, present a possible range rather than prorating silently.

### Blocking gates

A numerical average never compensates for:

- broken primary functionality or data integrity;
- security or permission violations;
- keyboard traps or other critical access failures;
- deceptive state, fake success, or dishonest data presentation;
- failure to meet explicit user constraints.

Mark the option **blocked** or **not viable**, identify the cause, and keep any numeric score explicitly subordinate. Do not call an option “production-ready” because it scores highly.

### Compare consistently

Use the same screens, data, states, viewports, evaluator criteria, and evidence depth. Do not compare a polished concept with an implemented option and pretend their implementation-fidelity evidence is equivalent.

Do not silently change weights to favor a preferred direction. If a project needs a different rubric, create a separately named custom evaluation and do not compare its totals with this 100-point standard.

### Avoid false precision

Whole weighted points are usually enough. If two options differ by a small amount, inspect the criteria and risks rather than declaring statistical superiority. The rubric organizes judgment; it does not eliminate subjectivity.

## Iteration and comparative review

For each iteration:

1. retain the previous artifact and matched evidence;
2. list the issues the iteration intended to solve;
3. inspect whether each root cause improved;
4. identify regressions and newly exposed weaknesses;
5. update only affected criterion ratings with rationale;
6. check blocking gates again;
7. decide whether to continue, reverse, or change premise.

Do not keep every change merely because it is newer. Reversing a weaker iteration is a valid design outcome.

## Critique output pattern

### Executive diagnosis

State the strongest organizing idea, the highest-leverage weakness, and whether the problem is premise, system, local execution, implementation, or evidence.

### Perspective findings

For each of the eight perspectives, provide only concrete findings: evidence, mechanism, consequence, severity, and recommended intervention. Omit empty praise.

### Scorecard

Provide criterion weights, ratings, weighted points, evidence status, and one-sentence rationale. Include total score, evidence coverage, and blocking gates.

### Next iteration

List a small ordered set of root-cause changes and the exact matched validation that will follow. Distinguish completed checks from unverified claims and user-proxy judgment from actual user evidence.