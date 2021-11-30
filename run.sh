#!/bin/bash

SERVER_ARGS="--host '' $@"

if [ ! -z "$PORT" ]; then
        SERVER_ARGS="$SERVER_ARGS --port $PORT"
else
        SERVER_ARGS="$SERVER_ARGS --port 80"
fi

if [ ! -z "$FILE" ]; then
        SERVER_ARGS="$SERVER_ARGS $FILE"
else
        SERVER_ARGS="$SERVER_ARGS /default.json"
fi

json-server $SERVER_ARGS
