#!/bin/bash -vx
exec 2> /tmp/log
date >&2
echo a b c | self 1 >&2
