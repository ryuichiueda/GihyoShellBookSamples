#!/bin/bash
date "+シェルスクリプト開始（UNIX時刻）: %s"
cat TESTDATA | awk '{a[$2]++}END{for(k in a){print k,a[k]}}' > ans &
date "+シェルスクリプト終了（UNIX時刻）: %s"
