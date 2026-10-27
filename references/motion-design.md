# Motion Design

## Contents

- Motion as a behavioral system
- Motion hierarchy and timing
- Easing, springs, and physical character
- Navigation and spatial continuity
- Shared elements and scene changes
- Microinteractions and feedback
- Gestures and direct manipulation
- Loading, progress, and live updates
- Scroll-linked motion
- Interruption and state machines
- Reduced motion and accessibility
- Rendering performance
- Motion validation

## Motion as a behavioral system

Motion should explain or enhance at least one of these:

- **causality:** what caused this change?
- **orientation:** where did this object or view come from?
- **continuity:** what remains the same across the change?
- **feedback:** was input received, and what is happening now?
- **hierarchy:** what deserves attention during the transition?
- **character:** how does the product feel while responding?

If motion serves none of these, remove it or make it subordinate. Do not animate merely because a component enters the viewport.

Define a motion grammar across the product: stable regions, entering and exiting objects, shared elements, transient feedback, overlays, live updates, and destructive consequences. A screen-by-screen collection of easing presets is not a motion system.

## Motion hierarchy and timing

Assign motion prominence according to significance and frequency.

| Level | Purpose | Typical expression |
|---|---|---|
| Ambient | Low-priority atmosphere or live context | Subtle, infrequent, optional, pausable |
| Micro | Acknowledge input or local state | Small, immediate, low travel |
| Component | Expand, select, reveal, reorder, or update | Clear origin and destination |
| Scene | Move among views or task phases | Stronger spatial continuity with stable anchors |
| Signature | Express a central product mechanism | Selective, memorable, never a repeated obstacle |

High-frequency actions generally need shorter, quieter motion than rare narrative moments. Do not impose one duration on every component.

Use timing ranges from existing platform guidance or project conventions as starting hypotheses, then inspect perceived responsiveness. Very fast changes can be hard to perceive; long transitions can make the product feel delayed. Duration should account for distance, complexity, direction, frequency, and whether users must wait.

Separate:

- **input acknowledgment:** immediate pressed or pending feedback;
- **state comprehension:** enough time to understand the change;
- **task availability:** when users can act again.

Never make the third wait unnecessarily for the second.

## Easing, springs, and physical character

### Easing curves

Use easing to express acceleration and settling:

- entering elements often decelerate as they arrive;
- exiting elements often accelerate away;
- elements that remain in the scene may benefit from continuous movement without a hard stop;
- direction changes should avoid abrupt velocity discontinuities unless the product character is intentionally mechanical.

These are composition heuristics, not universal equations. Standard curves are useful baselines; custom curves need a reason and consistent role.

### Springs

Springs can provide responsive, velocity-aware motion for gestures and interactive objects. Tune by perceived behavior—response, overshoot, settling—not by copying parameter values.

Consider:

- initial velocity from the gesture;
- stiffness or response speed;
- damping and overshoot;
- mass or visual weight where the model uses it;
- interruption without a jump;
- reduced-motion substitution;
- numerical stability and frame-rate independence.

Avoid excessive bounce for serious, precise, or high-frequency interfaces. A spring is not inherently more premium than a well-chosen duration curve.

## Navigation and spatial continuity

Map navigation to a coherent spatial model. Forward and backward movement should be understandable without relying solely on animation.

For route transitions:

- preserve persistent navigation and orientation anchors;
- establish origin and destination relationships;
- keep outgoing content readable only as long as useful;
- avoid crossfading unrelated hierarchies into visual soup;
- coordinate focus, semantics, and announcements independently of visual timing;
- make rapid repeated navigation safe and interruptible.

Tabs may switch laterally, dissolve in place, or update without travel depending on their mental model. Hierarchical detail may push, reveal, or share an element. Choose one logic per relationship, not one global “page transition.”

For installed web apps, also apply the Back contracts, standalone lifecycle, and platform fallbacks in `pwa-design.md`. A beautiful route animation cannot compensate for broken system Back or lost scroll position.

## Shared elements and scene changes

Use shared-element motion when an object genuinely persists across contexts: list item to detail, image to media viewer, compact composer to editor, or product card to comparison.

Verify:

- the source and destination represent the same entity;
- aspect-ratio and crop changes remain intelligible;
- text does not stretch or become unreadable mid-transition;
- z-order and clipping do not produce flashes;
- the object remains identifiable if animation is disabled;
- reverse transition returns to the correct origin even after filtering or data changes.

For scene changes, choreograph only meaningful layers. Moving every element independently creates noise and implementation fragility.

## Microinteractions and feedback

A microinteraction should have a clear trigger, rule, feedback, and state model.

Design the complete sequence:

1. input availability and affordance;
2. pointer-down, touch, key, or voice initiation;
3. immediate acknowledgment;
4. pending or progress if needed;
5. success, failure, cancellation, or partial result;
6. durable final state and recovery.

Examples include saving, toggling, adding, deleting, copying, uploading, and completing. Do not let a celebratory animation delay the next action or announce success before the authoritative operation succeeds.

Use haptics or sound only where supported, appropriate, optional, and synchronized with visible feedback. Never make them the only confirmation.

## Gestures and direct manipulation

Gesture-driven motion should preserve object continuity and user control.

- Track the pointer without artificial lag.
- Define direction lock and cancellation before movement becomes commitment.
- Preserve initial velocity when transitioning to spring or momentum.
- Show the consequence threshold before release when destructive or significant.
- Support interruption, multi-touch cancellation, and pointer loss.
- Settle into valid, accessible states with an equivalent non-gesture action.
- Avoid unintended activation after a scroll or cancelled gesture.

Do not use a long animation to “catch up” to the finger; it makes direct manipulation feel disconnected. Reduce work in the move handler before adding more interpolation.

## Loading, progress, and live updates

Choose loading motion from actual system knowledge:

- determinate progress when a trustworthy proportion exists;
- indeterminate activity when work is real but duration is unknown;
- staged messages only when stages are real;
- skeletons when their geometry accurately predicts content;
- optimistic updates only when success is highly likely and rollback is honest.

Avoid fake progress that pauses at arbitrary percentages or loops indefinitely. Respect reduced motion by using static state indicators and text.

For live updates, prevent movement from stealing interaction. Queue list reordering, preserve anchors, highlight changed values briefly and meaningfully, and allow pause or inspection. Motion should not make a changing dashboard harder to read.

## Scroll-linked motion

Scroll is user-controlled input, not a video timeline.

Suitable uses include:

- progressive spatial explanation;
- meaningful scale or perspective change;
- sticky context that aids comparison;
- a narrative whose pace genuinely benefits from scroll;
- direct manipulation of a visual scene.

Avoid:

- hijacking native scroll or changing expected wheel/touch speed;
- long scroll distances with little content;
- pinning essential controls unpredictably;
- hiding reading until animation completes;
- relying on scroll position for information unavailable by other means;
- expensive layout reads and writes on every scroll event.

Provide stable content order, keyboard access, reduced-motion behavior, and a usable experience when scroll-linked APIs are unsupported.

## Interruption and state machines

Define motion as transitions among explicit states, not one-way animation calls.

For each animated component, specify:

- resting states;
- allowed triggers;
- current progress or velocity;
- reversible points;
- cancellation destination;
- completion and cleanup;
- behavior when data changes mid-transition;
- behavior under rapid repeated input;
- reduced-motion equivalent.

Interruption should preserve truth. If a delete operation has already committed, reversing its exit animation must not imply that the server operation was reversed. Distinguish visual cancellation from domain cancellation.

Avoid waiting for an outgoing animation before starting the next necessary update. Coordinate transitions through a state machine or scheduler appropriate to the stack, not arbitrary timeouts scattered across components.

## Reduced motion and accessibility

Respect platform reduced-motion preferences and offer product-level controls when motion is substantial.

Reduce or replace:

- parallax and large zoom;
- full-screen spatial travel;
- continuous ambient motion;
- nonessential bounce and overshoot;
- rapid flashing or repeated attention cues;
- scroll-linked transformations that alter reading.

Preserve state comprehension with immediate changes, opacity where appropriate, text, shape, and stable hierarchy. Reduced motion does not always mean zero motion; choose the least triggering effective treatment.

Avoid content that flashes at hazardous rates or patterns. Motion must not be the only way to perceive status, errors, selection, or navigation. Pause, stop, or hide moving content when applicable accessibility requirements demand it.

## Rendering performance

Design motion within a measured frame and power budget.

- Animate transform and opacity where they produce the desired result and compositing actually helps.
- Avoid repeated layout, style recalculation, and paint in input handlers.
- Be cautious with large blurs, backdrop filters, shadows, masks, and full-screen repaints.
- Limit layer promotion; excessive `will-change` can increase memory and degrade performance.
- Decode and size media before the transition.
- Batch geometry reads and writes.
- Use passive listeners when cancellation is unnecessary.
- Test long sessions for memory growth and thermal degradation.
- Test mid-range devices, high-density screens, and different refresh rates.

Do not promise 60 or 120 fps from implementation technique alone. Measure frame timing, input latency, and visible jank in the running product.

## Motion validation

1. Record real-time transitions, not only static screenshots.
2. Inspect forward, reverse, cancellation, interruption, and rapid repetition.
3. Test slow network, missing assets, delayed data, and operation failure.
4. Verify gesture continuity and non-gesture alternatives.
5. Check reduced motion, keyboard, screen reader, zoom, and large text.
6. Measure rendering and input performance on representative hardware.
7. Verify that focus, semantics, and authoritative state do not lag behind visual spectacle.
8. Inspect browser and installed surfaces separately for PWAs.
9. Compare motion-off and motion-on versions for comprehension, not just preference.
10. Remove any animation whose absence improves speed and clarity without harming orientation or character.