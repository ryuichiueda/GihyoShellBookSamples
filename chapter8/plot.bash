#!/bin/bash -xv

gnuplot << FIN
set terminal png;
set output 'gnuplot2.png';
plot 'girth-height', 1.05474*x + 62.0263;
FIN
