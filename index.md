---
layout: home
title: Progressive Hardening
---

The hardest part is not building the MVP. It is what happens when it works.

Progressive Hardening is a practical framework for introducing controls at the same pace that confidence, adoption, and authority grow.

<nav class="toc-sticky" aria-label="Main articles">
	<p class="toc-title">Jump to</p>
	<div class="toc-links">
		<a href="#building-beyond-the-mvp">MVP</a>
		<a href="#data-hardening">Data</a>
		<a href="#security-hardening">Security</a>
		<a href="#evaluation-hardening">Evaluation</a>
		<a href="#platform-hardening">Platform</a>
		<a href="#automation-hardening">Automation</a>
		<a href="#governance-hardening">Governance</a>
	</div>
</nav>

---

## Building Beyond the MVP

### Why This Article Exists

Most AI teams celebrate MVP launch as the finish line. In practice, launch is when complexity starts compounding.

### Core Claim

The true challenge is not proving the concept. The challenge is hardening the system as success raises the stakes.

### The Pattern I Keep Seeing

- MVPs solve a narrow workflow.
- Adoption expands to adjacent teams.
- Data boundaries blur.
- Exception paths multiply.
- Confidence drops unless controls mature.

### Progressive Hardening in One Sentence

Introduce controls at the same pace that confidence, adoption, and authority grow.

### The Six Dimensions

1. Data
2. Security
3. Evaluation
4. Platform
5. Automation
6. Governance

### Crawl, Walk, Run (Quick Example)

- Crawl: one use case, curated data, manual review.
- Walk: several teams, expanded data, role-based access, periodic evaluations.
- Run: enterprise integration, continuous evaluation, formal governance, clear accountability.

### What To Avoid

- Treating MVP assumptions as permanent architecture.
- Equating launch usage with production readiness.
- Waiting for incidents before introducing controls.

### Series Preview

This series goes dimension by dimension to show what to harden, when to harden it, and how to avoid over-engineering too early.

---

## Data Hardening

### Why It Matters

When an AI system starts delivering value, pressure to broaden data access increases quickly. Without explicit boundaries, useful copilots become risky copilots.

### What Is Data Hardening?

Data Hardening is the practice of improving data quality, boundary control, and traceability as system usage scales.

### Crawl

- Start with a narrow, high-quality data slice.
- Keep source systems explicit and documented.
- Manually validate sensitive outputs.

### Walk

- Introduce data classification and tagging.
- Add automated validation for freshness and schema drift.
- Separate approved and experimental data paths.

### Run

- Enforce policy-driven access by role and context.
- Apply lineage and provenance end-to-end.
- Monitor data quality and leakage signals continuously.

### What Success Changes

Success increases user requests for broader context. Each expansion should pass a boundary review, not just a convenience check.

### What To Plan During MVP

- Data inventory template
- Minimal classification model
- Escalation path for new source approval

### What Good Looks Like

Teams can answer: what data the model used, why it was allowed, and who approved changes.

---

## Security Hardening

### Why It Matters

As AI systems gain access to broader workflows, their effective blast radius grows. Security hardening ensures usefulness does not outpace control.

### What Is Security Hardening?

Security Hardening is the staged introduction of identity, access, isolation, and monitoring controls aligned to system authority.

### Crawl

- Require authenticated access only.
- Limit to a small approved user group.
- Log prompts, responses, and access events.

### Walk

- Introduce role-based access controls.
- Segment environments and data paths.
- Add threat modeling for major feature changes.

### Run

- Enforce conditional access and device posture rules.
- Apply policy-as-code for security controls.
- Implement continuous detection and response playbooks.

### What Success Changes

The more users depend on the system, the more damaging outages, misuse, and unauthorized access become.

### What To Plan During MVP

- Identity model
- Access policy baseline
- Logging standards from day one

### What Good Looks Like

Access is explicit, auditable, and reversible. High-risk actions require stronger controls by default.

---

## Evaluation Hardening

### Why It Matters

A system that appears useful in demos can fail silently in production. Evaluation hardening turns confidence from anecdotal to measurable.

### What Is Evaluation Hardening?

Evaluation Hardening is the progression from ad hoc checks to continuous, scenario-based measurement.

### Crawl

- Define a small golden dataset.
- Track basic quality metrics (accuracy, relevance, groundedness).
- Review failures manually.

### Walk

- Add scenario-based test suites.
- Segment metrics by user cohort and use case.
- Include latency and cost in quality decisions.

### Run

- Run continuous evaluation in delivery pipelines.
- Alert on regressions with clear thresholds.
- Tie model and prompt changes to measured impact.

### What Success Changes

As usage broadens, variability increases. A single average metric can hide critical failures in key scenarios.

### What To Plan During MVP

- Evaluation taxonomy
- Failure labeling standard
- Owner for metric definition and drift response

### What Good Looks Like

Teams can explain current quality by scenario, not just by aggregate score.

---

## Platform Hardening

### Why It Matters

When AI adoption grows, reliability becomes a product requirement. Platform hardening is how teams prevent fragile prototypes from becoming critical failures.

### What Is Platform Hardening?

Platform Hardening is the staged development of resilient infrastructure, observability, deployment controls, and operational guardrails.

### Crawl

- Deploy in a controlled, low-scale environment.
- Track basic uptime, latency, and error rates.
- Keep rollback simple and manual.

### Walk

- Add standardized deployment pipelines.
- Introduce environment parity and release gates.
- Build dashboards and alerting for service health.

### Run

- Implement multi-region resilience where needed.
- Use automated rollback and progressive delivery.
- Operate with SLOs, error budgets, and incident playbooks.

### What Success Changes

As critical workflows depend on the system, downtime costs move from inconvenience to business impact.

### What To Plan During MVP

- Basic telemetry schema
- Deployment ownership model
- Incident severity definitions

### What Good Looks Like

The platform is observable, recoverable, and predictable under real demand.

---

## Automation Hardening

### Why It Matters

Automation unlocks scale, but it also amplifies mistakes. As systems move from assistant to actor, guardrails must evolve from advisory to enforceable.

### What Is Automation Hardening?

Automation Hardening is the deliberate escalation of constraints, approvals, and recovery mechanisms as systems gain action authority.

### Crawl

- Keep humans in the loop for high-impact actions.
- Limit automation to low-risk, reversible tasks.
- Record decision context for each action.

### Walk

- Introduce policy checks before execution.
- Define confidence thresholds for auto-action.
- Add fail-safe behaviors and bounded retries.

### Run

- Enforce least-privilege action scopes.
- Use formal approval routing for sensitive actions.
- Continuously monitor action quality, drift, and exception rates.

### What Success Changes

Higher trust drives pressure to automate more. The question shifts from "can we automate?" to "what are we willing to delegate?"

### What To Plan During MVP

- Automation risk tiers
- Human override design
- Audit schema for action decisions

### What Good Looks Like

Autonomy is explicit, bounded, and observable. Teams can pause or roll back behavior quickly when needed.

---

## Governance Hardening

### Why It Matters

Without governance, successful AI systems become organizational liabilities. Governance hardening ensures authority, accountability, and decision rights stay clear as impact expands.

### What Is Governance Hardening?

Governance Hardening is the progression from informal ownership to explicit operating models, controls, and accountability mechanisms.

### Crawl

- Name a single accountable owner.
- Document intended use and known limits.
- Define a basic escalation path.

### Walk

- Establish cross-functional review cadence.
- Clarify ownership for model, data, security, and operations.
- Add policy checks for major scope changes.

### Run

- Operate with formal governance forums and charters.
- Align controls with regulatory and internal standards.
- Track decisions, exceptions, and remediation outcomes.

### What Success Changes

The system affects more teams, more decisions, and more risk domains. Informal governance stops scaling long before the technology does.

### What To Plan During MVP

- Ownership RACI draft
- Exception approval model
- Decision log template

### What Good Looks Like

Stakeholders can answer who is accountable for what, and how critical decisions are made, documented, and reviewed.

### Series Close

Progressive Hardening is not a fixed checklist. It is an operating philosophy: mature controls in lockstep with real-world adoption, authority, and risk.
