---
document_id: 3
step: 1
title: "Copilot in Power Automate — Overview"
source_url: "https://learn.microsoft.com/en-us/power-automate/copilot-overview"
date_retrieved: "2026-06-22"
content_type: documentation
platform: Power Automate
status: collected
---

# Copilot in Power Automate

Copilot in Power Automate accelerates your journey to adopting automation and transforming your processes. It enhances these scenarios by using the instructions you give Copilot written in natural language to surface possible solutions that can achieve desired results. Copilot stays with you all the way during creation to guide you through your entire process.

## Copilot in Cloud Flows

Copilot in cloud flows allows you to create automation that helps streamline your workflow through quick and easy natural language expressions. You can create a flow by describing what you need through multiple steps of conversation.

Key capabilities:
- **Create a cloud flow using Copilot**: Describe your automation goal in plain language; Copilot builds the flow structure
- **Get contextual help with flows from the Microsoft Copilot Studio bot**: In-editor assistance during flow building
- **Use flows as plugins in Copilot for Microsoft 365 (preview)**: Surface Power Automate flows directly within Microsoft 365 Copilot experiences

## Copilot in Process Mining

Copilot in Process Mining supports two stages:

1. **Ingestion**: Navigates you through the ingestion experience in Process Mining, guiding data import and configuration
2. **Process analytics**: Helps you generate process insights through natural language. Copilot can take the data you collected and easily summarize findings quantitatively and qualitatively — enabling business analysts to explore process data without writing queries

## Copilot in Desktop Flows

Copilot in desktop flows offers various capabilities to enhance your automation experience:

- **Analyze desktop flow activity**: Gain insights into how desktop automations are performing
- **Create flows using natural language**: Describe the desktop task you want to automate; Copilot generates the flow
- **Repair automation errors**: Copilot diagnoses and suggests fixes for automation failures at runtime
- **Get answers to product-related questions**: Ask questions about Power Automate features directly within the desktop interface
- **Record with Copilot (preview)**: AI-assisted recording of screen interactions to generate automation steps
- **Natural language to script (preview)**: Convert plain-language descriptions into scripts for scripting actions

## Copilot in Automation Center

Copilot in automation center enables makers, business analysts, and members of the Center of Excellence team to easily retrieve information about past flow runs, work queue performance, and general product features. You can get this information by asking questions in natural language — eliminating the need to navigate dashboards or write queries.

## Enabling or Disabling Copilot in Power Automate

Regional availability determines the default Copilot state:

- **Regions with GPUs** (UK, Australia, US, India): Copilot is turned on by default. An admin must contact support to disable it, which requires a PowerShell script at the tenant level. Environment-level disabling is not available.
- **Regions without GPUs** (all other regions except sovereign clouds): Copilot is on by default via cross-geo data sharing. To disable, toggle off cross-geo data sharing in the Power Platform admin center at the tenant level.

**Sovereign clouds**: Copilot availability follows separate governance policies and may be limited or unavailable.

## Summary of Copilot Touchpoints in Power Automate

| Area | Key Capability |
|---|---|
| Cloud Flows | Natural language flow creation, conversational editing |
| Process Mining (Ingestion) | Guided data import setup |
| Process Mining (Analytics) | Natural language process insights and summaries |
| Desktop Flows | Natural language authoring, error repair, activity analysis |
| Automation Center | Natural language querying of run history and performance data |
| Microsoft 365 Integration | Flows usable as Copilot plugins (preview) |
