#!/bin/bash

set -e

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

echo "Adding changes..."
git add .

echo "Committing changes..."
git commit -m "Update: $DATE" || echo "No changes to commit"

echo "Pulling latest changes..."
git pull --no-rebase

echo "Pushing changes..."
git push

echo "✅ Code pushed successfully!"
