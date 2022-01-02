#!/bin/sh

set -e

FILE=/tmp/xxx.lua

fennel --compile fennel/init.fnl > $FILE
mv $FILE lua/init.lua
