---
layout: page
title: Automation Hardening
---

# Automation Hardening

## Background

Most AI systems start as assistants. They suggest, draft, summarize, or recommend, and a human decides what to do next. In that mode, the cost of a mistake is contained.

Over time, teams naturally push toward more automation, letting the system act, execute, and complete tasks end to end. The benefit is speed and scale. The risk is that each new action increases the system's authority and its blast radius.

Automation Hardening is how teams expand autonomy without losing control of outcomes.

## What Automation Hardening Means

Automation Hardening is the deliberate escalation of constraints, approvals, and recovery mechanisms as systems gain action authority. The work is necessary because automation amplifies mistakes as well as outcomes: as trust grows, the question shifts from "can we automate?" to "what are we willing to delegate?", and guardrails must evolve from advisory to enforceable.

## Maturity Stages

Automation typically matures along three dimensions as autonomy expands. The table below shows what each looks like at Crawl, Walk, and Run.

| Dimension | <div style="text-align:center">Crawl</div> | <div style="text-align:center">Walk</div> | <div style="text-align:center">Run</div> |
|---|---|---|---|
| Scope | <ul><li>Low-risk, reversible tasks</li><li>Suggestions, not actions</li></ul> | <ul><li>Tasks tiered by risk</li><li>Auto-action behind confidence thresholds</li></ul> | <ul><li>Least-privilege action scopes</li><li>Sensitive actions formally approved</li></ul> |
| Guardrails | <ul><li>Human in the loop for high impact</li><li>Decision context recorded per action</li></ul> | <ul><li>Policy checks before execution</li><li>Fail-safe behaviors and bounded retries</li></ul> | <ul><li>Policy-as-code enforcement</li><li>Reversal paths designed in</li></ul> |
| Oversight | <ul><li>Manual sampling of outcomes</li><li>Issues raised informally</li></ul> | <ul><li>Action quality tracked over time</li><li>Exception rates reviewed</li></ul> | <ul><li>Continuous monitoring of drift and exceptions</li><li>Behavior pausable or rollback-able quickly</li></ul> |

## What to Get Right Early

A few investments during the MVP make every later stage easier:

- Automation risk tiers so escalation is structural, not improvised.
- A human override design that is always available, not bolted on after an incident.
- An audit schema for action decisions so behavior can be reconstructed later.

It is working when autonomy is explicit, bounded, and observable, and teams can pause or roll back behavior quickly when needed.

## Up Next

[Governance Hardening](../06-governance-hardening): clarifying ownership, accountability, and decision rights as AI becomes business critical.
