---
document_id: 6
step: 2
title: "How Zap Triggers Work — Zapier Help"
source_url: "https://help.zapier.com/hc/en-us/articles/8496244568589-How-Zap-triggers-work"
date_retrieved: "2026-06-22"
content_type: documentation
platform: Zapier
original_length_words: 420
summary_length_words: 165
compression_ratio: ~39%
summarized_by: agent_2
---

# How Zap Triggers Work

Triggers start a Zap when a specified event occurs in a connected app. Zaps only respond to new or updated data — historical data existing before activation does not trigger runs.

**Two trigger types:**

*Polling triggers*: Zapier periodically requests data from the app's API. Uses **deduplication** — compares incoming data IDs against previously seen IDs to prevent duplicate runs. Polling intervals: Free: 15 min / Professional: 2 min / Team: 1 min / Enterprise: 1 min. Pro, Team, and Enterprise users can manually trigger polls in the editor.

*Instant triggers*: Apps push data via **webhooks** the moment an event occurs. Near-instantaneous response; no polling interval wait. Indicated by a lightning bolt icon in the Zap editor. Requires the app to support webhook-based notifications.

**Key constraints:**
- Trigger type (polling vs. instant) is fixed by the app's API — users cannot change it.
- Writing data back to the same resource being monitored by the trigger risks creating an infinite loop.
- Bulk importing large data volumes may trigger flood protection, temporarily halting Zap execution.
- Deduplication history window is finite — very old re-appearing events may or may not be deduplicated.

**Design guidance**: Use instant-trigger apps for time-sensitive workflows (customer notifications, payment confirmations). Polling triggers are adequate for batch or scheduled processing. For apps with polling-only triggers, upgrading to Professional (2 min) or Team/Enterprise (1 min) significantly reduces latency.
