set xlabel 'Time [ps]'
set ylabel 'Temperature [K]'
set key top right
p 'output_300ps_10-3ps.dat' u 1:6 w l t 'T_{molecule}', '' u 1:7 w l t 'T_{fluid}'