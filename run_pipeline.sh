#!/bin/bash
# Runs the full 4-agent information synthesis pipeline sequentially.
# Each agent must finish before the next begins.

REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"

echo ""
echo "========================================"
echo "  Agent Information Synthesis Pipeline  "
echo "========================================"
echo ""

# Clear output folders from any previous run
echo "[Pipeline] Clearing output folders..."
rm -f "$REPO_ROOT/output_step_1/"*.md
rm -f "$REPO_ROOT/output_step_2/"*.md
rm -f "$REPO_ROOT/output_step_3/"*.md
rm -f "$REPO_ROOT/output_step_4/"*.md
echo "[Pipeline] Output folders cleared."
echo ""

# Agent 1 — Research & Collection
echo "----------------------------------------"
echo "[Agent 1] Starting — Research & Collection"
echo "----------------------------------------"
cd "$REPO_ROOT/agent_instructions_1"
claude --print "Read config.md and begin collecting documents per your instructions."
echo ""
echo "[Agent 1] Complete."
echo ""

# Agent 2 — Summarization & Compression
echo "----------------------------------------"
echo "[Agent 2] Starting — Summarization & Compression"
echo "----------------------------------------"
cd "$REPO_ROOT/agent_instructions_2"
claude --print "Read config.md and begin summarizing all documents in output_step_1 per your instructions."
echo ""
echo "[Agent 2] Complete."
echo ""

# Agent 3 — Grading & Feedback
echo "----------------------------------------"
echo "[Agent 3] Starting — Grading & Feedback"
echo "----------------------------------------"
cd "$REPO_ROOT/agent_instructions_3"
claude --print "Read config.md and begin grading all document pairs in output_step_1 and output_step_2 per your instructions."
echo ""
echo "[Agent 3] Complete."
echo ""

# Agent 4 — Synthesis & Final Output
echo "----------------------------------------"
echo "[Agent 4] Starting — Synthesis & Final Output"
echo "----------------------------------------"
cd "$REPO_ROOT/agent_instructions_4"
claude --print "Read config.md and begin synthesizing all documents across output_step_1, output_step_2, and output_step_3 per your instructions."
echo ""
echo "[Agent 4] Complete."
echo ""

echo "========================================"
echo "  Pipeline complete. Outputs in output_step_4/"
echo "========================================"
echo ""
