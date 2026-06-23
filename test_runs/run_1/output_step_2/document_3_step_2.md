---
document_id: 3
step: 2
title: "Copilot in Power Automate — Overview"
source_url: "https://learn.microsoft.com/en-us/power-automate/copilot-overview"
date_retrieved: "2026-06-22"
content_type: documentation
platform: Power Automate
original_length_words: 370
summary_length_words: 180
compression_ratio: ~49%
summarized_by: agent_2
---

# Copilot in Power Automate — Overview

Copilot is embedded across multiple Power Automate surfaces, enabling natural language interaction throughout the automation lifecycle.

**Cloud Flows**: Describe automation goals in plain language across a multi-step conversation; Copilot builds the flow structure. Flows can also be exposed as plugins inside Microsoft 365 Copilot experiences (preview).

**Process Mining**:
- *Ingestion*: Guides users through data import and configuration.
- *Analytics*: Generates process insights via natural language queries — quantitative and qualitative summaries without writing queries.

**Desktop Flows**: Natural language flow creation, runtime error diagnosis and repair, activity analysis, AI-assisted screen recording (preview), and natural language to script conversion (preview).

**Automation Center**: Natural language querying of past flow runs, work queue performance, and product features — eliminates dashboard navigation for operational reporting.

**Availability and admin controls:**
- Regions with GPUs (UK, Australia, US, India): Copilot on by default; tenant-level disable requires PowerShell + support contact. Environment-level disable not available.
- Regions without GPUs: On by default via cross-geo data sharing; disable by toggling cross-geo data sharing off in Power Platform admin center at tenant level.
- Sovereign clouds: Limited or unavailable; governed by separate policies.
