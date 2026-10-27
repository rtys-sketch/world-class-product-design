# Dashboards and Data-Dense Interfaces

## Contents

- Start with decisions
- Build metric and object hierarchy
- Compose the dashboard
- Select visual encodings
- Data honesty and uncertainty
- Tables and numerical work
- Filters, drill-down, and comparison
- Real-time and alerting
- Density and performance
- Dashboard critique

## Start with decisions

A dashboard is not a collection of charts. It is an environment for monitoring, understanding, deciding, or acting. Identify the dominant mode before choosing modules.

For each intended user, ask:

- What decision or recurring question brings them here?
- What counts as normal, noteworthy, or urgent?
- Which comparison gives a number meaning?
- What evidence is needed before action?
- What action follows the insight?
- How current must the data be?
- What happens when data is missing or delayed?

Translate the answers into an information hierarchy. If no action or judgment depends on a module, question its presence.

### Distinguish dashboard modes

- **Monitoring:** fast detection of status and exceptions.
- **Analysis:** comparison, decomposition, and exploration.
- **Operational:** direct transition from signal to work queue or action.
- **Reporting:** stable narrative and periodic communication.
- **Executive summary:** selective high-level indicators with trustworthy drill-down.

One dashboard can support several modes, but each needs a clear home and transition. Mixing all modes at equal weight produces clutter.

## Build metric and object hierarchy

Define each metric with a contract:

- name and user-facing meaning;
- formula and unit;
- numerator, denominator, and exclusions where relevant;
- time window and timezone;
- grain and aggregation;
- comparison baseline;
- expected direction and whether increase is good;
- freshness and source;
- rounding and precision;
- owner or methodology reference where needed.

Do not infer metric definitions from labels alone. “Revenue,” “active users,” and “conversion” can have materially different meanings.

### KPI hierarchy

Use one of these structures according to the task:

- **Headline + support:** one primary outcome, a few explanatory metrics, detailed evidence below.
- **Domain groups:** metrics grouped by user question or business function.
- **Exception-first:** normal health summarized compactly; abnormal items receive attention.
- **Flow or funnel:** stages and conversions arranged according to an actual process.
- **Object-centric:** primary entities with status, trend, and next action rather than organization-wide aggregates.

A large KPI number without comparison, timeframe, unit, or destination is often decorative rather than informative.

## Compose the dashboard

Use layout to express relationships and priority.

- Place orientation, scope, and freshness in stable positions.
- Keep filters and their effect on visible data explicit.
- Put related metrics near one another and align their time windows where comparison is expected.
- Use larger or more prominent modules for primary decisions, not simply the first available chart.
- Provide a clear route from summary to evidence to action.
- Avoid giving every module a separate heavy container; visual fragmentation can hide relationships.
- Preserve meaningful alignment between rows, columns, values, and time axes.

Design a useful zero-data, partial-data, delayed-data, and all-normal state. An empty dashboard should not imply healthy zero activity when collection failed.

## Select visual encodings

Choose the visual form from the question and data structure.

| Question | Candidate representation | Main caution |
|---|---|---|
| How does a value change over time? | Line, area where magnitude matters, compact sparkline | Too many series, misleading smoothing, broken time intervals |
| How do categories compare? | Bar or dot plot, sorted where meaningful | Excessive categories, rotated labels, truncated axis distortion |
| How is a total distributed? | Stacked bar or carefully limited part-to-whole view | Hard comparison across many segments; pie charts with similar slices |
| What is the distribution? | Histogram, box plot, density or quantile view | Bin choices and unfamiliar statistical encodings |
| How do two variables relate? | Scatter plot with appropriate scales | Overplotting, correlation interpreted as causation |
| Where are exceptions? | Table with status, heatmap, ranked list, alert queue | Color-only meaning and arbitrary thresholds |
| How does work move? | Funnel, sankey, process or stage view | Suggested conservation or causality that data does not support |
| What is happening geographically? | Map when location itself matters | Regional area bias, projection, and sparse-data interpretation |
| What changed since baseline? | Delta bars, deviation line, before/after aligned values | Baseline selection and percentage-point confusion |

Tables are often superior when users need exact values, lookup, or many heterogeneous units. Do not visualize merely to fill a dashboard.

### Encoding priorities

Position and length usually support precise comparison more directly than area, angle, 3D depth, or color intensity. Use stronger 3D or decorative encodings only when they add meaning and do not distort interpretation.

Direct labels can reduce legend lookup. Legends remain useful for dense or interactive series; ensure stable color-to-series mapping.

## Data honesty and uncertainty

Make the limits of interpretation visible.

- Use axis baselines appropriate to the encoding and question; bar charts generally require particular care with truncated baselines.
- Label units, time ranges, timezones, and aggregation.
- Distinguish absolute change, relative change, and percentage-point change.
- Avoid smoothing or interpolation that implies unobserved certainty.
- Expose sample size, confidence intervals, estimates, forecasts, and missingness when decision-relevant.
- Mark partial periods so incomplete current data is not compared naively with complete periods.
- Do not let rounding conceal small but consequential values or invent false precision.
- Preserve source and update time, especially when modules refresh independently.
- Avoid implying causal claims from descriptive trends.

If a visual treatment makes the data look more dramatic but less interpretable, change the treatment.

### Empty, null, zero, and unavailable

These states are not interchangeable. Define visual and textual forms for each. A gap may mean missing data; zero may be a real measurement; unavailable may reflect permission or source failure. Never silently convert them into one value.

## Tables and numerical work

Use tables for exact inspection and action.

- Right-align comparable numerical values according to locale and decimal behavior.
- Use tabular figures where they improve column stability.
- Keep units and column headers unambiguous.
- Support meaningful sort and filter behavior.
- Freeze or pin context only when it improves scanning and remains accessible.
- Provide row detail without losing current table context.
- Show selected-row and bulk-action scope precisely.
- Handle negative, null, estimated, redacted, and overflowing values explicitly.
- Preserve readable labels and actions at compact density.

Sparklines can support row-level trend scanning, but need consistent scale policy. Shared scales aid comparison; independent scales emphasize shape. State or make obvious which is used.

## Filters, drill-down, and comparison

### Filters and scope

Keep global scope visible: account, workspace, date range, timezone, population, and data source. Show which modules each control affects. Avoid a global filter that silently leaves some cards unfiltered.

Support saved views when users repeat meaningful configurations. Include all relevant scope in shared or exported views so recipients see the same context.

### Drill-down

A useful drill path often moves from:

> signal → affected segment → contributing objects → event or record detail → available action.

Preserve filters, time window, and selection along the path. Provide a clear way back to the prior analytical context. Do not make users reconstruct the investigation after opening a record.

### Comparison

Align time windows, units, scales, and definitions. For period-over-period comparison, account for different period lengths, weekdays, seasonality, and incomplete periods where relevant. Avoid arbitrary baselines chosen to make a design look balanced.

## Real-time and alerting

Real-time display should support real-time decisions. Otherwise, periodic refresh may be calmer and more honest.

Define:

- update frequency and freshness indicator;
- pause, resume, and manual refresh;
- behavior while users inspect or select data;
- animation that does not move targets unexpectedly;
- reconnect and delayed-data states;
- history and event acknowledgment;
- alert thresholds, severity, ownership, and deduplication.

Avoid constantly reordering lists while users interact. Queue visual updates or provide a controlled “new items” mechanism when stability matters.

Alerts should explain condition, affected scope, time, consequence, and next action. Do not turn every metric deviation into a red alarm; alert fatigue is a design failure.

## Density and performance

Dense does not mean tiny. Increase information capacity through alignment, hierarchy, concise labels, stable geometry, and appropriate disclosure.

Offer comfortable and compact densities when task contexts differ. Preserve accessible targets and readable text. Compact mode can reduce row padding, secondary metadata, and decorative spacing before reducing core font size.

For large data sets:

- virtualize only after semantics and keyboard behavior are designed;
- preserve stable row identity and scroll position where possible;
- avoid expensive chart re-rendering during unrelated interaction;
- aggregate or sample transparently when appropriate;
- lazy-load secondary modules without causing layout shifts;
- keep filtering and selection responsive on representative hardware;
- provide export or asynchronous processing for work too large for interactive rendering.

Performance optimization must not silently change the data users believe they are seeing.

## Dashboard critique

1. **Decision test:** name the decision each major module supports; remove or relocate decorative modules.
2. **Meaning test:** verify metric definitions, units, comparisons, time windows, and freshness.
3. **Priority test:** inspect whether exceptions or primary questions dominate over easy-to-chart trivia.
4. **Honesty test:** inspect axes, baselines, missing data, partial periods, rounding, and uncertainty.
5. **Action test:** trace from insight to evidence to next action without losing context.
6. **Accessibility test:** check non-color cues, chart alternatives, table semantics, keyboard operation, and zoom.
7. **Stress test:** use zero, null, huge, negative, delayed, conflicting, and long-label data.
8. **Stability test:** interact during updates and verify selection, scroll, and target positions.
9. **Responsive test:** recompose for smaller screens rather than shrinking every chart.
10. **Evidence test:** distinguish visual inspection, metric-definition review, technical validation, and actual user-task research.