# Information Architecture and Interaction Structure

## Contents

- Model the domain before navigation
- Roles, permissions, and visibility
- Navigation systems
- Task flows and state models
- Search, filter, sort, and compare
- Forms and input structure
- Menus, dialogs, sheets, and popovers
- Settings and preferences
- Notifications and background activity
- Empty, error, and recovery states
- Complex and interruptible workflows
- IA validation

## Model the domain before navigation

Identify the objects users care about, their relationships, and the actions that change them. Navigation should expose this model in a form users can understand.

For each core object, document:

- user-facing name and synonyms;
- identity and stable URL or deep-link behavior where applicable;
- owner and permitted actors;
- lifecycle and possible states;
- important attributes and relationships;
- primary and secondary actions;
- destructive or irreversible operations;
- history, provenance, and freshness;
- empty, missing, archived, and deleted behavior.

Distinguish objects from views. “Dashboard,” “Reports,” and “Analytics” may be different presentations of the same underlying data, not three equivalent domain categories.

### Choose an organizing principle

Common principles include task, object, audience, lifecycle, geography, time, and content type. Choose one primary principle and use others as filters or alternate entry points. Mixing principles at the same navigation level creates ambiguous categories.

## Roles, permissions, and visibility

Design the experience for each role without exposing unauthorized information or capabilities.

Map:

- what each role can see, create, edit, approve, export, share, and administer;
- whether access applies globally, per object, per field, or per state;
- what happens when permission changes during a session;
- whether a restricted user sees a hidden control, disabled explanation, request-access path, or nothing;
- how shared links, invitations, and public access affect the model;
- what audit or confirmation is required.

Do not use disabled controls as a substitute for a permission model. Avoid changing backend authorization or security semantics for visual consistency. UI simplification must never imply capabilities the system does not enforce.

## Navigation systems

Select navigation from task frequency, object count, hierarchy depth, screen space, and platform conventions.

| Pattern | Use when | Watch for |
|---|---|---|
| Top-level tabs | Few peer areas with frequent switching | Too many items, unclear nesting, small-space overflow |
| Sidebar | Many areas or hierarchical workspaces | Excess width, deep trees, collapsed-mode ambiguity |
| Top navigation | Limited global areas and content-led pages | Crowding with utilities and account actions |
| Bottom navigation | Small set of frequent mobile destinations | Using it for secondary or role-inconsistent destinations |
| Hub or home | Task-oriented entry into varied workflows | Becomes a page of undifferentiated shortcuts |
| Search or command | Large object spaces, expert acceleration | Poor discovery, weak synonyms, overreliance on recall |
| Contextual navigation | Movement among related objects or steps | Users lose global orientation |
| Breadcrumbs | Deep hierarchies and object provenance | Used as a substitute for primary navigation |

Keep global, local, contextual, and utility navigation conceptually distinct. Preserve current location, selection, and back behavior. Do not make logo click, browser back, or gesture behavior surprising.

### Deep links and history

A view that users can share, bookmark, or revisit should have a stable address where the platform supports it. Define what is captured in the address: object, tab, filters, date range, selection, or mode. Avoid encoding sensitive information.

Back should usually restore meaningful context, including scroll and filters, without accidentally repeating destructive or transactional operations.

## Task flows and state models

Map the task as a state machine before drawing screens.

For every step, identify:

- trigger and entry point;
- required information and prerequisites;
- available actions and alternatives;
- validation and feedback;
- success, failure, pending, and cancellation;
- save, resume, and interruption behavior;
- exit destination and preserved context.

Design for branches, not only the happy path: backtracking, editing earlier input, expired sessions, repeated submission, duplicate objects, conflicting updates, and partial completion.

Avoid wizards when users need comparison, nonlinear editing, or frequent revision. Avoid a single dense page when decisions are genuinely sequential and benefit from focused guidance.

## Search, filter, sort, and compare

### Search

Support the vocabulary users actually bring: names, identifiers, synonyms, attributes, and natural-language queries where appropriate. Show query state, result count, freshness, spelling handling, and no-result recovery.

Use suggestions to accelerate input, not to replace a usable results view. Preserve recent or scoped searches when they help repeated work; treat privacy appropriately.

### Filters

Choose controls based on data:

- booleans for independent constraints;
- single choice for mutually exclusive values;
- multiple choice for inclusive sets;
- ranges for numerical intervals;
- search within facets for long lists;
- date controls with explicit timezone and inclusivity.

Show active filters, provide clear-all and per-filter removal, and keep counts or result updates understandable. Decide whether filtering is immediate or applied explicitly based on cost, disruption, and user control.

### Sort

Use meaningful defaults tied to the task: relevance, recency, urgency, distance, or priority. Expose the current sort and direction. Do not call an opaque algorithm “best” without context where users need trust.

### Compare

Align comparable attributes, highlight differences, and preserve common context. Limit simultaneous comparison when space or cognition requires it, but explain the constraint and allow easy substitution.

## Forms and input structure

Structure forms around user decisions, not database fields.

- Ask only for information needed now; explain sensitive or unusual requests.
- Group related fields and use meaningful section headings.
- Use persistent labels and appropriate input types.
- Make optional and required status clear without relying on color or asterisks alone.
- Provide examples for ambiguous formats and accept reasonable input variation.
- Validate at a useful moment; avoid interrupting valid typing with premature errors.
- Place errors near the cause and provide a summary for long or complex forms when helpful.
- Preserve valid input after errors and authentication interruptions.
- Distinguish inability to submit from unwillingness to enable a button; explain unmet requirements.
- Confirm consequential outcomes and prevent duplicate submissions.

Use sensible defaults only when they are safe and genuinely likely. Defaults can become silent consent if users do not notice them.

## Menus, dialogs, sheets, and popovers

Choose the lightest container that preserves context and task requirements.

| Container | Appropriate use | Avoid when |
|---|---|---|
| Inline disclosure | Simple, local secondary content | Content needs focused attention or complex navigation |
| Popover | Small contextual tools or details | Content is large, persistent, or essential for reading the underlying view |
| Menu | Compact list of actions or choices | Used as a generic container for arbitrary forms |
| Tooltip | Short supplementary label or hint | Essential information, interactive content, or touch-only access |
| Nonmodal panel | Repeated reference or tools alongside work | It obscures the task or creates conflicting selection |
| Modal dialog | Brief focused decision or interruption | Workflow is long, users need background context, or interruption is unnecessary |
| Sheet or drawer | Contextual detail and mobile-adapted tasks | Stacked layers become confusing or trap navigation |
| Full page | Complex, shareable, or sustained work | Used for a trivial confirmation that could stay contextual |

Manage focus, escape, outside click, back behavior, scroll containment, and return focus. Do not stack overlays unless the spatial model remains clear and accessible.

## Settings and preferences

Organize settings by user goals and domain objects, not implementation modules.

Separate:

- account and identity;
- workspace or organization;
- notification preferences;
- appearance and accessibility;
- privacy and security;
- integrations;
- billing or plan;
- advanced or administrative controls.

Show scope: does a setting apply to the user, device, workspace, project, or current object? Indicate when changes take effect and whether they sync. Make destructive or hard-to-reverse settings explicit and searchable documentation available for unusual options.

Avoid preferences as a substitute for good defaults. Each option adds maintenance and comprehension cost.

## Notifications and background activity

Classify messages by urgency and required action:

- transient feedback;
- persistent status;
- actionable task;
- warning requiring attention;
- critical interruption;
- informational history.

Choose toast, inline message, banner, badge, notification center, email, or system notification accordingly. Do not use a disappearing toast for information users must retrieve later.

For background jobs, show queued, running, progress if known, completed, failed, canceled, and retry states. Avoid fake precision. Let users leave and return when the system supports it.

## Empty, error, and recovery states

### Empty states

Distinguish:

- first use with no objects;
- no results under current filters;
- no permission;
- temporarily unavailable data;
- completed queue or zero notifications;
- intentionally empty optional content.

Each needs different explanation and action. A generic illustration plus “Nothing here” discards useful context.

### Errors

Explain what happened in user terms, what was preserved, and what can be done next. Include technical details only when useful and safe. Provide retry, alternative path, support reference, or draft recovery where possible.

### Recovery

Design undo for reversible mistakes, confirmation for consequential actions, and clear recovery for irreversible ones. Do not confirm every trivial action; excessive confirmation trains dismissal.

## Complex and interruptible workflows

For long-running or collaborative work:

- expose overall progress and current phase without implying false linearity;
- preserve drafts and show save state;
- distinguish personal edits, shared state, and unpublished changes;
- handle concurrent updates and conflicts explicitly;
- provide a review step that summarizes consequences;
- support resume from a meaningful task list rather than an orphaned form;
- keep a history of important state transitions;
- make ownership and next actor clear in handoffs.

Use progressive disclosure for specialist options while keeping the primary path visible. Expert accelerators should complement, not replace, understandable baseline flows.

## IA validation

1. **Object naming test:** ask users or stakeholders what they expect each label to contain.
2. **Findability test:** give representative tasks and observe first click, search use, backtracking, and recovery.
3. **Card sorting or tree testing:** use when category structure is uncertain; choose open, closed, or hybrid methods appropriately.
4. **Role walkthrough:** traverse the same flow under each permission level and account state.
5. **State-machine review:** prove every important state has entry, exit, feedback, and recovery.
6. **Deep-link test:** reload, share, and revisit important views; verify preserved context and safe behavior.
7. **Search vocabulary test:** compare queries with labels, synonyms, identifiers, and localized terms.
8. **Interruption test:** leave mid-task, expire a session, lose connectivity, and return.
9. **Content-scale test:** inspect zero, few, many, and pathological object counts.
10. **Accessibility review:** verify headings, landmarks, focus order, accessible names, and navigation semantics match the visual structure.

Report what was inspected, with which artifacts and participants, and what remains unverified. A designer walkthrough is not a user research study.