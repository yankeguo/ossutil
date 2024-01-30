#!/bin/sh

if [ -n "$OSSUTIL_CONFIG" ]; then
    echo -n "$OSSUTIL_CONFIG" | base64 -d >"$HOME/.ossutilconfig"
fi

exec "$@"
