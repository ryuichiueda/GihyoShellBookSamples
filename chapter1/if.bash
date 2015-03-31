#!/bin/bash

if [ ! -e "$1" ] ; then
   echo "ファイルがない!"
elif grep hoge "$1" > /dev/null ; then
    echo hoge!
else
    echo hogeじゃない!
fi
