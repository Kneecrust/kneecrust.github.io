#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Update Rxbxn Hugo
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Used to push all updated notes to Github to be published through the rebuilt Hugo Site on Github Pages

# Commit and push changes
git add content
git commit -m "Sync Obsidian notes with Hugo" || echo "No changes to commit"
git push origin master

echo "Pushed to Github! Changes will be live soon."

