#!/bin/bash
# ==========================================================
# SetUpRepo.sh - Setup repository for a specific branch
# ==========================================================

BRANCH="${BRANCH_NAME:-main}"

echo "[INFO] Setting up repository for branch: $BRANCH"

# Fetch and prepare branch
git fetch origin "$BRANCH"
if [ $? -ne 0 ]; then
  echo "[ERROR] Failed to fetch branch $BRANCH"
  exit 1
fi

git clean -dfx
git reset --hard "origin/$BRANCH"
git checkout "$BRANCH"
git pull origin "$BRANCH"

echo "[INFO] Repository setup for branch '$BRANCH' completed successfully."
