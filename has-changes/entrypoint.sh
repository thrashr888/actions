#!/bin/sh

set -e

git diff --name-only --diff-filter=AMDR --cached HEAD^ > test.out

if grep -qF "$*" test.out;then
    echo "matched $string1" 
    exit 78
else
    exit 0
fi
