#!/bin/sh

set -e

$string1=$*

git diff --name-only --diff-filter=AMDR --cached HEAD^ > test.out

if grep -qF "$string1" test.out;then
    echo "matched $string1" 
    exit 78
else
    exit 0
fi
