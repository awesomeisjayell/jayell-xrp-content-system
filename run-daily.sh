#!/bin/bash

DATE=$(date +%F)

OUTPUT=$(openclaw agent --agent jayell-crypto --message "Use brave-search and run the full system. Output:
1) One main YouTube video idea
2) Two Shorts ideas
3) Three tweet-style posts
4) One CTA / lead magnet angle
5) One next-step recommendation")

echo "$OUTPUT" > ~/jayell-xrp-content-system/outputs/daily-content/$DATE.md

cd ~/jayell-xrp-content-system

git add .
git commit -m "Auto content $DATE" || true
git pull --rebase origin main || true
git push#!/bin/bash

DATE=$(date +%F)

OUTPUT=$(openclaw agent --agent jayell-crypto --message "execute full daily XRP content workflow and store output")

echo "$OUTPUT" > ~/jayell-xrp-content-system/outputs/daily-content/$DATE.md

cd ~/jayell-xrp-content-system

git add .
git commit -m "Auto content $DATE" || true
git push
