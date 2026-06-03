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

| Dimension | Crawl | Walk | Run |
|---|---|---|---|
| Coverage | • Small golden dataset<br>• Single use case in scope | • Scenario-based test suites<br>• Metrics segmented by cohort | • Coverage tracked per critical path<br>• Gaps treated as defects |
| Methodology | • Basic quality metrics<br>• Manual failure review | • Latency and cost factored in<br>• Labeled failure taxonomy | • Model and prompt changes tied to measured impact<br>• Human and automated judges combined |
| Cadence | • Run on demand<br>• Owned by the build team | • Run on each release<br>• Regressions triaged in review | • Continuous evaluation in delivery pipelines<br>• Threshold-based alerts on regression |

## What to Get Right Early

A few investments during the MVP make every later stage easier:

- An evaluation taxonomy that names the scenarios the system is expected to handle.
- A failure labeling standard so issues can be counted, not just felt.
- A named owner for metric definition and drift response.

It is working when teams can explain current quality by scenario, not just by aggregate score.

## Up Next

[Platform Hardening](../04-platform-hardening): the operational foundation needed to run AI systems reliably at scale.
