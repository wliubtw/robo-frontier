#!/bin/bash

# Navigate to robo-frontier repo
cd $(dirname "$0")

# Pull latest changes
 git pull origin main

# Add all changes
 git add .

# Commit with date message
 COMMIT_MESSAGE="Automated update: $(date +'%Y-%m-%d %H:%M:%S')"
 git commit -m "$COMMIT_MESSAGE" || echo "No changes to commit."

# Push to GitHub
 git push origin main

# Trigger Vercel redeploy via API

token=""  # Insert your Vercel API token
project_id="prj_eN6PI5O3M33nEnzbM6g6o7i8jOrh"  # Insert your Vercel project ID

response=$(curl -s -X POST \
  -H "Authorization: Bearer $token" \
  -H "Content-Type: application/json" \
  https://api.vercel.com/v13/deployments?projectId=$project_id)

if echo "$response" | grep -q 'id'; then
  echo "Vercel redeploy triggered successfully."
else
  echo "Failed to trigger Vercel redeploy. Response: $response"
fi
