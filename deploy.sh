#!/bin/bash

# Deploy script for Sound Chemistry website
# Run this after re-exporting your website to push changes to GitHub Pages

set -e

echo "📦 Staging changes..."
git add .

echo "📝 Committing..."
git commit -m "Update website $(date '+%Y-%m-%d %H:%M:%S')" || { echo "No changes to commit"; exit 0; }

echo "🚀 Pushing to GitHub..."
git push

echo "✅ Done! Site will be live shortly at:"
echo "   https://mehrresearch.github.io/sound-chemistry/"
