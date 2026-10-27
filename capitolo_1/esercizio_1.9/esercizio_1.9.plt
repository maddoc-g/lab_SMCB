set xlabel 'Time [ps]'
set ylabel 'Temperature [K]'
set yrange [0:10]
p 'out.dat' every 10 u 1:6 w l t 'With COM', '' every 10 u 1:7 w l t 'Without COM'