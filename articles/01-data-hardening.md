---
layout: page
title: Data Hardening
---

# Data Hardening

## Background

Data is the most consequential design choice in any enterprise AI system. It shapes what the system can answer, how accurate it appears, and how much risk it carries.

Most teams begin with a narrow, curated dataset that fits the MVP scope. This is the right starting point, but it sets expectations that are easy to outgrow once users see value and request broader context.

Data Hardening is how teams expand that scope intentionally, rather than by accident.

## What Data Hardening Means

Data Hardening is the practice of improving data quality, boundary control, and traceability as system usage scales. The work is necessary because success itself creates the pressure: once an AI system delivers value, requests to broaden its data access arrive faster than controls can keep up, and useful copilots quietly become risky ones.

## Maturity Stages

Most teams progress along a few common dimensions as data scope grows. The table below shows what each dimension looks like at Crawl, Walk, and Run.

| Dimension | <div style="text-align:center">Crawl</div> | <div style="text-align:center">Walk</div> | <div style="text-align:center">Run</div> |
|---|---|---|---|
| Data scope | <ul><li>Narrow curated slice</li><li>Manual source review</li></ul> | <ul><li>Approved paths separated</li><li>New sources gated</li></ul> | <ul><li>Policy-driven access</li><li>Role and context scoped</li></ul> |
| Classification | <ul><li>Sources documented manually</li><li>Owners identified informally</li></ul> | <ul><li>Tags and labels applied</li><li>Sensitivity model adopted</li></ul> | <ul><li>Lineage tracked end-to-end</li><li>Provenance recorded per output</li></ul> |
| Validation | <ul><li>Outputs reviewed by hand</li><li>Spot checks on samples</li></ul> | <ul><li>Automated freshness checks</li><li>Schema drift alerts</li></ul> | <ul><li>Continuous quality monitoring</li><li>Leakage signal detection</li></ul> |

## What to Get Right Early

A few investments during the MVP make every later stage easier:

- A simple data inventory of what the system can reach and why.
- A minimal classification model so sensitivity is visible from day one.
- A clear escalation path for approving new sources.

You will know it is working when the team can answer, without hesitation, what data the model used, why it was allowed, and who approved the change.

## Up Next

[Security Hardening](../02-security-hardening): who can access the system, under what conditions, and with what audit trail.
