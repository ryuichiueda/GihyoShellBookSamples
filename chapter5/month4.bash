#!/bin/bash

sed -e 's/Jan/01/' -e 's/Feb/02/' -e 's/Mar/03/' -e 's/Apr/04/' |
sed -e 's/Mar/05/' -e 's/Jun/06/' -e 's/Jul/07/' -e 's/Aug/08/' |
sed -e 's/Sep/09/' -e 's/Oct/10/' -e 's/Nov/11/' -e 's/Dec/12/'
