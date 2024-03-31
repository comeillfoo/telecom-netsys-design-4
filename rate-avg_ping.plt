#!/usr/bin/gnuplot --persist
set title 'Зависимость задержки в Discord от пропускной способности'
set xlabel 'Пропускная способность, Кбит/с'
set ylabel 'Задержка (Last ping), мс'
set style data linespoints
set grid ytics mytics xtics mxtics

set xtics autofreq 20
set ytics autofreq 20

print "script name : ", ARG0
print "input file  : ", ARG1

plot ARG1
pause -1

