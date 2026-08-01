#!/bin/bash
# Double-click to push the site to GitHub.
# Repo: https://github.com/morningstar0521/tita

cd "$(dirname "$0")"

echo ""
echo "  publishing sister's day site..."
echo ""

git add -A
git commit -m "update site - $(date '+%d %b %Y, %H:%M')" 2>/dev/null || echo "  (nothing new to commit)"

if git push origin main; then
  echo ""
  echo "  ================================================"
  echo "   pushed."
  echo ""
  echo "   live at:  https://morningstar0521.github.io/tita/"
  echo ""
  echo "   first time only - turn Pages on here:"
  echo "   https://github.com/morningstar0521/tita/settings/pages"
  echo "   Source: 'Deploy from a branch' -> main -> / (root) -> Save"
  echo "   then wait ~60 seconds and open the link above."
  echo "  ================================================"
  echo ""
else
  echo ""
  echo "  push failed - you're probably not signed in to git."
  echo "  easiest fix: open GitHub Desktop, or run:"
  echo "     git push origin main"
  echo "  and sign in when it asks."
  echo ""
fi

echo "  press any key to close..."
read -n 1
