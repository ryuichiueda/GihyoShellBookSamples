#!/bin/bash

###1単語ずつ読み込む###
echo aaa bbb ccc |
while read a b c ; do
   echo $b
done

###1行まるごと読み込む###
echo aaa bbb ccc |
while read s ; do
   echo $s
done
