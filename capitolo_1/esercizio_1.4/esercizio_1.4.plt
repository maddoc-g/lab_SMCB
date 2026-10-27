Verlet = 'data/Verlet_50ps_10-3ps.dat'
velocity_Verlet = 'data/velocity_Verlet_50ps_10-3ps.dat'

set xlabel 'Time [ps]'
set ylabel 'Energy [meV]'
set yrange [11.66:11.85]
p Verlet every 40 u 1:4 w l t 'Verlet, {/Symbol D}t = 10^{-3} ps', velocity_Verlet u 1:4 w l t 'velocity Verlet, {/Symbol D}t = 10^{-3} ps'
