#!/bin/sh

set -e

git diff --name-only --diff-filter=AMDR --cached HEAD^ > test.out

if grep -qF "$*" test.out;then
    echo "matched $*; continue"
    exit 0
else
    echo "no match; stop"
    exit 78
fi
