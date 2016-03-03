#!/usr/bin/env bash

POLLING_INTERVAL=${POLLING_INTERVAL:-600}
APP_ID=${APP_ID:-435522656639081}
PORT=${PORT:-3000}

# rebuild config every time if necessary
envsubst < "${FB_SLEEP_STATS_HOME}/config/default.json.example" > "${FB_SLEEP_STATS_HOME}/config/development.json"

npm run scrape & > /dev/null

exec "$@"
