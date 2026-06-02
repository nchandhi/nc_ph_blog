# Security Hardening

## Why It Matters

As AI systems gain access to broader workflows, their effective blast radius grows. Security hardening ensures usefulness does not outpace control.

## What Is Security Hardening?

Security Hardening is the staged introduction of identity, access, isolation, and monitoring controls aligned to system authority.

## Crawl

- Require authenticated access only.
- Limit to a small approved user group.
- Log prompts, responses, and access events.

## Walk

- Introduce role-based access controls.
- Segment environments and data paths.
- Add threat modeling for major feature changes.

## Run

- Enforce conditional access and device posture rules.
- Apply policy-as-code for security controls.
- Implement continuous detection and response playbooks.

## What Success Changes

The more users depend on the system, the more damaging outages, misuse, and unauthorized access become.

## What To Plan During MVP

- Identity model
- Access policy baseline
- Logging standards from day one

## What Good Looks Like

Access is explicit, auditable, and reversible. High-risk actions require stronger controls by default.

## Next Article

Evaluation Hardening: how to prove the system is reliable as scope and complexity increase.
