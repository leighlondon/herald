#!/usr/bin/env bash

COMMAND="prettier"

_check_cmd() {
    if ! [ -x "$(command -v $COMMAND)" ]; then
        echo "linting requires '$COMMAND'." >&2
        exit
    fi
}

_run_cmd() {
    $COMMAND --write 'themes/*.json' '*.json' '*.js'
}

_check_cmd
_run_cmd
