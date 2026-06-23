---
document_id: 4
step: 1
title: "Overview of AI Builder — Microsoft Power Platform"
source_url: "https://learn.microsoft.com/en-us/ai-builder/overview"
date_retrieved: "2026-06-22"
content_type: documentation
platform: Power Automate
status: collected
---

# Overview of AI Builder

With AI Builder, a Microsoft Power Platform feature, you can create and use AI models that optimize your business processes. You can either use a *prebuilt* model that is ready for many common business scenarios, or create a *custom* model that meets your needs. AI Builder helps your business to automate processes and gain insights from your data in Power Apps and Power Automate.

## How to Add Intelligence to Your Business

To add intelligence to your business using AI Builder:

1. **Choose an AI model type**: Select the model type that suits your business need. Choose from a growing set of AI solutions. Refer to the no-code AI cheat sheet for guidance on model selection.
2. **Connect data**: Select your business-specific data from the available options.
3. **Tailor your AI model**: You can adjust custom models to enhance your AI's performance.
4. **Train your AI model**: Training is an automatic process. It teaches your AI model how to resolve your business problem (for example, how to recognize your products in an image) based on your business data and tailoring. When trained, your AI model can generate insights such as the result of a prediction, or the list and number of objects detected in an image.
5. **Use insights from your AI model**: Use the results from your AI model across Power Platform to create solutions that meet your business needs, even if you have no coding skills. For example, you can create a cloud flow that automates document processing in Power Automate, or an app in Power Apps that predicts whether a supplier will be out of compliance.

## Model Types

AI Builder supports two categories of models:

### Prebuilt Models
Ready-to-use AI models for common business scenarios requiring no training data. These cover scenarios like:
- Document processing (invoices, receipts, business cards)
- Text recognition and extraction
- Sentiment analysis
- Language detection
- Key phrase extraction
- Business card reader

### Custom Models
Trained on your organization's specific data to meet unique needs. Custom models allow you to:
- Train image recognition on your product catalog
- Build text classification specific to your industry taxonomy
- Create prediction models from your historical business data

## Integration with Power Automate

AI Builder integrates directly into Power Automate cloud flows, enabling users to insert AI model actions into their automation sequences. Practical examples:
- A flow that receives an email with an invoice attachment → AI Builder extracts line items → data is written to a spreadsheet or ERP system
- A flow that monitors a SharePoint folder → AI Builder classifies documents → routes them to the appropriate team
- A flow that processes form submissions → AI Builder predicts approval likelihood → routes for human review

## Release Status

Some features in AI Builder are in preview status and not yet released for general availability (GA).

- Preview features may have restricted functionality and are not intended for production use
- Administrators can control preview feature availability for their environment via the Power Platform admin center
- Feature availability varies by region — a full breakdown is available at the Feature availability by region page

## Licensing

AI Builder operates on a credit-based licensing model:
- AI Builder credits are required to train and run AI models
- Credits are consumed per prediction or document page processed
- Licensing tiers are tied to Power Platform plans
- Some prebuilt models may have usage limits based on the plan
- Administrators can review capacity and usage in the Power Platform admin center

## Resources

- AI Builder learning paths and modules on Microsoft Learn
- AI Builder community forums
- AI Builder hands-on labs
- No-code AI cheat sheet (printable landscape poster for model selection guidance)
- Sample data for hands-on exploration

## For Administrators

Administrators manage AI Builder through the Power Platform admin center, including:
- Enabling or disabling preview features and models per environment
- Monitoring credit consumption
- Managing security roles (separate roles govern model creation vs. model use)
