#!/bin/bash
# Archives the current output folders into test_runs/run_N and clears them for the next run.
# Usage: ./archive_run.sh

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TEST_RUNS="$REPO_ROOT/test_runs"
OUTPUTS="$REPO_ROOT/outputs"

# Auto-increment run number
RUN_NUM=1
while [ -d "$TEST_RUNS/run_$RUN_NUM" ]; do
  RUN_NUM=$((RUN_NUM + 1))
done

RUN_DIR="$TEST_RUNS/run_$RUN_NUM"

echo ""
echo "========================================"
echo "  Archiving current run to run_$RUN_NUM "
echo "========================================"
echo ""

# Check that there is something to archive
if [ -z "$(ls -A "$OUTPUTS/output_step_1/" 2>/dev/null)" ] && \
   [ -z "$(ls -A "$OUTPUTS/output_step_4/" 2>/dev/null)" ]; then
  echo "[Archive] Output folders are already empty — nothing to archive."
  exit 0
fi

# Create run folder structure
mkdir -p "$RUN_DIR/output_step_1" "$RUN_DIR/output_step_2" "$RUN_DIR/output_step_3" "$RUN_DIR/output_step_4"

# Copy config.md used for this run
cp "$REPO_ROOT/config/config.md" "$RUN_DIR/config.md"
echo "[Archive] config.md copied to run_$RUN_NUM."

# Move outputs
mv "$OUTPUTS/output_step_1/"*.md "$RUN_DIR/output_step_1/" 2>/dev/null
mv "$OUTPUTS/output_step_2/"*.md "$RUN_DIR/output_step_2/" 2>/dev/null
mv "$OUTPUTS/output_step_3/"*.md "$RUN_DIR/output_step_3/" 2>/dev/null
mv "$OUTPUTS/output_step_4/"*.md "$RUN_DIR/output_step_4/" 2>/dev/null

echo "[Archive] Run archived to test_runs/run_$RUN_NUM"
echo "[Archive] Output folders cleared and ready for next run."
echo ""
echo "========================================"
echo "  Done. Run ./utilities/run_pipeline.sh to start a new run."
echo "========================================"
echo ""
