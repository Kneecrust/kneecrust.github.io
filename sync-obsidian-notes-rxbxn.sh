#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Sync Obsidian Notes Rxbxn
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Syncs all notes in 8—Rxbxn inside of the obsidian vault in iCloud to the content folder of Rxbxn 'content' Hugo site directory

# Define paths
OBSIDIAN_NOTES="/Users/rubendeschrevel/Library/Mobile Documents/iCloud~md~obsidian/Documents/ruben_mobile/8—Rxbxn"
HUGO_CONTENT="/Users/rubendeschrevel/rxbxn/content/posts"

# Ensure Hugo content directory exists
mkdir -p "$HUGO_CONTENT"

# Sync files (copies new/changed files, deletes removed ones)
rsync -av --delete "$OBSIDIAN_NOTES/" "$HUGO_CONTENT/"

echo "Notes Copied!"