#!/bin/bash

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$(pwd)}"
BRANCH=$(git -C "$PROJECT_DIR" branch --show-current 2>/dev/null)
PROMPT=$(jq -r '.prompt // ""')

# Context based on branch
if [[ "$BRANCH" == backend* ]]; then
  cat "$PROJECT_DIR/.claude/context/backend.md"
elif [[ "$BRANCH" == frontend* ]]; then
  cat "$PROJECT_DIR/.claude/context/frontend.md"
fi

# Context based on user query
if echo "$PROMPT" | grep -Eiq 'database|SQL|schema'; then
  cat "$PROJECT_DIR/.claude/context/database.md"
fi