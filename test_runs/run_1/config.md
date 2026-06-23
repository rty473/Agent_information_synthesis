# Agent Pipeline Configuration

This file is the activation key for the information synthesis pipeline.
All four agents read this file from the repo root. Edit this file to change topic focus, grading criteria, and source behavior.

---

## Topic

**Name:** Workflow Automation — AI Integration
**Description:** A research synthesis on modern workflow automation platforms (Power Automate, Zapier, Make) with a focus on AI-driven automation, integration patterns, and practical application in modern work environments.

**Keywords:**
- workflow automation
- Power Automate
- Zapier
- Make (Integromat)
- AI automation
- no-code automation
- AI integration
- agentic workflows
- automation triggers
- API connectors

---

## Target Platforms / Subjects

Weight determines how many of the total documents should focus on each subject. Values must sum to 100.

| Subject | Weight |
|---|---|
| Power Automate | 34 |
| Zapier | 33 |
| Make (Integromat) | 33 |

---

## Document Count

**Target:** 10

Agent 1 should stop collecting once this many documents have been successfully saved.

---

## Source Priority

Agent 1 should search and collect in this order. Higher priority sources should be exhausted before moving to lower ones.

1. Official documentation (Microsoft Learn, Zapier Docs, Make Help Center)
2. Reputable tech publications and blogs (e.g. Verge, TechCrunch, Zapier Blog, Microsoft Blog)
3. GitHub repositories with practical guides, tutorials, or notable READMEs
4. User-written lessons, how-to guides, and practitioner write-ups

---

## Forums

**Enabled:** false

When enabled, forums (Reddit, Stack Overflow, community boards) are permitted as sources.
To enable, set to `true` and optionally add specific URLs to the allowlist below.

**Forum Allowlist:** (only used when forums are enabled)
- _(none)_

---

## Priority URL Allowlist

These URLs or domains are always treated as highest priority regardless of source order above.

- https://learn.microsoft.com/en-us/power-automate/
- https://help.zapier.com/
- https://www.make.com/en/help/

---

## Grading Criteria

### Loose Guidelines (used by Agents 2 and 4 as directional focus)

When summarizing or synthesizing, prioritize content that:
- Explains how the platform works mechanically (triggers, actions, connectors)
- Covers AI-specific features or integrations
- Highlights practical use cases applicable to modern workplace tasks
- Notes limitations, pricing tiers, or platform constraints where relevant
- Surfaces cross-platform comparisons or patterns

Deprioritize:
- Marketing language with no substantive information
- Highly repetitive content already captured from another source
- Content that is out of date (prefer sources from 2023 onward)

### Strict Rubric (used by Agent 3 for grading)

Score each summarized document on the following dimensions. Each dimension is scored 1–5.

| Dimension | Description |
|---|---|
| **Accuracy** | Does the summary faithfully represent the source without distortion or hallucination? |
| **Completeness** | Are the key concepts, features, and facts from the source present? |
| **Compression Quality** | Is the summary appropriately concise without losing essential meaning? |
| **Relevance** | Does the content focus on what is most applicable to the topic and keywords above? |
| **Clarity** | Is the summary clearly written and easy to parse? |

Provide a score for each dimension, an overall score (average), and specific written feedback noting what was done well and what should be improved or recovered in Agent 4.

---

## Final Memo Target Length

**Length:** 2 pages (POC)

Agent 4 should produce an essentials memo no longer than approximately 2 pages (~1000 words). Scale this value up for production runs.
