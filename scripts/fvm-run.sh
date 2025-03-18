#!/usr/bin/env bash

CMD="$@"

if [ "$CMD" == "" ]; then
    echo "Please specify a comand to run."
elif ! command -v fvm &> /dev/null; then
    $CMD
else
    fvm $CMD
fi
