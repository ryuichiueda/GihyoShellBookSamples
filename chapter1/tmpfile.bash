#!/bin/bash

tmp=/tmp/$$
echo hoge > $tmp-hoge
rm $tmp-*
