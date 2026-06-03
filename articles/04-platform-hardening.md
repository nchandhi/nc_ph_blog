---
layout: page
title: Platform Hardening
---

## Background

AI MVPs typically run on minimal infrastructure: a single environment, lightweight deployment, and manual monitoring. That setup is appropriate when the user base is small and the cost of downtime is low.

As adoption grows, the system quietly takes on production characteristics without inheriting production discipline. Reliability becomes a user expectation long before it becomes an engineering investment.

Platform Hardening is how teams build the operational backbone that real adoption requires.

## What Platform Hardening Means

Platform Hardening is the staged development of resilient infrastructure, observability, deployment controls, and operational guardrails. The work is necessary because reliability quietly becomes a user expectation long before it becomes an engineering investment: as critical workflows depend on the system, downtime costs move from inconvenience to business impact.

## Maturity Stages

Platforms typically mature along three dimensions as adoption grows. The table below shows what each looks like at Crawl, Walk, and Run.

| Dimension | Crawl | Walk | Run |
|---|---|---|---|
| Deployment | • Single controlled environment<br>• Manual rollback | • Standardized pipelines<br>• Environment parity and release gates | • Progressive delivery<br>• Automated rollback on signal |
| Reliability | • Best-effort uptime<br>• Low-scale traffic | • Defined targets per service<br>• Capacity planned for growth | • SLOs and error budgets enforced<br>• Multi-region resilience where needed |
| Observability | • Basic uptime, latency, error rates<br>• Logs reviewed on incident | • Dashboards and alerting on service health<br>• Traces across key paths | • Continuous monitoring with playbooks<br>• Signals tied to incident response |

## What to Get Right Early

A few investments during the MVP make every later stage easier:

- A basic telemetry schema so signals are consistent before scale forces it.
- A deployment ownership model that names who ships and who reverts.
- Incident severity definitions so the first real outage does not also become the first definition exercise.

It is working when the platform is observable, recoverable, and predictable under real demand.

## Up Next

[Automation Hardening](../05-automation-hardening): how to safely increase agent autonomy without losing control.
