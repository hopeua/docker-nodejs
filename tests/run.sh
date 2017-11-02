#!/bin/bash
set -e

DIR="$(dirname "$0")"
. $DIR/functions.sh

start_tests

### Test 1
# Check NodeJS version
###
run_test
echo -n "NodeJS version: "
node -v

### Test 2
# Check NPM version
###
run_test
echo -n "NPM version: "
npm -v

tests_passed
