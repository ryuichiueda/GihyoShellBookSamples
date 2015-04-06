#!/bin/bash

for p in 富山県 石川県 福井県 ; do
    grep "$p" TESTDATA      |
    awk '{print $3}'        |
    tr -d ,                 |
    numsum                  |
    awk -v p="$p" '{print p,$1}' &
done

wait
