#!/bin/sh

if [[ "${DOCKER_DEBUG}" == "1" ]]; then
    set -x
fi

cd /mockapi
cat << EOF > config.json
{
    "redis": {
        "host": "${REDIS_HOST}",
        "port": ${REDIS_PORT},
        "password": "${REDIS_PASSWD:-null}",
        "db": ${REDIS_DB:-null}
    },
    "port": ${PORT:-4000}
}
EOF

node server.js
