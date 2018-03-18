#!/usr/local/bin/gnuplot --persist

set datafile separator "\t"
plot '../data/matlab_r41.tsv' using 1:2 with lines
