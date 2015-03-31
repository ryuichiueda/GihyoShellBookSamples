#!/bin/bash -xv

while : ; do
	inotifywait -e close_write ./
	gcc hoge.c -o hoge
done
