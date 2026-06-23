#!/bin/bash
# Runs the full 4-agent information synthesis pipeline sequentially.
# Each agent must finish before the next begins.

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CLAUDE="/Users/hewittdevlieger/.local/bin/claude"

CONFIG_DIR="$REPO_ROOT/config"
CONFIG="$CONFIG_DIR/config.md"
OUT1="$REPO_ROOT/outputs/output_step_1"
OUT2="$REPO_ROOT/outputs/output_step_2"
OUT3="$REPO_ROOT/outputs/output_step_3"
OUT4="$REPO_ROOT/outputs/output_step_4"

echo ""
echo "========================================"
echo "  Agent Information Synthesis Pipeline  "
echo "========================================"
echo ""

# Clear output folders from any previous run
echo "[Pipeline] Clearing output folders..."
rm -f "$OUT1/"*.md
rm -f "$OUT2/"*.md
rm -f "$OUT3/"*.md
rm -f "$OUT4/"*.md
echo "[Pipeline] Output folders cleared."
echo ""

# Agent 1 — Research & Collection
echo "----------------------------------------"
echo "[Agent 1] Starting — Research & Collection"
echo "----------------------------------------"
cd "$REPO_ROOT/agents/agent_instructions_1"
$CLAUDE --print --add-dir "$CONFIG_DIR" --add-dir "$OUT1" -- \
  "The config for this run is at $CONFIG. Read it and begin collecting documents per your instructions. Write all outputs to $OUT1."
echo ""
echo "[Agent 1] Complete."
echo ""

# Agent 2 — Summarization & Compression
echo "----------------------------------------"
echo "[Agent 2] Starting — Summarization & Compression"
echo "----------------------------------------"
cd "$REPO_ROOT/agents/agent_instructions_2"
$CLAUDE --print --add-dir "$CONFIG_DIR" --add-dir "$OUT1" --add-dir "$OUT2" -- \
  "The config for this run is at $CONFIG. Read it and begin summarizing all documents in $OUT1 per your instructions. Write all outputs to $OUT2."
echo ""
echo "[Agent 2] Complete."
echo ""

# Agent 3 — Grading & Feedback
echo "----------------------------------------"
echo "[Agent 3] Starting — Grading & Feedback"
echo "----------------------------------------"
cd "$REPO_ROOT/agents/agent_instructions_3"
$CLAUDE --print --add-dir "$CONFIG_DIR" --add-dir "$OUT1" --add-dir "$OUT2" --add-dir "$OUT3" -- \
  "The config for this run is at $CONFIG. Read it and begin grading all document pairs in $OUT1 and $OUT2 per your instructions. Write all outputs to $OUT3."
echo ""
echo "[Agent 3] Complete."
echo ""

# Agent 4 — Synthesis & Final Output
echo "----------------------------------------"
echo "[Agent 4] Starting — Synthesis & Final Output"
echo "----------------------------------------"
cd "$REPO_ROOT/agents/agent_instructions_4"
$CLAUDE --print --add-dir "$CONFIG_DIR" --add-dir "$OUT1" --add-dir "$OUT2" --add-dir "$OUT3" --add-dir "$OUT4" -- \
  "The config for this run is at $CONFIG. Read it and begin synthesizing all documents across $OUT1, $OUT2, and $OUT3 per your instructions. Write all outputs to $OUT4."
echo ""
echo "[Agent 4] Complete."
echo ""

echo "========================================"
echo "  Pipeline complete. Outputs in outputs/output_step_4/"
echo "========================================"
echo ""
