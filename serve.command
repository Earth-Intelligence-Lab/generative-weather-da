#!/bin/bash
# Double-click to start a local server for the thesis project page.
# Serves http://localhost:8080 and opens it in your default browser.
# Press Ctrl+C in this window to stop.

cd "$(dirname "$0")"
PORT=8080

# Find a free port if 8080 is busy
while lsof -iTCP:$PORT -sTCP:LISTEN -n -P >/dev/null 2>&1; do
  PORT=$((PORT + 1))
done

URL="http://localhost:$PORT"
echo "=================================================="
echo "  Thesis project page — local server"
echo "  URL: $URL"
echo "  Press Ctrl+C to stop."
echo "=================================================="

# Open browser after a short delay
( sleep 1 && open "$URL" ) &

# Start Python 3 static server
exec python3 -m http.server "$PORT"
