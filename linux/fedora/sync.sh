#! /bin/bash
set -e

SCRIPT_PATH=$(dirname $(realpath -s $0))

# Run `createrepo` in $SCRIPT_PATH/*/*/*
for dir in $SCRIPT_PATH/*/*/*; do
    if [ -d "$dir" ]; then
        createrepo "$dir"
    fi
done