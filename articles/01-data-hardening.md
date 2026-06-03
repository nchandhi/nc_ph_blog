---
layout: page
title: Data Hardening
---

## Background

Data is the most consequential design choice in any enterprise AI system. It shapes what the system can answer, how accurate it appears, and how much risk it carries.

Most teams begin with a narrow, curated dataset that fits the MVP scope. This is the right starting point, but it sets expectations that are easy to outgrow once users see value and request broader context.

Data Hardening is how teams expand that scope intentionally, rather than by accident.

## What Data Hardening Means

Data Hardening is the practice of improving data quality, boundary control, and traceability as system usage scales. The work is necessary because success itself creates the pressure: once an AI system delivers value, requests to broaden its data access arrive faster than controls can keep up, and useful copilots quietly become risky ones.

## Maturity Stages

Most teams progress along a few common dimensions as data scope grows. The table below shows what each dimension looks like at Crawl, Walk, and Run.

| Dimension | Crawl | Walk | Run |
|---|---|---|---|
| Data scope | • Narrow curated slice<br>• Manual source review | • Approved paths separated<br>• New sources gated | • Policy-driven access<br>• Role and context scoped |
| Classification | • Sources documented manually<br>• Owners identified informally | • Tags and labels applied<br>• Sensitivity model adopted | • Lineage tracked end-to-end<br>• Provenance recorded per output |
| Validation | • Outputs reviewed by hand<br>• Spot checks on samples | • Automated freshness checks<br>• Schema drift alerts | • Continuous quality monitoring<br>• Leakage signal detection |

## What to Get Right Early

A few investments during the MVP make every later stage easier:

- A simple data inventory of what the system can reach and why.
- A minimal classification model so sensitivity is visible from day one.
- A clear escalation path for approving new sources.

You will know it is working when the team can answer, without hesitation, what data the model used, why it was allowed, and who approved the change.

## Up Next

[Security Hardening](../02-security-hardening): who can access the system, under what conditions, and with what audit trail.
