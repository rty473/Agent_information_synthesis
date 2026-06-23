---
document_id: 5
step: 2
title: "Learn Key Concepts in Zap Workflows — Zapier Help"
source_url: "https://help.zapier.com/hc/en-us/articles/8496181725453-Learn-key-concepts-in-Zaps"
date_retrieved: "2026-06-22"
content_type: documentation
platform: Zapier
original_length_words: 510
summary_length_words: 210
compression_ratio: ~41%
summarized_by: agent_2
---

# Learn Key Concepts in Zap Workflows

**Core structure**: A *Zap* = one trigger + one or more actions. *Trigger*: the event that starts the Zap (new email, new spreadsheet row, new CRM lead). *Action*: what happens next (send message, create contact, post to Slack). An *App* is any of Zapier's 9,000+ integrations.

**Conditional logic:**
- *Filter*: Restricts Zap execution to runs matching specific conditions. Does not count as a task (free).
- *Paths*: If/then branching for multi-branch workflows. Paid plans only.
- *Multi-Step Zap*: Multiple actions, filters, or searches in sequence. Paid plans only.

**Task billing**: Tasks are the primary billing metric — each successfully completed action step = 1 task.

What counts: all successful action steps, error handler path steps, replayed steps, Sub-Zap steps (individually), search actions set to "proceed if nothing found" (1 task), AI by Zapier (varies by model tier), Zapier MCP tool calls (2 tasks each), Zapier Lead Router (5 tasks per lead).

What does NOT count: triggers, filters, paths steps, failed/halted steps, Zapier Tables and Forms, utility apps (Formatter, Delay, Looping, Digest, Zapier Manager, Storage), Zapier Agents (separate quota).

**Polling intervals by plan**: Free: 15 min / Professional: 2 min / Team: 1 min / Enterprise: 1 min.

**AI features:**
- *AI by Zapier*: Native text generation, classification, transformation within Zaps. Task usage varies by model tier.
- *Zapier Agents*: Autonomous agents for multi-step tasks via natural language; separate activity quota.
- *Zapier MCP*: Allows external AI models to call Zapier tools programmatically; 2 tasks per tool call.
