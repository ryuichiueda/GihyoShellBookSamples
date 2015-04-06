#!/bin/bash

for i in {0..9} ; do
    grep "^$i" TESTDATA.sort_f1_f2 |
    tr -d ,                        |
    sm2 1 2 3 3 > "./tmp/$i" &
done

wait
cat ./tmp/{0..9}
rm ./tmp/{0..9}
