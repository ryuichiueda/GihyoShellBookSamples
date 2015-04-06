#!/bin/bash

awk '/"/{print > "./ng"}!/"/{print}' |
awk -F, '{print $2}'
