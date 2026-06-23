---
document_id: 6
step: 1
title: "How Zap Triggers Work — Zapier Help"
source_url: "https://help.zapier.com/hc/en-us/articles/8496244568589-How-Zap-triggers-work"
date_retrieved: "2026-06-22"
content_type: documentation
platform: Zapier
status: collected
---

# How Zap Triggers Work

## What is a Trigger?

A trigger is "an event within an app that starts a Zap." Once a Zap is activated, Zapier monitors for that specific event continuously. Common trigger examples include:
- A new row created in a Google Sheet
- A new lead added to a CRM
- A new email received in Gmail
- A form submission in Typeform
- A new subscription added to an email list

## Two Types of Triggers

### Polling Triggers

With polling triggers, Zapier periodically requests data from the app's API. This is called "polling for new data." The system uses a process called **deduplication** — comparing each piece of incoming data's unique ID against IDs the Zap has received before. If a new ID appears, the Zap runs; otherwise, it waits for the next polling interval.

**Polling intervals by plan:**

| Plan | Polling Interval |
|---|---|
| Free | Every 15 minutes |
| Professional | Every 2 minutes |
| Team | Every 1 minute |
| Enterprise | Every 1 minute |

Pro, Team, and Enterprise users can also adjust polling frequency and manually trigger polls in the editor.

### Instant Triggers

With instant triggers, apps automatically transmit data via **webhooks** the moment a trigger event occurs. Instant triggers are indicated by a lightning bolt icon in the Zap editor.

Key characteristics:
- Zapier does not need to poll the app — data is pushed automatically
- Response is near-instantaneous (no waiting for a polling interval)
- The app must support webhook-based notifications for this to work

**Instant triggers vs. polling triggers:**
- Instant triggers respond faster and consume fewer API calls
- Polling triggers are more common because not all apps support webhooks
- You cannot change a trigger type — it is determined by the app's API capabilities

## Testing Triggers

During Zap setup, Zapier retrieves recent trigger events for testing:
- **Polling triggers**: Show the three most recent items from the app
- **Instant triggers**: Retrieve the three most recent account items

If no test records appear initially, you should create new data in your connected app, then re-test.

## Key Limitations and Considerations

- **Trigger types are fixed**: You cannot modify whether a trigger polls or uses webhooks — this is determined by the app's API
- **New data only**: Zaps only respond to new or updated data. Historical data that existed before the Zap was activated will not trigger runs
- **Infinite loop risk**: Writing data back to the same resource being monitored by the trigger can create an infinite loop — this should be avoided
- **Bulk import flood protection**: Importing large volumes of data at once may trigger flood protection reviews, which can temporarily halt Zap execution
- **Deduplication window**: Zapier maintains a history of processed IDs to prevent duplicate runs. Very old events that re-appear may or may not be deduplicated depending on the history window

## Practical Implications for Automation Design

**For time-sensitive workflows** (e.g., customer service notifications, payment confirmations): Use apps that support instant webhook triggers to minimize latency.

**For batch or scheduled data** (e.g., daily report processing, weekly sync tasks): Polling triggers are adequate and often the only option available.

**Plan selection**: If your use case requires near-real-time response and the app only supports polling, upgrading to Professional (2-minute polling) or Team/Enterprise (1-minute polling) significantly reduces latency.
