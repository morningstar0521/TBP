#!/bin/bash
# Double-click this file to open the website properly.
# YouTube songs only play inside the page when it's served
# over http - opening index.html directly gives "Error 153".

cd "$(dirname "$0")"

PORT=8000
while lsof -i :$PORT >/dev/null 2>&1; do PORT=$((PORT+1)); done

echo ""
echo "  sister's day site running at:  http://localhost:$PORT"
echo "  keep this window open. close it when you're done."
echo ""

(sleep 1 && open "http://localhost:$PORT") &
python3 -m http.server $PORT
