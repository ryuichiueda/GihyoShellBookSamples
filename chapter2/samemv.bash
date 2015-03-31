#!/bin/bash -xv

tmp=/tmp/$$

mkdir -p trash || exit 1

ls file{1,2,3} > $tmp-list

loopx $tmp-list $tmp-list    |
awk '$1<$2'                  |
while read a b ; do
	diff $a $b && mv $b ./trash/
done
rm $tmp-list
