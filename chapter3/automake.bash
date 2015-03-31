#!/bin/bash -xv

while : ; do
	inotifywait -r -e close_write ./
	make
done
