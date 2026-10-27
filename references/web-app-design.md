# Web Application Design

## Contents

- Design the application shell
- Routes, history, and state
- Responsive application composition
- Keyboard and focus
- Command and search systems
- Forms and browser-assisted input
- Tables and structured work
- Overlays and multi-pane work
- Browser semantics and accessibility
- Performance and resilience
- Web-app validation

For installable, standalone, offline-capable, or native-like Progressive Web Apps, combine this file with [pwa-design.md](pwa-design.md). Keep general web application semantics here; apply the PWA module's capability detection and installed-surface checks in addition to, not instead of, these foundations.

## Design the application shell

The shell provides orientation, global actions, navigation, account context, and continuity. It should recede during focused work without becoming inaccessible.

Define shell regions and their behavior:

- global navigation and current location;
- workspace, project, or account switcher;
- primary creation or task action;
- search or command entry;
- notifications and background activity;
- help, settings, and account;
- optional local navigation and contextual tools;
- main content and its scroll ownership.

Decide which regions persist, collapse, or disappear by viewport and task. Do not allow nested scroll containers to make the main content or keyboard focus unreachable.

For embedded or white-label applications, distinguish host navigation from product navigation and avoid duplicate browser-like chrome.

## Routes, history, and state

Treat URLs and browser history as interaction infrastructure where available.

Define which state belongs in:

- the route: object identity, major mode, shareable tab;
- query parameters: filters, sort, search, date range, page, or view;
- durable server state: saved work and shared configuration;
- local state: transient hover, focus, open popover, and minor UI preferences;
- session or device state: appropriate non-sensitive preferences.

Reload, forward, back, duplicate tab, and share-link behavior should be deliberate. Do not lose a drafted change silently because a filter or route changed. Protect sensitive data from URLs, analytics, and browser storage.

For static hosting or constrained previews, ensure every route remains reachable through supported navigation and hosting rules; do not mistake a working development server for production deep-link support.

## Responsive application composition

Use content-driven breakpoints. At each transition, determine whether a region:

- remains visible;
- collapses into a labeled control;
- becomes a separate view;
- changes representation;
- moves below or beside primary content;
- is no longer relevant to the current task.

Preserve context when moving between master and detail, table and record list, or sidebar and drawer. Return users to the same selection, filters, and meaningful scroll location.

Support browser zoom and large text as layout conditions, not afterthoughts. Avoid fixed viewport-height assumptions when mobile browser chrome, virtual keyboards, or embedded frames alter available space.

## Keyboard and focus

Design a complete keyboard model, not isolated tab stops.

- Use native interactive elements and expected keys wherever possible.
- Keep tab order aligned with reading and task order.
- Provide visible focus that is not obscured by sticky regions or overlays.
- Use roving focus or another appropriate composite-widget pattern for toolbars, tabs, menus, and grids only when semantics and behavior are implemented fully.
- Offer shortcuts for frequent expert tasks, with discovery and conflict handling.
- Avoid single-character shortcuts when users may be typing or using speech input unless context and standards allow them safely.
- Restore focus logically after closing, deleting, filtering, or navigating.
- Provide skip mechanisms for repeated navigation where appropriate.

Do not create keyboard traps. A shortcut cheat sheet is not a replacement for accessible baseline operation.

## Command and search systems

Command palettes work well for large action spaces and expert acceleration, but they require a discoverable alternative.

Design:

- clear entry points and shortcut display;
- recent, suggested, and scoped commands;
- action versus object versus navigation result distinctions;
- synonyms and searchable keywords;
- unavailable or permission-restricted command behavior;
- destructive-action confirmation and context;
- keyboard navigation, selection, and screen-reader announcements;
- no-result recovery and latency states.

Avoid hiding primary navigation solely inside a command palette. Recall-heavy commands can exclude new users and people who cannot or prefer not to type.

Global search should expose scope, active filters, freshness, and meaningful snippets. Keep search and command semantics distinct if their outcomes differ.

## Forms and browser-assisted input

Use correct input types, autocomplete tokens, labels, and native validation behavior where appropriate. Support password managers, payment autofill, paste, and browser translation without assuming their output format.

Handle:

- server and client validation consistently;
- slow submission and duplicate clicks;
- session expiry and return to draft;
- file selection, upload progress, cancellation, and retry;
- timezone, locale, and input-method differences;
- browser back and refresh during editing;
- autofill styling and accessible errors.

Do not block paste in password, code, or verification fields without a strong, justified reason. Use one-time-code support where available, while retaining manual entry.

## Tables and structured work

Data tables are workspaces, not just grids of text.

Define:

- stable column identity, order, resizing, and visibility;
- header association and accessible row or cell navigation;
- sorting, filtering, grouping, and pagination or virtualization;
- selection across pages and filters;
- bulk actions and their scope;
- inline editing, validation, and save state;
- row-level status, actions, and navigation;
- pinned columns or rows and their narrow-screen fallback;
- empty, loading, partial, error, and permission-limited cells.

Use semantic tables for tabular relationships where feasible. If virtualization or grid interactions require a different implementation, reproduce the necessary keyboard and assistive-technology model deliberately.

Do not convert every table to cards on small screens. Compare the tasks: a structured list, selectable columns, horizontal exploration with clear cues, or a separate detail view may each be better.

## Overlays and multi-pane work

Use overlays for focused, temporary work; use durable panes for repeated comparison and reference.

For dialogs, menus, popovers, drawers, and toasts:

- define trigger, focus entry, focus containment where appropriate, dismissal, and return focus;
- prevent background interaction only when modality requires it;
- keep critical content from being hidden behind sticky chrome;
- avoid cascading overlays and ambiguous z-index competition;
- make width, height, overflow, and small-screen behavior deliberate;
- preserve draft state on accidental or intentional dismissal according to consequence.

Multi-pane layouts need clear active region, resizing limits, keyboard alternatives, collapse behavior, and accessible reading order. Do not make pane resizing the only way to reach content.

## Browser semantics and accessibility

Prefer semantic HTML and platform behavior before custom widgets. Visual roles and DOM roles must match. A div styled like a button does not become a robust button through a click handler alone.

Verify:

- landmarks, headings, lists, tables, forms, and names;
- keyboard operation and focus visibility;
- skip links and route-change announcements where needed;
- live-region use without excessive announcements;
- reduced motion, contrast preferences, forced colors, and text spacing;
- 200% and 400% zoom/reflow as applicable to the target conformance requirements;
- target size and dragging alternatives under applicable WCAG criteria;
- accessible authentication and redundant-entry requirements where relevant.

Automated scanners are useful but cannot judge meaningful names, logical focus, task completion, or visual hierarchy.

## Performance and resilience

Performance is a design constraint and a behavioral feature.

Coordinate design and implementation to:

- prioritize the route's critical content and controls;
- avoid layout shifts from fonts, media, banners, and asynchronous values;
- reserve media and advertising space;
- lazy-load below-priority resources without delaying expected interaction;
- keep long lists and expensive visualizations responsive;
- minimize large blur, shadow, and animation costs on target devices;
- cache appropriately without presenting stale data as fresh;
- provide partial failure and retry rather than blanking the entire application.

Use Core Web Vitals as one performance lens: current web.dev guidance describes good LCP at or below 2.5 seconds, INP at or below 200 milliseconds, and CLS at or below 0.1 at the 75th percentile, segmented by mobile and desktop. These metrics do not replace route-specific task timings or perceived-state inspection.

## Web-app validation

1. Traverse core flows with mouse, touch, keyboard alone, and a screen reader where supported.
2. Test direct URLs, reload, back, forward, duplicated tabs, and shared links.
3. Resize continuously and test zoom, large text, short viewports, and virtual keyboards.
4. Inspect focus after route changes, deletion, filtering, async updates, and overlay dismissal.
5. Test slow networks, offline transitions, expired sessions, server errors, and partial data.
6. Verify real fonts, images, third-party embeds, and browser autofill.
7. Test empty, large, and pathological data sets, including virtualization boundaries.
8. Measure actual responsiveness and layout stability on representative hardware.
9. Check browser-specific rendering and accessibility differences relevant to the support matrix.
10. Record evidence and untested browser, device, and assistive-technology combinations explicitly.