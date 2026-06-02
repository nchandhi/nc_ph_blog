---
layout: page
title: Evaluation Hardening
---

# Evaluation Hardening

## Background

Early AI systems are typically evaluated by demos, vibes, and small spot checks. That is enough to make a go or no-go decision on the MVP, but not enough to operate the system responsibly.

Once real users depend on the output, quality stops being a launch question and becomes an operational one. Behavior drifts, prompts evolve, data shifts, and downstream workflows assume a level of reliability that no one has formally measured.

Evaluation Hardening is how teams replace informal confidence with measurable, repeatable quality.

## What Evaluation Hardening Means

Evaluation Hardening is the progression from ad hoc checks to continuous, scenario-based measurement. The work is necessary because a system that appears useful in demos can fail silently in production: as usage broadens, variability increases, and a single average metric can hide critical failures in the scenarios that matter most.

## Maturity Stages

Evaluation typically matures along three dimensions as the system gains real users. The table below shows what each looks like at Crawl, Walk, and Run.

| Dimension | <div style="text-align:center">Crawl</div> | <div style="text-align:center">Walk</div> | <div style="text-align:center">Run</div> |
|---|---|---|---|
| Coverage | <ul><li>Small golden dataset</li><li>Single use case in scope</li></ul> | <ul><li>Scenario-based test suites</li><li>Metrics segmented by cohort</li></ul> | <ul><li>Coverage tracked per critical path</li><li>Gaps treated as defects</li></ul> |
| Methodology | <ul><li>Basic quality metrics</li><li>Manual failure review</li></ul> | <ul><li>Latency and cost factored in</li><li>Labeled failure taxonomy</li></ul> | <ul><li>Model and prompt changes tied to measured impact</li><li>Human and automated judges combined</li></ul> |
| Cadence | <ul><li>Run on demand</li><li>Owned by the build team</li></ul> | <ul><li>Run on each release</li><li>Regressions triaged in review</li></ul> | <ul><li>Continuous evaluation in delivery pipelines</li><li>Threshold-based alerts on regression</li></ul> |

## What to Get Right Early

A few investments during the MVP make every later stage easier:

- An evaluation taxonomy that names the scenarios the system is expected to handle.
- A failure labeling standard so issues can be counted, not just felt.
- A named owner for metric definition and drift response.

It is working when teams can explain current quality by scenario, not just by aggregate score.

## Up Next

[Platform Hardening](../04-platform-hardening): the operational foundation needed to run AI systems reliably at scale.
