---
layout: page
title: Security Hardening
---

# Security Hardening

## Background

In early AI pilots, security is usually treated as a perimeter concern: only a small group can reach the system, and that feels like enough.

As usage expands, the system starts touching real workflows, sensitive data, and broader user populations. The threat model changes from "who can log in?" to "what can this system access, on whose behalf, and with what oversight?"

Security Hardening is how teams keep authority aligned with intent as the system scales.

## What Security Hardening Means

Security Hardening is the staged introduction of identity, access, isolation, and monitoring controls aligned to system authority. The work is necessary because the effective blast radius grows with adoption: as the system reaches more users, more data, and more workflows, the cost of a misuse, an unauthorized action, or an unnoticed event grows with it.

## Maturity Stages

Security typically matures along three dimensions as authority expands. The table below shows what each looks like at Crawl, Walk, and Run.

| Dimension | <div style="text-align:center">Crawl</div> | <div style="text-align:center">Walk</div> | <div style="text-align:center">Run</div> |
|---|---|---|---|
| Identity | <ul><li>Authenticated access only</li><li>Small approved user group</li></ul> | <ul><li>Role-based access controls</li><li>Group membership reviewed</li></ul> | <ul><li>Conditional access enforced</li><li>Device posture required</li></ul> |
| Authorization | <ul><li>Single shared scope</li><li>Manual approval for new use</li></ul> | <ul><li>Environments and data paths segmented</li><li>Threat modeling on major changes</li></ul> | <ul><li>Policy-as-code for access</li><li>Least-privilege enforced by default</li></ul> |
| Audit | <ul><li>Prompts and responses logged</li><li>Access events captured</li></ul> | <ul><li>Centralized log review</li><li>Anomaly alerts on key actions</li></ul> | <ul><li>Continuous detection and response</li><li>Incident playbooks rehearsed</li></ul> |

## What to Get Right Early

A few investments during the MVP make every later stage easier:

- An identity model that treats the AI system as a first-class workload, not a shared utility.
- An access policy baseline that names who can use the system and on whose behalf it acts.
- Logging standards from day one so prompts, responses, and access events are reconstructable.

It is working when access is explicit, auditable, and reversible, and high-risk actions require stronger controls by default.

## Up Next

[Evaluation Hardening](../03-evaluation-hardening): how to prove the system is reliable as scope and complexity increase.
