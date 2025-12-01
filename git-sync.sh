#!/bin/bash

REPO_LIST=~/scripts/repo-list.txt
WORK_DIR=~/workspace
LOG=~/scripts/sync.log

echo "---- SYNC START $(date) ----" >> $LOG

while read repo; do
    [[ -z "$repo" ]] && continue

    echo "🔁 Syncing $repo..."

    if [[ ! -d "$WORK_DIR/$repo" ]]; then
        echo "📥 Cloning $repo..."
        git clone git@github.com:jbandu/$repo.git $WORK_DIR/$repo >> $LOG 2>&1
    fi

    cd $WORK_DIR/$repo

    git fetch origin >> $LOG 2>&1

    if [[ -n "$(git status --porcelain)" ]]; then
        echo "⚠️  Local changes detected in $repo — not pulling." | tee -a $LOG
    else
        echo "⬇️ Pulling latest for $repo..."
        git pull origin main >> $LOG 2>&1 || git pull origin master >> $LOG 2>&1
    fi
done < "$REPO_LIST"

echo "---- SYNC END $(date) ----" >> $LOG

