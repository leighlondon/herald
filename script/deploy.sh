#!/usr/bin/env bash
set -e

COMMAND="vsce"

_check_cmd() {
    if ! [ -x "$(command -v $COMMAND)" ]; then
        echo "deploying requires '$COMMAND'." >&2
        exit 1
    fi
}

_run_cmd() {
    $COMMAND package && $COMMAND publish
}

_check_cmd
_run_cmd
