# Premium Progressive Web App Design Intelligence

## Contents

- Mission and creative sovereignty
- Automatic PWA detection and routing
- Native-like without imitation
- Platform capability contract
- Android and iOS adaptation
- Standalone and installed experience
- Web App Manifest and installation design
- Safe areas and system chrome
- Viewport geometry and dynamic height
- Virtual keyboard and focused input
- Premium navigation and Back behavior
- Touch-first interaction and gestures
- Scroll, overscroll, and restoration
- Motion and perceived continuity
- Responsive recomposition
- Offline, loading, synchronization, and updates
- Service workers as experience infrastructure
- Smooth performance
- Accessibility and resilience
- Visual and runtime validation
- Canonical technical references

## Mission and creative sovereignty

Create an installed web experience whose **orientation, continuity, responsiveness, edge-state care, and platform adaptation** make it feel like a first-class application rather than a website placed in a frame.

Do not define native-like as copied Apple or Google pixels. Preserve the product's own identity and the web's strengths: URLs, reach, standards-based access, responsive composition, and progressive enhancement. Adapt to each platform instead of manufacturing one artificial cross-platform skin.

Every rule here is subordinate to the best contextually justified solution. Depart from a recommendation when a better mechanism serves the product; document context, expected gain, risk, fallback, and validation. Never violate accessibility, privacy, security, permissions, data meaning, or user constraints for the sake of app-like behavior.

Use this module together with `mobile-design.md`, `web-app-design.md`, `motion-design.md`, `implementation.md`, and `visual-validation.md`. This file owns PWA-specific detection, installed surfaces, platform capability, viewport geometry, offline lifecycle, and PWA validation; the other files retain their broader domains.

## Automatic PWA detection and routing

Apply this module automatically whenever repository evidence, runtime evidence, or the requested product intent indicates a PWA, an installed web app, or a native-like standalone web experience. Do not wait for the user to say “use the PWA module.”

### Inspect before assuming

Search the actual project and requirements for evidence such as:

- a linked Web App Manifest, `.webmanifest` or PWA manifest JSON;
- manifest members such as `display`, `display_override`, `start_url`, `scope`, `id`, `icons`, `shortcuts`, or `share_target`;
- service-worker registration, worker source, Cache Storage, offline fallback, or background-sync code;
- install-prompt handling or platform-specific Add to Home Screen guidance;
- PWA or offline build plugins and configuration, regardless of framework;
- `display-mode` media queries, standalone-mode branches, safe-area insets, or `viewport-fit=cover`;
- explicit requirements for installation, offline use, home-screen launch, or app-like mobile behavior.

Treat plugin names only as clues; inspect what they actually configure. A framework-specific PWA package does not guarantee that a valid manifest, offline behavior, or installed experience exists.

### Classify the evidence

| Classification | Evidence and action |
|---|---|
| Confirmed PWA or installed web app | Concrete implementation evidence shows a coherent installable app definition, or the running product exposes an actual installed surface. Apply the full module and inspect implementation gaps; assess offline support independently rather than making it a universal membership test. |
| Partial PWA | Only isolated or incomplete foundations exist: an unlinked or invalid manifest, a service worker without install configuration, a plugin name without working output, or missing required app metadata. Apply the full module, preserve working parts, and distinguish installability from offline support. |
| Explicit PWA target | The user requests an installable, standalone, offline-capable, or native-like installed web app, but no qualifying implementation evidence has been established. Apply the full module even before implementation exists; do not relabel intent as a confirmed implementation. |
| App-like mobile web, PWA status unknown | Native-like mobile behavior is requested but no PWA evidence is available. Apply relevant interaction guidance and determine whether installation/offline scope is intended without blocking visual progress. |
| Not currently a PWA | No PWA evidence or intent exists. Do not add a service worker or manifest merely to satisfy a visual redesign. |

Do not require a service worker as a universal installability test. Current Chromium install guidance does not require one, although service workers remain central to many offline and background experiences. Do not infer PWA quality from a Lighthouse category or the presence of a manifest alone.

### Detect the current runtime surface

Use capability and display-mode detection rather than user-agent assumptions:

```js
const standaloneMedia = window.matchMedia("(display-mode: standalone)");
const isStandalone = standaloneMedia.matches ||
  // Platform-specific, non-standard fallback; feature-detect it.
  ("standalone" in navigator && navigator.standalone === true);
```

Consider other requested display modes where relevant, including `fullscreen` and `minimal-ui`. Treat `navigator.standalone` as an Apple-specific compatibility signal, not a standard cross-browser API. Runtime mode detection says how the current window is presented; it does not prove which APIs are available.

Listen for relevant media-query changes if the environment can change without reload. Keep browser and standalone experiences functionally complete even when their chrome differs.

## Native-like without imitation

A premium PWA should preserve the expectations people have from excellent applications:

- stable destinations and predictable Back;
- immediate touch acknowledgment and continuity during transitions;
- persistent work across navigation, backgrounding, and reconnection;
- legible controls around system UI and keyboards;
- purposeful offline behavior instead of a browser error;
- coherent launch, icon, theme, and update presentation;
- no accidental page flashes, browser-like pull behavior, or lost scroll context;
- platform-appropriate feedback and interaction conventions.

Avoid counterfeit native details:

- a fake status bar, fake home indicator, or duplicated system navigation;
- disabling zoom, long-press, selection, or browser accessibility to suppress “web-like” behavior;
- globally blocking `touchmove`, pull-to-refresh, or edge gestures;
- an iOS toolbar copied unchanged into Android, or Material motion copied unchanged into iOS;
- custom gestures with no visible alternative;
- a splash animation that delays real use to imitate native launch;
- a constant install banner or prompt presented before user value is clear.

The target is not to conceal that the product uses the web. It is to make the product excellent in every surface where it runs.

## Platform capability contract

Before committing to a native-like mechanism, create a compact capability contract for the supported platforms and browsers.

| Capability | Required experience | Detection method | Supported path | Fallback | Validation surface |
|---|---|---|---|---|---|
| Installed display | Standalone app window | Manifest plus actual installation | Platform-specific installed launch | Complete browser-tab experience | Android Chrome and iOS Home Screen |
| Offline launch | Useful cached shell or content | Service worker and cache inspection | Versioned offline strategy | Honest network-required state | Cold and warm offline launches |
| Background synchronization | Deferred upload or refresh | Feature detection plus real platform test | Supported background API | Process on next launch and reconnection | App closed, reopened, online |
| Keyboard adaptation | Focused field and action remain visible | Default behavior, VisualViewport, optional VirtualKeyboard | Best supported geometry mechanism | Browser resize plus careful scrolling | Representative Android and iOS devices |
| Install action | Contextual installation help | `beforeinstallprompt` only where supported | Browser prompt or platform instructions | No fake universal install button | Each install flow separately |
| Native device feature | Camera, push, Bluetooth, NFC, or other capability | Specific API and permission detection | Supported web API | Alternate input, manual flow, or declared limitation | Real hardware and permission states |

Never use a single “PWA supported” boolean. Capabilities vary independently by browser, OS version, device, region, installation state, permission, and embed context. Re-check current documentation for fast-changing features and record the date of compatibility decisions.

Progressive enhancement means the fallback is designed, not merely mentioned. If a critical workflow cannot work acceptably through the web on a required platform, state the limitation and recommend an appropriate product or native solution rather than simulating support.

## Android and iOS adaptation

Design one coherent product grammar with platform-specific behavioral translations.

### Android Chrome

Inspect and design for:

- system Back and, where available, predictive-back behavior without assuming the web app controls the full native gesture;
- gesture and button navigation modes, including bottom safe-area differences;
- browser install prompt versus menu-driven installation;
- WebAPK versus browser-shortcut behavior documented for the specific browser and device;
- app switcher identity, launcher icon masking, and splash presentation;
- pull-to-refresh, overscroll, text selection, and edge gesture conflicts;
- keyboard resize behavior across browser versions and device manufacturers;
- varied performance, display cutouts, font scaling, and manufacturer customizations.

Do not claim that installation in desktop Chrome proves Android installation or standalone behavior.

### iOS and iPadOS

Inspect and design for:

- Add to Home Screen through supported browser and Share-menu flows; `beforeinstallprompt` is not supported on iOS according to current MDN install guidance;
- Home Screen web-app presentation and storage behavior distinct from a normal Safari session;
- safe areas around notches, Dynamic Island, rounded corners, and the home indicator;
- edge-swipe and system gestures where available, with visible in-app Back always recoverable;
- keyboard behavior that may resize the visual viewport without resizing the layout viewport;
- text scaling, reader and content behaviors, smart banners, and external-link transitions where relevant;
- web push and badging only under their actual Home Screen, version, and permission requirements;
- limited or absent background and hardware APIs on the required versions, with launch/reconnection fallbacks.

WebKit's Safari 26 documentation states that, by default, sites added to the Home Screen on iOS/iPadOS 26 open as web apps and users can disable “Open as Web App.” Do not convert this into an assumption that every older OS, browser, region, or installation path behaves identically. Keep a correct bookmark/browser experience as well.

### Shared product, different details

Keep task structure, terminology, semantic color, and component meaning coherent. Allow navigation chrome, transition physics, icons, date/time patterns, permission education, and gesture conventions to differ where the platform benefits. Do not use user-agent sniffing to select broad visual themes; use platform evidence only for genuinely platform-specific behavior and test the result.

## Standalone and installed experience

A standalone window removes some browser orientation cues. Replace only the cues the product actually needs.

Provide:

- a clear current destination and visible route back or up;
- stable primary navigation;
- access to sharing, opening external content, or browser-based actions where appropriate;
- deliberate handling of links outside the application scope;
- recoverable authentication and external-provider return flows;
- deep-link behavior on cold launch;
- meaningful offline and update states;
- correct app name, icon, launch background, and theme presentation.

Do not add a fake address bar. Do not trap external links inside an app-like shell when the browser is a better surface. Test universal links, OAuth or payment returns, downloadable files, and new-window behavior when used.

### Launch and resume

Distinguish:

1. first browser visit with no cached assets;
2. first installed launch;
3. warm resume from the app switcher;
4. cold installed launch online;
5. cold installed launch offline;
6. return from an external authentication or permission flow;
7. launch into a deep link with missing or stale local data.

Each needs explicit identity, content, and recovery behavior. Preserve the intended destination and drafts. Avoid showing the default home route briefly before resolving a deep link or restored session.

## Web App Manifest and installation design

Treat the manifest as part of product identity and navigation, not a technical checkbox.

Design and verify:

- `name` and `short_name` in realistic launcher and install contexts;
- stable `id`, appropriate `start_url`, and intentional `scope`;
- `display` and, only when useful, `display_override`;
- `theme_color` and `background_color` in light and dark product contexts where supported;
- standard and maskable icons with important artwork inside the safe zone;
- splash appearance generated by platforms that support it;
- optional `shortcuts`, `screenshots`, `share_target`, protocol handlers, and file handlers only after compatibility and product-value checks.

Current MDN Chromium install guidance lists `name` or `short_name`, 192px and 512px icons, `start_url`, `display` and/or `display_override`, and absent or false `prefer_related_applications`, plus HTTPS or an allowed local development origin. Treat these as engine-specific install criteria, not a universal definition of every good PWA. A service worker is not listed as a universal install requirement.

Link the manifest from every relevant HTML entry. Serve correct MIME and credential behavior. Ensure `start_url` and scoped routes work when offline support is promised; do not point launch at a redirect that loses context or fails without network.

### Installation UX

Offer installation after the product has demonstrated value and when installation improves the user's actual workflow. Use `beforeinstallprompt` only when the event exists; do not show an inactive custom Install button on unsupported platforms. On iOS, provide concise platform-appropriate instructions only in a relevant, user-initiated context.

Respect dismissal, installed state, and the choice to remain in the browser. Do not gate core functionality behind installation unless a specific capability genuinely requires it and the requirement is explained honestly.

## Safe areas and system chrome

For an edge-to-edge mobile layout, begin with a viewport configuration appropriate to the product, commonly:

```html
<meta name="viewport"
      content="width=device-width, initial-scale=1, viewport-fit=cover">
```

Do not add `user-scalable=no` or restrictive maximum scale to imitate native apps. `viewport-fit=cover` allows content to fill the display; use safe-area variables so essential content and controls are not clipped or obscured.

Define reusable inset aliases with fallbacks:

```css
:root {
  --safe-top: env(safe-area-inset-top, 0px);
  --safe-right: env(safe-area-inset-right, 0px);
  --safe-bottom: env(safe-area-inset-bottom, 0px);
  --safe-left: env(safe-area-inset-left, 0px);
}

.app-header {
  padding-block-start: calc(var(--safe-top) + var(--header-inset));
}

.bottom-navigation {
  padding-block-end: max(var(--safe-bottom), var(--navigation-inset));
}

.app-content {
  padding-inline: calc(var(--content-gutter) + var(--safe-left))
                  calc(var(--content-gutter) + var(--safe-right));
}
```

Adapt property order and logical-layout syntax to the project's established styling approach. The key rules are:

- apply top inset to the header or canvas deliberately, not simultaneously to several nested ancestors;
- include both navigation height and safe-area clearance in content's bottom scroll padding;
- account for left and right insets in landscape and multitasking;
- let decorative backgrounds extend into unsafe regions while keeping text, targets, and focus indicators safe;
- avoid double-counting an inset when the browser already resizes the content area;
- test values as dynamic browser chrome expands and collapses.

Use `safe-area-max-inset-*` only when a stable maximum is genuinely useful; the dynamic variables and maximum variables have different behavior. Do not hard-code a notch or home-indicator height.

Design the surface behind status and navigation areas so OS icons remain legible across light, dark, and media-rich screens. Manifest and meta theme colors are hints with platform-specific behavior, not proof of the final system-chrome appearance.

## Viewport geometry and dynamic height

Avoid treating `100vh` as a reliable representation of visible mobile height. Browser chrome, standalone mode, keyboards, zoom, and embedded surfaces can produce different layout and visual viewports.

Choose among small, large, and dynamic viewport units according to the desired behavior, with an appropriate fallback for the support matrix. Use `100dvh` when the layout should react to dynamic viewport changes, but inspect whether repeated changes cause distracting resizing. A stable reading surface may benefit from a different choice.

Define one explicit scroll owner for app-like views. Nested body, shell, pane, and modal scrolling creates lost position, rubber-band conflicts, and unreachable focused elements. Full-height shells are optional; normal document flow is often better for reading and forms.

Use `window.visualViewport` when geometry of the actually visible region matters. It exposes dimensions, offsets, scale, and resize/scroll events. Remember that the on-screen keyboard can shrink the visual viewport while leaving the layout viewport unchanged. Throttle visual updates to a frame, avoid layout thrashing, and do not emulate device-fixed positioning unless the simpler layout cannot work; MDN explicitly warns that such emulation can flicker.

## Virtual keyboard and focused input

Start with correct native inputs, sensible focus, and browser-default resizing. Add custom keyboard geometry only when the default fails a defined product need.

Test these mechanisms independently:

1. **Default browser behavior:** often sufficient for standard forms.
2. **Viewport `interactive-widget`:** evaluate `resizes-visual`, `resizes-content`, or `overlays-content` only after checking support and consequences.
3. **VisualViewport:** use geometry to keep the focused field, validation message, and composer visible when needed.
4. **VirtualKeyboard API:** optional experimental enhancement for fine-grained control; feature-detect `navigator.virtualKeyboard` and verify actual platform support.

The VirtualKeyboard API can set `navigator.virtualKeyboard.overlaysContent = true`, expose `boundingRect` and `geometrychange`, and provide `keyboard-inset-*` environment variables. MDN currently marks it experimental and not Baseline. Never enable overlay mode without implementing the complete layout response and a fallback; otherwise the keyboard may simply cover the interface.

For chat, editing, search, and forms:

- keep the focused control and its label/error visible;
- keep a composer or primary action reachable without covering the content being edited;
- preserve caret, selection, draft, and scroll position;
- avoid jumps when the keyboard changes height or language;
- handle hardware keyboards, floating keyboards, and split keyboards where relevant;
- restore layout and focus predictably on dismissal;
- do not auto-focus solely to force the keyboard open on launch.

Do not infer keyboard height from user agent or a fixed device profile. Test real devices and report unsupported combinations.

## Premium navigation and Back behavior

Design navigation as a persistent spatial and historical model.

### Bottom navigation

Use bottom navigation for a small set of frequent peer destinations. Give every item a clear label and selected state, preserve badge meaning, and include bottom safe-area clearance. Do not place a floating action or composer over the last scrollable content without compensating scroll padding.

Decide per tab:

- whether its navigation stack and scroll position persist;
- whether reselecting the tab pops to root, scrolls to top, refreshes, or does nothing;
- whether filters and drafts survive switching;
- what happens after a deep link into a child route.

Keep these rules consistent unless a specific destination has a justified different task model.

### Hierarchical transitions

Forward navigation should clarify that detail belongs to its origin; Back should restore the prior context. Use shared elements or directional motion only when they reinforce this relationship. Keep bottom navigation and other persistent anchors stable instead of animating the entire shell for every route.

### Back contract

Write a route-level Back contract covering:

- visible in-app Back or Close;
- Android system Back;
- browser Back and Forward;
- iOS edge swipe where the environment supports it;
- open menus, sheets, dialogs, editing modes, and fullscreen media;
- unsaved changes and destructive exits;
- cold deep links with no in-app history;
- external authentication or payment return;
- tab roots and app exit behavior.

Do not blindly call `history.back()` when the previous entry may be an unrelated external site. Provide a meaningful Up route for cold starts. Do not create fake history entries for every UI state unless users genuinely benefit from navigating them with Back.

Overlays should usually dismiss before underlying navigation changes, but high-risk unsaved work may require a deliberate save/discard decision. Avoid confirmation loops and never make Back unusable.

## Touch-first interaction and gestures

Design touch targets for comfort and error tolerance, not only WCAG minimum size. Account for one-handed reach without assuming a fixed thumb zone. Separate frequent actions from destructive ones, and provide adequate spacing at screen edges.

Use immediate pressed states and stable geometry. Avoid moving a button between pointer-down and activation. Ensure disabled, loading, and success states do not silently change target ownership.

For custom gestures:

- prefer Pointer Events and appropriate `touch-action` on the interactive region;
- use passive listeners where cancellation is unnecessary;
- define threshold, direction lock, velocity behavior, cancellation, `pointercancel`, and interrupted gestures;
- avoid conflicts with vertical scrolling, text selection, browser zoom, and OS edge navigation;
- provide a visible or keyboard-accessible alternative;
- keep the object under the finger when direct manipulation is intended;
- test slow, fast, short, diagonal, interrupted, and multi-touch sequences.

Do not set `touch-action: none` on the entire page to make the app feel native. Apply the narrowest necessary gesture policy to the smallest region.

## Scroll, overscroll, and restoration

### Scroll ownership

Use normal document scrolling unless a shell or pane genuinely needs independent scrolling. Sticky headers and bottom bars must not obscure anchors, focused inputs, or the final content row. Avoid scroll containers with accidental one-pixel overflow.

### Overscroll

Use `overscroll-behavior` on the specific scroll container to manage scroll chaining and boundary behavior. `contain` prevents chaining while allowing bounce; `none` prevents both chaining and bounce in supporting engines. Verify current behavior on the actual browser—especially iOS—rather than assuming complete control over every system effect.

Do not globally disable overscroll merely to hide web behavior. Preserve useful pull-to-refresh or provide an intentional alternative when the product needs it. Keep edge regions available for system gestures.

### Restoration

Prefer the browser's automatic scroll restoration when it works. If route rendering or virtualized content requires custom restoration:

1. store a stable route/tab key and meaningful content anchor, not only a pixel offset;
2. coordinate `history.scrollRestoration = "manual"` with a complete replacement strategy;
3. restore after required content and dimensions exist, without visible jumping;
4. handle changed data, deleted items, filters, and orientation;
5. restore each tab or pane independently where the navigation model promises it;
6. reset to the top only for genuinely new destinations, not every rerender.

Never set manual restoration globally and then implement only a pixel offset for the happy path.

## Motion and perceived continuity

Native-like motion is primarily continuity and responsiveness, not duration or spring complexity.

- Acknowledge touch immediately, before network or route work completes.
- Keep persistent navigation stable during route transitions.
- Use transform and opacity for inexpensive visual transitions where suitable; verify actual compositing rather than assuming these properties are always cheap.
- Preserve shared-element identity only when geometry and content remain coherent.
- Match exit direction and Back direction to the spatial model.
- Allow interruption when users navigate quickly or change their minds.
- Avoid animating viewport height, large blurs, shadows, and layout-heavy properties during touch interaction.
- Respect reduced motion and provide nonspatial state cues.

Treat View Transitions and other emerging APIs as optional enhancements with feature detection and a complete nonanimated fallback. Test on mid-range hardware and 120Hz as well as 60Hz environments where supported; never promise a frame rate from CSS choices alone.

## Responsive recomposition

A PWA may move among phone, foldable, tablet, desktop window, and browser tab. Recompose by task and available space.

- **Compact phone:** focused destination, bottom or compact navigation, reach-aware primary action, one main scroll owner.
- **Large phone or landscape:** preserve readable measure and safe-area insets; avoid simply stretching cards.
- **Foldable or dual-screen:** inspect viewport segments and hinge behavior only where supported; provide a single-surface fallback.
- **Tablet:** consider master–detail, supporting panes, or canvas plus tools while retaining touch targets.
- **Desktop installed app:** support keyboard, pointer, resizable windows, title-bar behavior, and window controls; optionally evaluate `window-controls-overlay` with `titlebar-area-*` variables and a standard title-bar fallback.
- **Embedded or split-screen:** treat available width and height as dynamic, not as a device label.

Preserve selection, focus, drafts, route, and scroll context when the composition changes. Do not hide essential capability in the desktop-to-mobile transformation or vice versa.

## Offline, loading, synchronization, and updates

Design connectivity as a state model rather than an online/offline badge.

### Required experience states

Include:

- uncached first load;
- loading with cached shell but fresh data pending;
- fresh online content;
- stale cached content with visible age;
- partial content and per-module failure;
- offline with useful cached functionality;
- offline with a network-required action;
- reconnecting and validating changes;
- queued local work awaiting synchronization;
- synchronization conflict or rejected change;
- update available and update ready;
- cache or credentials cleared;
- expired session while offline.

Never present cached data as current or queued work as server-confirmed. Distinguish zero results from unavailable data. Preserve user input before attempting a network request.

### Loading design

Use a stable shell and content-shaped placeholders only when they accurately predict layout. Reserve media and asynchronous-content dimensions to prevent layout shift. Replace indefinite skeletons with an honest delayed or offline state. Do not add an artificial splash delay.

### Outbox and synchronization

For offline creation or editing, use a durable, visible outbox when appropriate. Give each operation identity, local status, timestamp, retry behavior, and conflict outcome. Coordinate with backend idempotency and authorization; never change those semantics solely in the client.

Background Sync, Periodic Background Sync, and Background Fetch are independent capabilities with varying support. Feature-detect them and provide next-launch, foreground, and `online`-event recovery as appropriate. An `online` event is a hint to retry connectivity, not proof that the service or internet is reachable.

### Update experience

A new service worker may wait while old clients remain open. Design update messaging around user work:

- avoid forced reload during editing, payment, upload, or another critical operation;
- offer a clear update action when the new version is ready;
- preserve route and durable state across reload;
- use `skipWaiting()` and client claiming only with a deliberate compatibility and lifecycle strategy;
- keep caches and API/data formats compatible during rollout;
- test old client/new worker and new client/old server combinations where possible.

## Service workers as experience infrastructure

Choose caching from content semantics, freshness, privacy, and failure cost.

| Resource | Candidate strategy | Critical caution |
|---|---|---|
| Versioned static assets | Precache or cache-first with versioned cleanup | Failed precache can prevent installation; stale HTML references must remain compatible |
| Application shell | Deliberate precache with tested offline launch | A shell without meaningful data or recovery can become a polished dead end |
| HTML navigation | Network-first, app-shell, or hybrid according to freshness and routing | Cache fallback must preserve deep links and avoid serving the wrong account context |
| Public reference content | Stale-while-revalidate or cache-first with expiry | Show freshness where it affects decisions |
| Personalized or sensitive data | Explicit minimal strategy, encryption/access controls where appropriate, and logout cleanup | Never cache by URL alone across users or leak data on shared devices |
| Live financial, safety, or operational data | Network-first with clear stale state or hard network requirement | Cached values can be dangerous when presented as current |
| Mutations | Durable outbox and explicit server confirmation; do not treat response caching as synchronization | Retries require idempotency, ordering, and conflict handling |

Use service-worker lifecycle, Cache Storage, IndexedDB, and messaging according to actual project architecture. Do not add worker complexity for a content site that does not benefit. Do not cache authenticated responses, third-party content, or large media indiscriminately.

A service worker is not continuously running and does not guarantee background execution. Design for browser termination, retry, partial completion, and storage eviction. Provide user-visible recovery when local state cannot be guaranteed.

## Smooth performance

Set a performance budget around critical user experience, not only bundle size.

Optimize:

- time to useful shell and meaningful content;
- input acknowledgment and route-transition responsiveness;
- stable layout during fonts, media, data, banners, and offline updates;
- scrolling and gesture handling on mid-range devices;
- memory use in long-lived standalone sessions;
- image decoding, list rendering, charts, maps, and large DOM size;
- main-thread long tasks and unnecessary worker messaging;
- battery cost from continuous animation, polling, and large backdrop effects.

Reserve dimensions for media and async modules. Use responsive images and appropriate font subsets without harming required scripts. Avoid premature font swapping that moves navigation or controls. Keep skeletons and cached shells dimensionally consistent with final content.

Use passive listeners where suitable, batch geometry reads and writes, and avoid repeated synchronous layout in VisualViewport or scroll handlers. Do not scatter `will-change` across the app; promote layers deliberately and inspect memory/compositing effects.

Measure real interaction latency, layout stability, and route-specific behavior. Core Web Vitals remain useful but do not prove smooth native-like gestures or installed-app lifecycle quality.

## Accessibility and resilience

Native-like behavior must not remove web accessibility.

- Preserve pinch zoom, browser text scaling, selection where meaningful, and assistive-technology operation.
- Use semantic buttons, links, headings, forms, dialogs, and navigation before custom gesture layers.
- Keep visible focus safe from sticky chrome, keyboard, and screen edges.
- Announce route, connectivity, queue, and update changes without excessive live-region noise.
- Offer non-gesture alternatives and sufficient target spacing.
- Respect reduced motion, increased contrast, reduced transparency, and forced colors where supported.
- Ensure offline, stale, disabled, and synchronizing states are understandable without color alone.
- Support external keyboards, switch control, voice input, and screen readers on relevant platforms.

A standalone PWA is still a web document unless a specific native wrapper changes the environment. Do not apply native-accessibility assumptions that the web semantics do not fulfill.

## Visual and runtime validation

A responsive browser screenshot is not PWA validation. Test the actual installed surface whenever the required environment is available; otherwise mark it unverified.

### Environment matrix

| Surface | Minimum evidence to seek |
|---|---|
| Android Chrome browser | Narrow and large phone, dynamic browser chrome, touch, keyboard, Back, offline |
| Android installed PWA | Install path, launcher identity, standalone display, app switcher, system Back, cold/warm launch |
| iOS Safari | Safe areas, browser chrome, edge gestures, keyboard, zoom/text scaling, offline |
| iOS/iPadOS Home Screen app | Add to Home Screen path, icon and launch, standalone layout, Back/up recovery, lifecycle and storage behavior |
| Tablet or foldable | Recomposition, multitasking, orientation, hinge/segments where relevant |
| Desktop installed app | Resizing, keyboard, pointer, deep links, window controls, update flow |

Use actual devices for touch ergonomics, keyboard, safe areas, lifecycle, and performance when possible. Emulators and device emulation are valuable for layout and regression but do not establish real-device behavior.

### Viewport and state matrix

Select sizes from the support matrix rather than treating these as device definitions. Include a narrow phone around 320–360 CSS px, modern medium and large phones, short landscape, tablet widths, and a resizable desktop window. At each relevant size inspect:

- top, bottom, left, and right safe areas;
- expanded and collapsed browser chrome;
- standalone versus browser mode;
- light and dark themes;
- default and enlarged text;
- zoom and localization;
- empty, typical, long, and extreme content;
- loading, stale, offline, reconnecting, error, and update states;
- keyboard closed, opening, open, resized, and dismissed;
- route entry, Back, tab switching, and process resume.

### Runtime test protocol

1. Clear the appropriate site state for a true first-load test; preserve it separately for warm-start tests.
2. Verify manifest fields, icons, scope, start URL, and actual installation independently per platform.
3. Launch online and offline from browser and installed surfaces; include a deep link.
4. Traverse the Back contract with overlays, unsaved edits, tab history, and cold starts.
5. Exercise scroll, overscroll, pull-to-refresh, edge gestures, text selection, and custom gestures together.
6. Focus every critical input with the keyboard; test rotation and keyboard dismissal.
7. Toggle connectivity during reading, editing, submission, synchronization, and update.
8. Background and resume; test cold restart and expired authentication where possible.
9. Deploy or simulate a worker update in a controlled test environment and verify preservation of active work.
10. Capture screenshots, recordings, traces, and exact environment metadata for the states inspected.

Report **passed**, **failed**, or **unverified** per surface. Never claim iOS standalone validation from desktop Safari emulation, Android installation from an Chromium audit, real-device smoothness from a screenshot, or offline reliability from one successful cached reload.

## Canonical technical references

Re-check current versions and compatibility tables when implementing. These sources inform this module; they do not replace testing the target environment.

- [MDN: What is a progressive web app?](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/Guides/What_is_a_progressive_web_app)
- [MDN: Making PWAs installable](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/Guides/Making_PWAs_installable)
- [MDN: Web application manifest](https://developer.mozilla.org/en-US/docs/Web/Manifest)
- [MDN: Offline and background operation](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/Guides/Offline_and_background_operation)
- [MDN: Using Service Workers](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API/Using_Service_Workers)
- [MDN: viewport meta, including viewport-fit and interactive-widget](https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/Elements/meta/name/viewport)
- [MDN: CSS env(), safe areas, keyboard insets, and titlebar areas](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/env)
- [MDN: VisualViewport API](https://developer.mozilla.org/en-US/docs/Web/API/Visual_Viewport_API)
- [MDN: VirtualKeyboard API](https://developer.mozilla.org/en-US/docs/Web/API/VirtualKeyboard_API) — experimental, limited availability at the time of this synthesis.
- [MDN: overscroll-behavior](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/overscroll-behavior)
- [MDN: History.scrollRestoration](https://developer.mozilla.org/en-US/docs/Web/API/History/scrollRestoration)
- [WebKit: Web Push for Web Apps on iOS and iPadOS](https://webkit.org/blog/13878/web-push-for-web-apps-on-ios-and-ipados/)
- [WebKit: WebKit Features in Safari 26.0](https://webkit.org/blog/17333/webkit-features-in-safari-26-0/) — includes the iOS/iPadOS 26 Home Screen web-app behavior described above.
