---
document_id: 6
step: 3
title: "How Zap Triggers Work — Zapier Help"
platform: "Zapier"
overall_score: 4.8
failed: false
retry_count: 0
---

## Scores

| Dimension | Score |
|---|---|
| Accuracy | 5 |
| Completeness | 4 |
| Compression Quality | 5 |
| Relevance | 5 |
| Clarity | 5 |
| **Overall** | **4.8** |

---

## Dimension Notes

**Accuracy:** All content is accurate. Polling vs. instant trigger mechanics, deduplication, webhooks, polling intervals by plan, constraints (no trigger type modification, infinite loop risk, flood protection, deduplication window), and design guidance are all correctly stated.

**Completeness:** The Testing Triggers section was dropped from the summary. This section explained that during Zap setup, polling triggers show the three most recent items from the app and instant triggers retrieve the three most recent account items, with a note that users should create new data if no test records appear. This is a secondary omission — relevant for setup guidance but not critical for the synthesis.

**Compression Quality:** 39% is close to the 1/3 target. Cuts are well-chosen. The design guidance section is preserved in compact form. The instant vs. polling comparison points from the source are incorporated into the constraints section rather than a separate block — appropriate consolidation.

**Relevance:** Excellent. Trigger mechanics, polling intervals, API connectors, and workflow design patterns are all directly on-topic.

**Clarity:** Concise and well-organized. The two-section structure (trigger types, then constraints and design guidance) is clean and easy to parse.

---

## Lost Content — Recovery Required

- The Testing Triggers section was dropped. Recover the following if setup workflow context is needed: `"Polling triggers: Show the three most recent items from the app. Instant triggers: Retrieve the three most recent account items. If no test records appear initially, you should create new data in your connected app, then re-test."`

---

## Instructions for Agent 4

- Use the step 2 summary as the base for this document — it is accurate and nearly complete.
- Recover the Testing Triggers detail only if the final memo includes onboarding or setup workflow guidance. Otherwise omit.
- This document pairs well with Document 5 (Zapier key concepts) for the Zapier section of the synthesis — trigger types and task billing together cover the core Zapier mechanics.
