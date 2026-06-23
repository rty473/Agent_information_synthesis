---
document_id: 7
step: 2
title: "Zapier Task Usage and Billing — Complete Overview"
source_url: "https://help.zapier.com/hc/en-us/articles/8496196837261-How-Zapier-works"
date_retrieved: "2026-06-22"
content_type: documentation
platform: Zapier
original_length_words: 420
summary_length_words: 175
compression_ratio: ~42%
summarized_by: agent_2
---

# Zapier Task Usage and Billing — Complete Overview

A task is any **successful** action that runs in Zapier. Failed or halted steps never count.

**What counts as tasks**: All successful Zap action steps; error handler path steps; replayed steps; Sub-Zap steps (each individually); search actions set to "proceed if nothing found" (1 task); Code by Zapier (1 task per execution); AI by Zapier (varies by model tier); Zapier MCP tool calls (2 tasks each); Zapier Lead Router (5 tasks per lead).

**What does NOT count**: Triggers, filters, paths steps, failed/halted steps, steps blocked by filters, Zapier Tables and Forms, utility apps (Formatter, Delay, Looping, Digest, Zapier Manager, Storage), Zapier Agents (separate activity quota).

**AI task costs summary:**

| Feature | Task Cost |
|---|---|
| AI by Zapier (standard model) | Varies by tier |
| Zapier MCP tool calls | 2 tasks each |
| Zapier Lead Router | 5 tasks per lead |
| Zapier Agents | Separate activity quota |

**Overage / pay-per-task billing**: Overage cap = 3× plan task limit. Alerts sent at 80% and 100% of overage cap. Without pay-per-task enabled, Zaps stop running until the billing cycle resets.

**Monitoring tools**: CSV export (member-level task breakdown), Zap history (per-run execution detail), custom usage alerts (Enterprise).

**Cost efficiency design patterns**: Front-load filters to stop unnecessary runs before action steps execute; use AI steps selectively; watch high-volume Zaps; account for Sub-Zap step multiplication.
