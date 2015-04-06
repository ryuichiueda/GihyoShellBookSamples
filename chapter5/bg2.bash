#!/bin/bash
date "+開始（UNIX時刻）: %s"
cat TESTDATA | awk '{a[$2]++}END{for(k in a){print k,a[k]}}' > ans &
wait
date "+終了（UNIX時刻）: %s"
