#!/bin/bash

# Define paths
OBSIDIAN_NOTES="/Users/rubendeschrevel/Library/Mobile Documents/iCloud~md~obsidian/Documents/ruben_mobile/8—Rxbxn"
HUGO_CONTENT="/Users/rubendeschrevel/rxbxn/content/posts"

# Ensure Hugo content directory exists
mkdir -p "$HUGO_CONTENT"

# Sync files (copies new/changed files, deletes removed ones)
rsync -av --delete "$OBSIDIAN_NOTES/" "$HUGO_CONTENT/"

# Move into the Hugo repo
cd /Users/rubendeschrevel/rxbxn

# Commit and push changes
git add content
git commit -m "Sync Obsidian notes with Hugo" || echo "No changes to commit"
git push origin master