#!/bin/bash

# Variables
REPO_NAME="NYC-311-Service-Request-Intelligence-Platform"
BACKUP_NAME="${REPO_NAME}-backup"
GITHUB_URL="https://github.com/udaybjoshi/${REPO_NAME}.git"
LARGE_FILE_PATH="infra/.terraform/providers/registry.terraform.io/hashicorp/aws/6.7.0/darwin_arm64/terraform-provider-aws_v6.7.0_x5"

echo "🔁 Backing up current repo to $BACKUP_NAME"
mv "$REPO_NAME" "$BACKUP_NAME"

echo "🧪 Cloning fresh copy of remote repo"
git clone "$GITHUB_URL"
cd "$REPO_NAME" || exit 1

echo "📁 Copying cleaned files from backup (excluding .terraform)"
rsync -av --progress ../"$BACKUP_NAME"/ . --exclude '.terraform'

echo "🧹 Removing large file from Git history"
git filter-repo --path "$LARGE_FILE_PATH" --invert-paths --force

echo "🚀 Force pushing cleaned history to GitHub"
git push origin --force

echo "✅ Cleanup and push complete."

