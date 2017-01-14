#!/bin/bash
oldCommitTime=$(cat index.html | grep -w "Last Commit Time:" | awk -F'<li>' '{print $2}' | cut -d'<' -f 1 | awk -F'Time: ' '{print $2}')
newCommitTime=$(date "+%Y-%m-%d %H:%M:%S")
sed -i '' "s|${oldCommitTime}|${newCommitTime}|g" index.html
git add *
git status
git commit -m "New Auto Commit at ${newCommitTime}"
git push