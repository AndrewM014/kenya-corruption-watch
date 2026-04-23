#!/bin/bash
# ═══════════════════════════════════════════════════════════
# Kenya Corruption Watch — One-shot GitHub push script
# ═══════════════════════════════════════════════════════════
# USAGE:
#   1. Unzip kenya-corruption-tracker.zip
#   2. Open Terminal and cd into the unzipped folder
#   3. Run: bash push-to-github.sh
#   4. When prompted for password, paste your NEW GitHub token
# ═══════════════════════════════════════════════════════════

set -e

REPO_NAME="kenya-corruption-watch"
GITHUB_USER="AndrewM014"
REMOTE_URL="https://github.com/${GITHUB_USER}/${REPO_NAME}.git"

echo "════════════════════════════════════════════════"
echo " Kenya Corruption Watch — GitHub Push"
echo "════════════════════════════════════════════════"
echo ""

if [ ! -f "index.html" ]; then
  echo "✗ ERROR: index.html not found in current folder."
  echo "  You need to cd into the unzipped kenya-corruption-tracker folder first."
  echo ""
  echo "  Example:"
  echo "    cd ~/Downloads/kenya-corruption-tracker"
  echo "    bash push-to-github.sh"
  exit 1
fi

# Set git identity
git config user.email "werdna0.8@gmail.com" 2>/dev/null || true
git config user.name "Andrew Makachia" 2>/dev/null || true

# Initialise git if needed
if [ ! -d ".git" ]; then
  echo "→ Initialising git repository..."
  git init
  git add -A
  git commit -m "Initial commit: Kenya Corruption Watch (61 cases, 1982-2025)"
fi

git branch -M main 2>/dev/null || true

# Set remote
if git remote get-url origin >/dev/null 2>&1; then
  echo "→ Remote 'origin' already exists, updating URL..."
  git remote set-url origin "$REMOTE_URL"
else
  echo "→ Adding remote: $REMOTE_URL"
  git remote add origin "$REMOTE_URL"
fi

echo ""
echo "════════════════════════════════════════════════"
echo " BEFORE PUSHING — DO THESE TWO THINGS:"
echo ""
echo " 1. Create the empty repo on GitHub:"
echo "    → Go to https://github.com/new"
echo "    → Repository name: kenya-corruption-watch"
echo "    → Leave README / .gitignore / License UNCHECKED"
echo "    → Click 'Create repository'"
echo ""
echo " 2. Generate a NEW personal access token:"
echo "    → Go to https://github.com/settings/tokens/new"
echo "    → Note: 'kenya-corruption-watch push'"
echo "    → Expiration: 7 days"
echo "    → Scopes: check 'repo'"
echo "    → Click 'Generate token'"
echo "    → Copy the ghp_... value"
echo ""
echo " Press Enter when ready to push (Ctrl+C to cancel)..."
read -r

echo ""
echo "→ Pushing to GitHub..."
echo "  When prompted:"
echo "    Username: AndrewM014"
echo "    Password: paste the ghp_... token"
echo ""

git push -u origin main

echo ""
echo "════════════════════════════════════════════════"
echo "✓ PUSH COMPLETE"
echo ""
echo "  Your repo: https://github.com/${GITHUB_USER}/${REPO_NAME}"
echo ""
echo "  NEXT — Deploy to Vercel (30 seconds):"
echo "    1. Go to https://vercel.com/new"
echo "    2. Sign in with GitHub"
echo "    3. Import '${REPO_NAME}'"
echo "    4. Click 'Deploy' (no config needed)"
echo "    5. Live at https://${REPO_NAME}.vercel.app"
echo ""
echo "  SECURITY — revoke the token you just used:"
echo "    https://github.com/settings/tokens"
echo "════════════════════════════════════════════════"
