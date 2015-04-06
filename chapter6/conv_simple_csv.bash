#!/bin/bash

grep '"' ./simple.csv > /dev/null && exit 1
awk -F, '{print $2}' ./simple.csv
