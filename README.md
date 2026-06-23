# Agent Information Synthesis Pipeline

A four-stage AI agent system that automatically researches, compresses, grades, and synthesizes information on any topic — producing a structured knowledge base, a concise human-readable memo, and a sourcing report.

---

## How It Works

The pipeline runs four agents in sequence, each building on the previous step's output.

| Agent | Role | Output |
|---|---|---|
| **Agent 1** | Searches and collects source documents based on the configured topic, keywords, and source priorities | 10 raw documents + run log |
| **Agent 2** | Compresses each document individually to ~1/3 length, preserving exact technical details verbatim | 10 summaries |
| **Agent 3** | Grades each summary against its source across 5 dimensions; flags failures for automatic rewrite | 10 grading reports |
| **Agent 4** | Synthesizes all versions into a knowledge base, essentials memo, and sourcing report | 3 final outputs |

### Final Outputs

- **Knowledge Base** — thematic, citation-linked, structured for AI parseability in future sessions
- **Essentials Memo** — ~1,000 words of corroboration-weighted prose for a human reader
- **Sourcing Report** — pipeline performance metrics, corroboration map, source quality notes, and recommendations for future runs

---

## Getting Started

### Prerequisites

- [Claude Code](https://claude.ai/code) installed and authenticated

### Run the Pipeline

```bash
# Clone the repo and navigate to it
git clone <repo-url>
cd agent_information_synthesis

# Edit the config file for your topic
open config/config.md

# Run the full pipeline
./utilities/run_pipeline.sh
```

Outputs will appear in `outputs/output_step_1/` through `outputs/output_step_4/` as each agent completes.

### Archive a Run

```bash
./utilities/archive_run.sh
```

Moves all current outputs into `test_runs/run_N/` and clears the output folders for the next run. The run number increments automatically.

---

## Running the Pipeline

All scripts are run from the **repo root** — make sure your terminal is in the `agent_information_synthesis/` directory before running anything.

### Step-by-step

**1. Open a terminal in the repo root.**

Open the Terminal panel, either in VSCode or your machine itself. If it's not showing `agent_information_synthesis` in the path, navigate there:
```bash
cd /Users/your-username/repos/agent_information_synthesis
```

**2. Edit `config/config.md` for your topic** (skip this step if running again on the same topic):
```bash
open config/config.md
```
Change the topic name, keywords, platform weights, and any other settings. Save the file before running.

**3. Run the pipeline:**
```bash
./utilities/run_pipeline.sh
```
This fires all four agents sequentially — you don't need to do anything between steps. You'll see each agent's output stream in the terminal as it works. Agent 1 searches the web and collects documents, Agent 2 compresses them, Agent 3 grades each one, and Agent 4 synthesizes everything into the final outputs. The full pipeline takes roughly 10–20 minutes depending on topic and document count.

**4. Find your outputs** in `outputs/output_step_4/`:
- `knowledge_base_[date].md` — structured knowledge base for AI use
- `essentials_memo_[date].md` — concise human-readable summary
- `sourcing_report_[date].md` — pipeline performance and source quality report

**5. Archive the run before starting a new one:**
```bash
./utilities/archive_run.sh
```
This copies `config/config.md` and moves all outputs into `test_runs/run_N/` (auto-incrementing), then clears the output folders so the next run starts clean.

### Full workflow at a glance
```bash
# Navigate to repo root
cd /Users/your-username/repos/agent_information_synthesis

# Edit config for your topic
open config/config.md

# Run the pipeline (10–20 min)
./utilities/run_pipeline.sh

# Review outputs
open outputs/output_step_4/

# Archive when done
./utilities/archive_run.sh
```

---

## Configuration

All pipeline behavior is controlled by a single file: `config/config.md`.

| Setting | Description |
|---|---|
| `Topic` | Name, description, and keywords for the research subject |
| `Target Platforms / Subjects` | Which subjects to cover and their collection weight (must sum to 100) |
| `Document Count` | How many documents Agent 1 should collect |
| `Source Priority` | Ordered list of source types Agent 1 should prefer |
| `Forums` | Toggle forum sources on/off; optional URL allowlist |
| `Priority URL Allowlist` | Domains always treated as highest priority |
| `Grading Criteria` | Loose guidelines for Agents 2 & 4; strict rubric for Agent 3 |
| `Final Memo Target Length` | Word/page target for the essentials memo |

To run the pipeline on a new topic, edit `config/config.md` and run `./utilities/run_pipeline.sh`. No agent instructions need to change.

---

## Repository Structure

```
agent_information_synthesis/
│
├── config/
│   └── config.md                    # Activation key — edit this to change topics
├── utilities/                       # Pipeline scripts
│   ├── run_pipeline.sh              # Runs all 4 agents sequentially
│   └── archive_run.sh               # Archives current outputs to test_runs/run_N/
│
├── agents/                          # Agent instruction files
│   ├── agent_instructions_1/        # Agent 1 — Research & Collection
│   ├── agent_instructions_2/        # Agent 2 — Summarization & Compression
│   ├── agent_instructions_3/        # Agent 3 — Grading & Feedback
│   └── agent_instructions_4/        # Agent 4 — Synthesis & Final Output
│
├── outputs/                         # Live output folders (cleared each run)
│   ├── output_step_1/               # Raw collected documents + run log
│   ├── output_step_2/               # Compressed summaries
│   ├── output_step_3/               # Grading reports
│   └── output_step_4/               # Knowledge base, memo, sourcing report
│
├── test_runs/                       # Archived runs (run_1/, run_2/, ...)
│   └── run_1/
│       ├── config.md                # Config snapshot used for this run
│       ├── output_step_1/
│       ├── output_step_2/
│       ├── output_step_3/
│       └── output_step_4/
│
└── .claude/
    ├── settings.json                # Hook configuration
    └── scripts/
        └── retry_hook.sh           # Auto-retry for failed gradings
```

---

## Quality Control

Agent 3 grades each summary on five dimensions (scored 1–5):

- **Accuracy** — faithful representation of the source
- **Completeness** — key concepts and facts preserved
- **Compression Quality** — concise without losing essential meaning
- **Relevance** — focused on the configured topic and keywords
- **Clarity** — clear and parseable

Summaries scoring below **3.5 overall** are automatically flagged. A retry hook triggers Agent 2 to rewrite the document and Agent 3 to re-grade it, capped at two retries. Documents that fail after two retries are handled by Agent 4 using the original source directly.

---

## Extending the Pipeline

The pipeline is designed to be adapted. Some natural next steps:

- **New topics** — edit `config/config.md` and run
- **Different grading criteria** — update the rubric in `config/config.md`
- **More documents** — increase the document count target in `config/config.md`
- **Web application** — the agent instructions translate directly into Claude API system prompts; the config schema maps cleanly to a form-based UI; Vercel + Next.js is the recommended stack for a broader deployment
