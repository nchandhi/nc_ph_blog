---
layout: page
title: Scorecard
---

Understanding the framework is necessary, but not sufficient. Every system carries its own history, scope, and risk profile, and the same dimension can sit at very different stages depending on how the system has grown.

The scorecard provides a structured way to make that current state explicit: where the system sits across the six hardening dimensions, the evidence behind each position, and the next concrete move to advance maturity. It is intended as a recurring exercise — used at major milestones, before scope expansions, and after incidents — rather than a one-time assessment.

## How to Use

1. For each dimension, select the stage that best reflects the system's current state.
2. Record the evidence — a control, practice, or gap that justifies the score.
3. Identify the next hardening move — one concrete change that would advance the stage.
4. Review the overall pattern to determine where investment should be prioritized.

## Stages

| Score | Stage | Posture |
|---:|---|---|
| 1 | Crawl | Narrow scope, manual control, informal review |
| 2 | Walk | Expanded scope, standardized controls, periodic measurement |
| 3 | Run | Broad scope, policy-driven controls, continuous monitoring |

## Assessment

| Dimension | Current Score | Evidence | Next Hardening Move |
|---|---:|---|---|
| [Data](../../articles/01-data-hardening) |  |  |  |
| [Security](../../articles/02-security-hardening) |  |  |  |
| [Evaluation](../../articles/03-evaluation-hardening) |  |  |  |
| [Platform](../../articles/04-platform-hardening) |  |  |  |
| [Automation](../../articles/05-automation-hardening) |  |  |  |
| [Governance](../../articles/06-governance-hardening) |  |  |  |

## Where Hardening Breaks Down

- Treating MVP assumptions as permanent architecture.
- Equating launch usage with production readiness.
- Waiting for incidents before introducing controls.

## Reading the Pattern

- **Mostly 1s** — the system is still in MVP posture. Prioritize basic guardrails, identity, and observability before broadening scope.
- **Mostly 2s** — controls exist but vary by dimension. Focus on reducing variance, formalizing ownership, and making evaluation repeatable.
- **Mostly 3s** — the foundation is in place. Shift attention to optimization, resilience under stress, and tightening the weakest remaining dimension.
- **Uneven scores** — the lowest-scoring dimension usually sets the system's real maturity. Close that gap before advancing the others.
