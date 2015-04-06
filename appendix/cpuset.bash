#!/bin/bash -xv

num="$(($1 - 1))"
proc="$PPID"
dir="/sys/fs/cgroup/cpuset"

sudo bash << FIN
mkdir -p $dir/test
cp $dir/cpuset.mems $dir/test/
echo "0-$num" > $dir/test/cpuset.cpus
echo "$proc" > $dir/test/tasks
FIN
