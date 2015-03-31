#!/bin/bash

for i in {1..10000} ; do
{
        sleep 0.$RANDOM
        echo $BASHPID {1..1000} >> long
} & 
done

wait
