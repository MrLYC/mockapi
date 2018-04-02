#!/bin/sh

if [[ "${DOCKER_DEBUG}" == "1" ]]; then
    set -x
fi

cd /mockapi
cat << EOF > config.json
{
    "redis": {
        "host": "${REDIS_HOST:-127.0.0.1}",
        "port": ${REDIS_PORT:-6379},
        "password": "${REDIS_PASSWD:-null}",
        "db": ${REDIS_DB:-0}
    },
    "port": ${PORT:-4000}
}
EOF

node server.js
