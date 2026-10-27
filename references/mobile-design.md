# Mobile Design

## Contents

- Design for context, not a smaller canvas
- Platform and delivery model
- Navigation and task continuity
- Touch, reach, and ergonomics
- Gestures and direct manipulation
- Text, accessibility, and input
- Connectivity, permissions, and device state
- Notifications and interruptions
- Adaptive devices and larger screens
- Mobile visual craft
- Validation matrix

## Design for context, not a smaller canvas

Mobile use may involve one hand, movement, interruptions, changing connectivity, limited attention, and personal device settings. None of these is guaranteed; avoid stereotypes such as “mobile users only want quick tasks.” Support both brief and sustained work where the product requires it.

Prioritize:

- immediate orientation after launch or resume;
- the current object and next useful action;
- preservation of drafts, scroll, selection, and media state;
- resilience to interruption and network change;
- platform-consistent input and accessibility behavior;
- content over decorative chrome.

A mobile design should be recomposed from task priorities, not derived by hiding whichever desktop regions do not fit.

## Platform and delivery model

Choose native, web, hybrid, or cross-platform delivery based on required capabilities, team competence, performance, distribution, offline behavior, and maintenance—not aesthetic fashion.

Study current platform conventions for:

- navigation and back behavior;
- controls, selection, and editing;
- sheets, dialogs, and context menus;
- text scaling and dynamic type;
- haptics, sound, and feedback;
- safe areas and system bars;
- permissions and privacy indicators;
- assistive technologies and alternative input.

Maintain a coherent product identity while translating behavior to platform expectations. Do not force iOS patterns onto Android or mobile-web users merely to keep screenshots identical. Conversely, do not accept platform-default styling when a custom component would improve clarity and can remain accessible.

For a confirmed, partial, or intended Progressive Web App, also read [pwa-design.md](pwa-design.md). This file governs shared mobile-product behavior; the PWA module adds automatic detection, installed surfaces, manifest and service-worker lifecycle, web safe-area geometry, and browser-specific fallbacks.

## Navigation and task continuity

Use a small set of frequent top-level destinations for bottom navigation where appropriate. Keep secondary destinations in local navigation, search, or a clearly labeled more destination. Avoid mixing unrelated hierarchy levels in the same bar.

Define:

- what back does at every level;
- when a sheet closes versus when the parent view changes;
- whether tab state persists;
- how deep links enter and exit the hierarchy;
- how the app resumes after backgrounding or process restart;
- how unsaved work survives navigation;
- how authentication and expired sessions affect return context.

On mobile web, integrate browser history and back behavior rather than trapping users inside an application-only navigation model.

Avoid excessive nested stacks. If users repeatedly move among peer objects, consider tabs, recent items, master–detail adaptation, or a switcher instead of deeper navigation.

## Touch, reach, and ergonomics

Design for comfortable, error-tolerant interaction rather than only the smallest normative target. WCAG 2.2 Target Size (Minimum) includes a 24-by-24-CSS-pixel criterion with defined exceptions; platform guidance and user needs may call for larger targets. Treat minimums as floors, not ergonomic ideals.

### Place controls by frequency and consequence

- Keep frequent actions within comfortable reach when practical.
- Avoid placing frequent and destructive actions adjacent without clear distinction.
- Provide spacing that prevents accidental activation.
- Consider thumb reach as a heuristic, not a universal map; device size, grip, handedness, and assistive use vary.
- Do not put essential controls under system gestures, home indicators, camera cutouts, or browser chrome.

### Hit regions and visual size

A control's visual glyph can be smaller than its interactive region. Expand the hit region without causing overlap or ambiguous ownership. Inspect actual layout at text scaling and localization; labels can change target dimensions.

Provide immediate pressed or selected feedback and avoid long-press-only access to essential actions.

## Gestures and direct manipulation

Gestures can make repeated spatial actions efficient, but they are often invisible.

Use gestures when:

- the object metaphor makes movement natural;
- direct manipulation is faster than separate controls;
- the platform has a strong convention;
- a visible alternative exists for discovery and accessibility.

Define start threshold, direction, cancellation, conflict with scrolling, velocity behavior, snap points, interruption, and completion. Do not let decorative physics make the interface unpredictable.

For swipe actions, expose the action elsewhere and handle destructive operations with appropriate prevention or undo. For pinch, drag, or rotate, offer buttons or keyboard alternatives when precision or accessibility requires them.

Haptics and sound can reinforce discrete outcomes, but should be optional, platform-appropriate, and never the only feedback.

## Text, accessibility, and input

### Dynamic text

Support platform text scaling and larger accessibility sizes. At larger sizes:

- reflow instead of clipping;
- allow labels to wrap or controls to grow;
- preserve hierarchy through role and spacing;
- switch horizontal groups to vertical arrangements when necessary;
- avoid fixed-height containers around text;
- keep critical values and actions visible.

Test actual system fonts and custom fonts at all supported categories. Do not disable user font scaling for visual consistency.

### Keyboards and text entry

Choose the appropriate keyboard or input mode, but never restrict valid characters solely for convenience. Support autofill, paste, password managers, dictation, and external keyboards where relevant.

When a keyboard appears:

- keep the focused field and its error visible;
- avoid moving the primary action unpredictably;
- preserve scroll and draft state;
- provide clear return, next, and done behavior;
- avoid automatic focus that opens a keyboard before users understand the view.

Use input accessories only for relevant, frequent actions. Do not place essential controls where browser or system UI can cover them.

### Alternative access

Verify screen-reader order, labels, hints, values, traits, and announcements. Support switch access, voice control, keyboard, and other platform-relevant methods through semantics rather than custom gesture-only behavior.

## Connectivity, permissions, and device state

### Offline and poor connectivity

Classify each capability:

- works locally;
- reads cached data;
- queues changes;
- requires connection;
- has degraded but useful behavior.

Show freshness and synchronization state without making every offline moment an alarm. Resolve queued changes and conflicts explicitly. Never present queued work as safely completed on the server.

### Permissions

Request access in context, after explaining the user benefit. Handle first request, denied, permanently denied, limited access, revoked access, and restricted device states. Provide a useful alternative where possible, such as manual upload instead of camera access.

Do not change permission rules or access scope for design convenience. Coordinate any necessary product or technical changes with proper authority.

### Device lifecycle

Design for low battery, background suspension, incoming calls, audio interruption, rotated device, changed time zone, expired authentication, and OS updates where relevant. Preserve durable state and avoid destructive assumptions about resume.

## Notifications and interruptions

Tie notification strategy to user value and urgency. Distinguish marketing, social activity, task completion, operational alerts, and critical events. Provide granular controls and deep-link to a meaningful destination.

Inside the app, avoid stacking badges, banners, dialogs, and red dots for the same event. Use a persistent activity or status destination for information users may need later.

Design interruption recovery: when users return, they should understand what changed and what remains from their previous task.

## Adaptive devices and larger screens

Tablets, foldables, and desktop-class mobile devices need more than stretched phone layouts.

Consider:

- master–detail instead of sequential navigation;
- multi-pane comparison or creation;
- adaptive controls for touch, pointer, trackpad, and keyboard;
- hinge, fold, and posture changes;
- resizable windows and split-screen;
- drag and drop between apps where supported;
- content continuity during size changes;
- pointer hover without making it necessary.

Do not fill every larger viewport with additional panels. More space may instead improve reading, media, or focus. Let task value decide.

## Mobile visual craft

Use surface, depth, and motion consistently with the platform's spatial model. Sheets should feel attached to their origin and dismiss predictably; navigation transitions should preserve direction and hierarchy; selection should remain legible under touch.

Design dark mode, landscape, sunlight, low brightness, and reduced transparency where applicable. Test media crops and text overlays across aspect ratios.

Keep chromatic accents and elaborate illustration subordinate to thumb reach, status, and content. A visually quiet mobile product can still have strong identity through typography, object structure, transitions, iconography, and voice.

Optimize image sizes, animation, blur, and list rendering for realistic hardware. Smooth interaction and battery awareness are part of premium quality.

## Validation matrix

Test a representative matrix rather than every possible device:

| Dimension | Minimum coverage |
|---|---|
| Platforms | Each supported OS and mobile browser family |
| Sizes | Small phone, large phone, representative tablet or foldable if supported |
| Input | Touch, external keyboard or pointer where relevant, assistive technology |
| Text | Default, large, and largest supported accessibility category |
| Orientation | Portrait, landscape, and live rotation where supported |
| Connectivity | Online, slow, offline, reconnect, queued or conflicting changes |
| Permissions | Granted, denied, limited, revoked, and request-in-context |
| Lifecycle | Fresh launch, resume, background eviction where testable, expired session |
| Accessibility | Screen reader, reduced motion, increased contrast or bold text where supported |
| Content | Empty, typical, long, localized, media-heavy, and error states |

Capture screenshots and recordings of actual runs. Record device, OS, app version, settings, and untested combinations. Simulator inspection is useful but does not establish real-device performance or ergonomics.