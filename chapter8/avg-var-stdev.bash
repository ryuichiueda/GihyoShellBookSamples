#!/bin/bash

awk '{a+=$1}END{print a/NR}' "$1"          |
tee ./tmp.avg                              |
loopx "$1" -                               |
awk '{a+=($1-$2)^2}END{print a/(NR-1)}'    |
tee ./tmp.var                              |
awk '{print sqrt($1)}'        > ./tmp.stdev

echo avg $(cat ./tmp.avg)
echo var $(cat ./tmp.var)
echo stdev $(cat ./tmp.stdev)
rm ./tmp.{avg,var,stdev}
