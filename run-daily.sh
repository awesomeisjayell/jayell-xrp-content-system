#!/bin/bash

DATE=$(date +%F)

OUTPUT=$(openclaw agent --agent jayell-crypto --message "execute full daily XRP content workflow and store output")

echo "$OUTPUT" > ~/jayell-xrp-content-system/outputs/daily-content/$DATE.md

cd ~/jayell-xrp-content-system

git add .
git commit -m "Auto content $DATE" || true
git push
