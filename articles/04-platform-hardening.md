---
layout: page
title: Platform Hardening
---

# Platform Hardening

## Background

AI MVPs typically run on minimal infrastructure: a single environment, lightweight deployment, and manual monitoring. That setup is appropriate when the user base is small and the cost of downtime is low.

As adoption grows, the system quietly takes on production characteristics without inheriting production discipline. Reliability becomes a user expectation long before it becomes an engineering investment.

Platform Hardening is how teams build the operational backbone that real adoption requires.

## What Platform Hardening Means

Platform Hardening is the staged development of resilient infrastructure, observability, deployment controls, and operational guardrails. The work is necessary because reliability quietly becomes a user expectation long before it becomes an engineering investment: as critical workflows depend on the system, downtime costs move from inconvenience to business impact.

## Maturity Stages

Platforms typically mature along three dimensions as adoption grows. The table below shows what each looks like at Crawl, Walk, and Run.

| Dimension | <div style="text-align:center">Crawl</div> | <div style="text-align:center">Walk</div> | <div style="text-align:center">Run</div> |
|---|---|---|---|
| Deployment | <ul><li>Single controlled environment</li><li>Manual rollback</li></ul> | <ul><li>Standardized pipelines</li><li>Environment parity and release gates</li></ul> | <ul><li>Progressive delivery</li><li>Automated rollback on signal</li></ul> |
| Reliability | <ul><li>Best-effort uptime</li><li>Low-scale traffic</li></ul> | <ul><li>Defined targets per service</li><li>Capacity planned for growth</li></ul> | <ul><li>SLOs and error budgets enforced</li><li>Multi-region resilience where needed</li></ul> |
| Observability | <ul><li>Basic uptime, latency, error rates</li><li>Logs reviewed on incident</li></ul> | <ul><li>Dashboards and alerting on service health</li><li>Traces across key paths</li></ul> | <ul><li>Continuous monitoring with playbooks</li><li>Signals tied to incident response</li></ul> |

## What to Get Right Early

A few investments during the MVP make every later stage easier:

- A basic telemetry schema so signals are consistent before scale forces it.
- A deployment ownership model that names who ships and who reverts.
- Incident severity definitions so the first real outage does not also become the first definition exercise.

It is working when the platform is observable, recoverable, and predictable under real demand.

## Up Next

[Automation Hardening](../05-automation-hardening): how to safely increase agent autonomy without losing control.
