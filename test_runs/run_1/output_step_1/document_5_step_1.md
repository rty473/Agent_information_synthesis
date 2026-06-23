---
document_id: 5
step: 1
title: "Learn Key Concepts in Zap Workflows — Zapier Help"
source_url: "https://help.zapier.com/hc/en-us/articles/8496181725453-Learn-key-concepts-in-Zaps"
date_retrieved: "2026-06-22"
content_type: documentation
platform: Zapier
status: collected
---

# Learn Key Concepts in Zap Workflows

## Core Building Blocks

### Zap
An automated workflow connecting apps and services together. Each Zap consists of a trigger and one or more actions that execute when the trigger event occurs. When you turn your Zap on, it will run the action steps every time the trigger event occurs.

### Trigger
The event that initiates a Zap — the starting condition that tells Zapier to begin the workflow. For example, receiving a new email, adding a new row to a spreadsheet, or a new lead appearing in your CRM.

### Action
The event a Zap performs after it is triggered. For example, sending a text message, creating a contact, or posting a message to Slack. A Zap can have one or multiple action steps.

### App
A web service or application (such as Google Docs, Slack, Salesforce, or HubSpot) that integrates with Zapier's 9,000+ available integrations. Apps are the source of triggers and the destination of actions.

## Workflow Components

### Filter
Conditional logic that restricts a Zap's execution to run only when certain conditions are met. For example, a filter can limit a Zap to only run when emails are received from a specific sender, or when a form submission includes a particular value. Filters do not count as tasks (they are free to use).

### Paths
Advanced conditional logic using if/then statements to perform different actions based on varying conditions. Paths let you build multi-branch workflows: if condition A is true, do these actions; if condition B is true, do those actions instead. Paths are only available on paid plans.

### Multi-Step Zap
A Zap containing multiple actions, filters, or searches. Only available on paid plans. Multi-step Zaps enable complex workflows where data passes through several transformations or is sent to multiple destinations.

## Operational Concepts

### Task
Each successfully completed action step counts as one task. For example, if your Zap has an action to create a new Google Contact, each contact created counts as one task. Tasks are the primary billing metric for Zapier plans.

**What counts as a task:**
- All successful action steps in Zap workflows
- Successful steps within error handler paths
- Previously successful steps replayed via Zap replay
- Sub-Zap action steps (each counts individually)
- Search actions set to "proceed if nothing found" (1 task)
- AI by Zapier (task usage varies by model tier)
- Zapier MCP: each successful tool call = 2 tasks
- Zapier Lead Router: each successful lead routed = 5 tasks

**What does NOT count as a task:**
- Trigger steps (always free)
- Filter or Paths steps
- Failed or halted action steps
- Steps that never execute due to filtering
- Zapier Tables and Forms steps
- Utility apps (Formatter, Delay, Looping, Digest, Zapier Manager, Storage)
- Zapier Agents (these use a separate activity quota)

### Zap Runs
Individual instances of a Zap being triggered and executing its action steps. Every run is recorded and viewable in Zap history, allowing you to debug issues and verify successful execution.

### Polling Interval
The frequency at which Zapier checks trigger apps for new data (for polling-type triggers):
- Free plan: every 15 minutes
- Professional plan: every 2 minutes
- Team plan: every 1 minute
- Enterprise plan: every 1 minute

Pro, Team, and Enterprise users can also manually trigger polls in the editor.

### Autoreplay
A Pro plan and higher feature that automatically retries failed steps due to temporary errors (such as an API timeout), without requiring manual intervention.

### Test Record
Sample data from trigger apps used during Zap setup to configure action steps. Zapier shows recent trigger events so you can map fields correctly before activating the Zap.

## Platform Features

### Zap Editor
The interface for creating and editing Zaps from scratch. Provides step-by-step guidance for selecting triggers, actions, and configuring field mappings.

### Zap Outline
Displays all Zap steps in a structured view, allowing navigation and editing of individual steps.

### Zap History
A log of all workflow runs and account task usage, showing successes, errors, and the data that flowed through each step.

## AI Features in Zapier

**AI by Zapier**: A native action that enables AI-powered text generation, classification, and transformation within Zap workflows. Task usage varies depending on the AI model tier selected.

**Zapier Agents**: Autonomous AI agents that operate outside the traditional Zap structure, handling multi-step tasks based on natural language instructions. Agents use a separate activity quota rather than the standard task billing.

**Zapier MCP (Model Context Protocol)**: Allows AI models and external agents to call Zapier tools programmatically. Each successful tool call counts as 2 tasks.
