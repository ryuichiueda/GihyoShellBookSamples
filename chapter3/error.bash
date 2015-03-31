#!/bin/bash -e
false | true
echo "止まらない!"
true | false
echo "止まる。"
