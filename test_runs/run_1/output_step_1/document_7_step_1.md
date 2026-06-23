---
document_id: 7
step: 1
title: "Zapier Task Usage and Billing — Complete Overview"
source_url: "https://help.zapier.com/hc/en-us/articles/8496196837261-How-Zapier-works"
date_retrieved: "2026-06-22"
content_type: documentation
platform: Zapier
status: collected
---

# Zapier Task Usage: Complete Overview

## Core Definition

"A task is any successful action that runs in Zapier. Only successful actions count toward your task usage."

## What Counts as Tasks

### Standard Workflow Actions
- All successful action steps in Zap workflows
- Successful steps within error handler paths
- Previously successful steps that run again during Zap replay

### Special Features
- **Sub-Zap action steps**: Each step counts individually; Call/Return Sub-Zap actions each count as tasks
- **Search actions**: 1 task if set to "proceed if nothing found"; 0 tasks if the search finds nothing and the Zap is configured to halt
- **AI by Zapier**: Task usage varies by model tier selected — higher-capability models consume more tasks
- **Code by Zapier**: 1 task per standard runtime execution
- **Zapier Lead Router**: Each successful lead routed = 5 tasks
- **Zapier MCP**: Each successful tool call = 2 tasks (reflecting the higher resource cost of model-context protocol operations)

## What Does NOT Count as Tasks

The following steps and features do not consume tasks:
- All trigger steps (always free regardless of how often they fire)
- Filter steps
- Paths steps (branching logic)
- Failed or halted action steps
- Steps that never execute because a filter stopped the Zap
- Zapier Tables and Forms steps
- Utility apps: Formatter, Delay, Looping, Digest, Zapier Manager, Storage
- Zapier Agents (use a separate activity quota entirely)

## Billing Structure

### Plan Limits
Plans include task limits based on pricing tier. The appropriate plan depends on the volume of automations run per month.

### Pay-Per-Task Billing
Upon exceeding plan limits, accounts can access pay-per-task billing:
- Notification thresholds: alerts sent at 80% and 100% of the overage cap
- Overage cap: 3x the plan's included task limit
- Without pay-per-task billing enabled: excess tasks are held until the billing cycle resets (Zaps stop running until new cycle begins)

## Monitoring and Reporting Tools

Account owners have access to several tools for tracking task usage:
- **CSV export**: Member-level task breakdown showing which users and Zaps are consuming the most tasks
- **Zap history**: Execution details for each Zap run, including which steps succeeded or failed
- **Custom usage alerts** (Enterprise plans): Configure notifications at custom thresholds to proactively manage consumption

## AI-Specific Task Economics

Zapier's AI features have distinct task accounting that reflects their relative resource cost:

| Feature | Task Cost |
|---|---|
| AI by Zapier (standard model) | 1 task (varies by tier) |
| Zapier MCP tool calls | 2 tasks each |
| Zapier Lead Router | 5 tasks per lead |
| Zapier Agents | Separate activity quota |

This pricing structure incentivizes users to evaluate which AI capabilities justify the higher task consumption and to design workflows that use AI steps selectively rather than on every run.

## Strategic Implications for Workflow Design

Understanding task economics is critical for cost-efficient automation:

1. **Front-load filtering**: Place Filter steps early in a Zap to stop unnecessary runs before task-consuming action steps execute
2. **Avoid redundant AI calls**: AI by Zapier consumes variable tasks; use AI steps only where the output meaningfully improves the workflow
3. **Monitor high-volume Zaps**: Zaps that trigger frequently (e.g., every new email) can exhaust task limits quickly if not filtered appropriately
4. **Sub-Zaps add up**: Each step in a Sub-Zap counts individually — complex Sub-Zap chains can consume many tasks per parent trigger
