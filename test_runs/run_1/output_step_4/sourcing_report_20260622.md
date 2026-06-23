# Sourcing Report — Workflow Automation & AI Integration — 2026-06-22

## Corroboration Map

| Concept / Claim | Sources | Count |
|---|---|---|
| Trigger → Action(s) as the universal workflow structure | document_2, document_5, document_8 | 3 |
| Polling intervals by plan (Free: 15 min, Pro: 2 min, Team/Enterprise: 1 min) | document_5, document_6 | 2 |
| Zapier tasks = successful action steps only; failed steps don't count | document_5, document_7 | 2 |
| Zapier Agents run on a separate activity quota (not standard tasks) | document_5, document_7 | 2 |
| Zapier MCP tool calls cost 2 tasks each | document_5, document_7 | 2 |
| AI by Zapier task cost varies by model tier | document_5, document_7 | 2 |
| Filters and paths steps do not consume Zapier tasks | document_5, document_7 | 2 |
| Natural language / Copilot flow creation across surfaces | document_1, document_2, document_3 | 3 |
| Power Automate environment isolation (flows not visible across environments) | document_1, document_2 | 2 |
| Make: 3,000+ app integrations | document_9, document_10 | 2 |
| Make AI Agents built into scenario canvas with real-time reasoning visualization | document_9, document_10 | 2 |
| Make MCP Server/Client for external AI systems to call Make scenarios as tools | document_9, document_10 | 2 |
| Make Grid: org-wide automation map, 40+ connectors, real-time monitoring | document_9, document_10 | 2 |
| Maia by Make: natural language scenario generation with visual transparency | document_9, document_10 | 2 |
| Make Code: JavaScript/Python execution; Enterprise supports third-party libraries | document_9, document_10 | 2 |
| Make credits per Teams (Enterprise resource allocation) | document_9, document_10 | 2 |
| Make Authenticated Webhooks | document_9, document_10 | 2 |
| AI automation adoption gap: 88% use AI, ~6% achieve meaningful impact | document_8 | 1 (unique) |
| AI Builder credit-based licensing tied to Power Platform plans | document_4 | 1 (unique) |
| Zapier overage cap = 3× plan task limit | document_7 | 1 (unique) |
| Zapier Autoreplay (Pro+) auto-retries failed steps on API errors | document_5 | 1 (unique) |
| Make "citizen development" philosophy: non-developers → production automations | document_9 | 1 (unique) |
| Shadow AI data leakage cost averaged $670,000 per breach | document_8 | 1 (unique) |

---

## Source Breakdown

| Platform | Documents | Content Types |
|---|---|---|
| Power Automate | 4 (docs 1–4) | documentation (4) |
| Zapier | 3 (docs 5–7) | documentation (3) |
| Make | 3 (docs 8–10) | article (2), documentation (1) |

---

## Source Reliability Notes

| Source / Domain | Status | Notes |
|---|---|---|
| learn.microsoft.com (docs 1–4) | High quality | Accurate, dense, well-structured. All four documents scored 4.4–5.0. Primary source for Power Automate mechanics, AI Builder, and Copilot capabilities. |
| help.zapier.com (docs 5–7) | High quality | Accurate and comprehensive. Docs 5–7 scored 4.6–4.8. Excellent coverage of task billing, trigger mechanics, and AI features. One 404 (Zapier AI features article) was successfully rerouted. |
| make.com/en/blog (docs 8, 10) | High quality | Accurate. Doc 8 scored 3.8 due to significant content omissions in step 2 (use cases, implementation process, key benefits — all recovered from step 1). Doc 10 scored 4.8 with minor omissions recovered. Official Make blog; content is substantive rather than purely promotional. |
| make.com/en/product (doc 9) | High quality | Scored 4.6. Minor omissions (platform philosophy recovered). Official product page; dense with capability detail. |
| make.com/en/help (attempted) | Inaccessible | Help center domain migrated (make.com/en/help → help.make.com); specific sub-pages were navigation-only or 404. Pivoted to product page and blog, which provided better content. |
| help.zapier.com AI article (attempted) | Inaccessible | Zapier AI features article (22901032916749) returned 404. AI coverage folded into existing docs 5 and 7 — coverage was adequate. |

---

## Pipeline Performance

| Metric | Value |
|---|---|
| Documents targeted | 10 |
| Documents collected | 10 |
| Sources skipped (paywall) | 0 |
| Sources failed (404 / redirect / no content) | 5 attempted URLs failed; all replaced |
| Documents that failed grading (overall score < 3.0) | 0 |
| Documents with significant step 2 content loss (score ≤ 4.0 on Completeness) | 2 (docs 4, 8) |
| Documents requiring content recovery from step 1 | 5 (docs 1, 4, 8, 9, 10) |
| Documents capped at max retries | 0 |
| Average overall score across all documents | 4.62 |

---

## Recommendations for Future Runs

**Increase Make help center coverage.** The official Make help center (help.make.com) was largely inaccessible this run — specific article URLs were either 404s or returned navigation-only pages. For future runs on Make, prioritize help.make.com with fresh article URL discovery rather than pre-constructed paths. If unavailable, the make.com/en/product and make.com/en/blog pages proved to be high-quality alternates.

**Add a dedicated Zapier AI features document.** The intended Zapier AI features article returned 404. AI coverage was recovered from docs 5 and 7 but was secondary to their primary topics (key concepts and billing). A dedicated Zapier AI/Agents article would provide more depth on Zapier Agents and Zapier MCP — recommend adding a targeted search for this in Agent 1's source collection phase.

**Consider increasing document count for production runs.** At 10 documents, the three-platform split is workable but thin — approximately 3 documents per platform. A production run at 20–25 documents would allow for more coverage layers per platform (e.g., one dedicated pricing/billing doc per platform, one dedicated AI features doc per platform, one use case/tutorial doc per platform).

**Weight Make blog content more conservatively in step 2.** Document 8 (Make blog) had the lowest overall score (3.8) primarily due to step 2 dropping half the substantive content. Blog articles with extensive use case sections tend to be compressed too aggressively — consider flagging blog/article content type for higher completeness thresholds in Agent 2's compression pass.

**Add a GitHub/practitioner source for real-world automation patterns.** All 10 documents came from official platform sources. No third-party publications, practitioner guides, or GitHub repositories were needed to reach the target count — but their absence means the knowledge base lacks independent cross-platform comparisons, user-reported limitations, and real-world performance benchmarks. For future runs, explicitly allocate 2–3 slots to practitioner sources (e.g., community-authored Make templates, Zapier power-user guides) to surface ground-truth usage patterns that official docs don't cover.
