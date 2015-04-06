#!/bin/bash

noexit () {
    echo
    echo -n 'yamada@remote:~$ '
}

trap noexit 2

for i in {1..100} ; do
    echo 'yamada@remote:~$ '
done

while : ; do
    echo -n 'yamada@remote:~$ '
    read str
    sed 's/[^0-9ー ?!]/ポ/g' <<< "$str"
done
