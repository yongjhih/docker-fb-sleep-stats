#!/usr/bin/env bash

set -e

POLLING_INTERVAL=${POLLING_INTERVAL:-600}
APP_ID=${APP_ID:-435522656639081}
PORT=${PORT:-3000}

envsubst < "${FB_SLEEP_STATS_HOME}/config/default.json" > "${FB_SLEEP_STATS_HOME}/config/development.json"
rm "${FB_SLEEP_STATS_HOME}/config/default.json" > /dev/null

exec "$@"
