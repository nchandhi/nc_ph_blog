# Data Hardening

## Why It Matters

When an AI system starts delivering value, pressure to broaden data access increases quickly. Without explicit boundaries, useful copilots become risky copilots.

## What Is Data Hardening?

Data Hardening is the practice of improving data quality, boundary control, and traceability as system usage scales.

## Crawl

- Start with a narrow, high-quality data slice.
- Keep source systems explicit and documented.
- Manually validate sensitive outputs.

## Walk

- Introduce data classification and tagging.
- Add automated validation for freshness and schema drift.
- Separate approved and experimental data paths.

## Run

- Enforce policy-driven access by role and context.
- Apply lineage and provenance end-to-end.
- Monitor data quality and leakage signals continuously.

## What Success Changes

Success increases user requests for broader context. Each expansion should pass a boundary review, not just a convenience check.

## What To Plan During MVP

- Data inventory template
- Minimal classification model
- Escalation path for new source approval

## What Good Looks Like

Teams can answer: what data the model used, why it was allowed, and who approved changes.

## Next Article

Security Hardening: who can access the system, under what conditions, and with what audit trail.
