---
document_id: 4
step: 2
title: "Overview of AI Builder — Microsoft Power Platform"
source_url: "https://learn.microsoft.com/en-us/ai-builder/overview"
date_retrieved: "2026-06-22"
content_type: documentation
platform: Power Automate
original_length_words: 430
summary_length_words: 175
compression_ratio: ~41%
summarized_by: agent_2
---

# Overview of AI Builder — Microsoft Power Platform

AI Builder is a Power Platform feature for creating and using AI models inside Power Apps and Power Automate, with no coding required.

**Two model categories:**
- *Prebuilt models*: Ready-to-use for document processing (invoices, receipts, business cards), text recognition, sentiment analysis, language detection, and key phrase extraction — no training data required.
- *Custom models*: Trained on organization-specific data for image recognition, text classification, and prediction.

**Integration with Power Automate**: AI model actions insert directly into cloud flow sequences. Example patterns:
- Email with invoice → AI Builder extracts line items → writes to spreadsheet/ERP
- SharePoint folder monitored → AI Builder classifies documents → routes to appropriate team
- Form submission → AI Builder predicts approval likelihood → routes for human review

**Licensing**: Credit-based. Credits consumed per prediction or document page processed; tied to Power Platform plans. Administrators monitor capacity and usage in Power Platform admin center.

**Preview features**: Some AI Builder capabilities are in preview (not GA), restricted from production use. Availability varies by region; admins control per-environment preview access. Separate security roles govern model creation vs. model use.
