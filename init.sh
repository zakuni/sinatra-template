#!/bin/sh

SCRIPT_DIR=`dirname $0`
cd $SCRIPT_DIR

echo Delete .git/
rm -rfv .git
git init
