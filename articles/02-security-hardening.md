---
layout: page
title: Security Hardening
---

## Background

In early AI pilots, security is usually treated as a perimeter concern: only a small group can reach the system, and that feels like enough.

As usage expands, the system starts touching real workflows, sensitive data, and broader user populations. The threat model changes from "who can log in?" to "what can this system access, on whose behalf, and with what oversight?"

Security Hardening is how teams keep authority aligned with intent as the system scales.

## What Security Hardening Means

Security Hardening is the staged introduction of identity, access, isolation, and monitoring controls aligned to system authority. The work is necessary because the effective blast radius grows with adoption: as the system reaches more users, more data, and more workflows, the cost of a misuse, an unauthorized action, or an unnoticed event grows with it.

## Maturity Stages

Security typically matures along three dimensions as authority expands. The table below shows what each looks like at Crawl, Walk, and Run.

| Dimension | Crawl | Walk | Run |
|---|---|---|---|
| Identity | • Authenticated access only<br>• Small approved user group | • Role-based access controls<br>• Group membership reviewed | • Conditional access enforced<br>• Device posture required |
| Authorization | • Single shared scope<br>• Manual approval for new use | • Environments and data paths segmented<br>• Threat modeling on major changes | • Policy-as-code for access<br>• Least-privilege enforced by default |
| Audit | • Prompts and responses logged<br>• Access events captured | • Centralized log review<br>• Anomaly alerts on key actions | • Continuous detection and response<br>• Incident playbooks rehearsed |

## What to Get Right Early

A few investments during the MVP make every later stage easier:

- An identity model that treats the AI system as a first-class workload, not a shared utility.
- An access policy baseline that names who can use the system and on whose behalf it acts.
- Logging standards from day one so prompts, responses, and access events are reconstructable.

It is working when access is explicit, auditable, and reversible, and high-risk actions require stronger controls by default.

## Up Next

[Evaluation Hardening](../03-evaluation-hardening): how to prove the system is reliable as scope and complexity increase.
