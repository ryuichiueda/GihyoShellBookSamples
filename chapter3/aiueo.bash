#!/bin/bash

for i in {1..10000} ; do
{
        sleep 0.$RANDOM
        echo $BASHPID あいうえお >> aiueo
} & 
done

wait
