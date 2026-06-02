---
layout: page
title: Evaluation Hardening
---

# Evaluation Hardening

## Why It Matters

A system that appears useful in demos can fail silently in production. Evaluation hardening turns confidence from anecdotal to measurable.

## What Is Evaluation Hardening?

Evaluation Hardening is the progression from ad hoc checks to continuous, scenario-based measurement.

## Crawl

- Define a small golden dataset.
- Track basic quality metrics (accuracy, relevance, groundedness).
- Review failures manually.

## Walk

- Add scenario-based test suites.
- Segment metrics by user cohort and use case.
- Include latency and cost in quality decisions.

## Run

- Run continuous evaluation in delivery pipelines.
- Alert on regressions with clear thresholds.
- Tie model and prompt changes to measured impact.

## What Success Changes

As usage broadens, variability increases. A single average metric can hide critical failures in key scenarios.

## What To Plan During MVP

- Evaluation taxonomy
- Failure labeling standard
- Owner for metric definition and drift response

## What Good Looks Like

Teams can explain current quality by scenario, not just by aggregate score.

## Next Article

Platform Hardening: the operational foundation needed to run AI systems reliably at scale.
