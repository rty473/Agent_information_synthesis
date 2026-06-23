#!/bin/bash
# Scans output_step_3/ for failed gradings and triggers agent 2 rewrite + agent 3 re-grade.
# Caps retries at 2 per document.
# Only runs when invoked from the agent_instructions_3 working directory.

INPUT=$(cat /dev/stdin 2>/dev/null)
CWD=$(echo "$INPUT" | jq -r '.cwd // empty' 2>/dev/null)

if [[ "$CWD" != *"agent_instructions_3"* ]]; then
  exit 0
fi

REPO_ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
STEP2="$REPO_ROOT/output_step_2"
STEP3="$REPO_ROOT/output_step_3"
AGENT2="$REPO_ROOT/agent_instructions_2"
AGENT3="$REPO_ROOT/agent_instructions_3"

for step3_file in "$STEP3"/document_*_step_3.md; do
  [ -f "$step3_file" ] || continue

  failed=$(grep "^failed:" "$step3_file" | awk '{print $2}')
  retry_count=$(grep "^retry_count:" "$step3_file" | awk '{print $2}')

  if [ "$failed" = "true" ] && [ "$retry_count" -lt 2 ]; then
    # Extract document ID
    filename=$(basename "$step3_file")
    doc_id=$(echo "$filename" | grep -o '[0-9]\+')

    echo "[retry_hook] Document $doc_id failed grading (retry $retry_count). Triggering rewrite."

    step2_file="$STEP2/document_${doc_id}_step_2.md"

    # Increment retry_count in the step 3 file
    new_count=$((retry_count + 1))
    sed -i '' "s/^retry_count: $retry_count/retry_count: $new_count/" "$step3_file"

    # Trigger agent 2 rewrite for this document only
    cd "$AGENT2" && claude --print "Rewrite $step2_file. Read agent_instructions_2/CLAUDE.md for instructions. Process only document_${doc_id}_step_1.md. Overwrite the existing step 2 file."

    # Trigger agent 3 re-grade for this document only
    cd "$AGENT3" && claude --print "Re-grade document $doc_id. Read agent_instructions_3/CLAUDE.md for instructions. Process the document_${doc_id} pair only. Overwrite the existing step 3 file."

    echo "[retry_hook] Document $doc_id retry complete."
  elif [ "$failed" = "true" ] && [ "$retry_count" -ge 2 ]; then
    echo "[retry_hook] Document $(basename $step3_file) has failed $retry_count times — retry cap reached. Agent 4 will fall back to step 1."
  fi
done

echo "[retry_hook] Done."
