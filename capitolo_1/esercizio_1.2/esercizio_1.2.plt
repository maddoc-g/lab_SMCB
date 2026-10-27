# array data[3] = ['data/Verlet_200ps_10-1ps.dat', 'data/Verlet_200ps_10-2ps.dat', 'data/Verlet_200ps_10-3ps.dat']
# array timesteps[3] = [-1, -2, -3]

# set xlabel 'Time [ps]'
# set ylabel 'Total energy [meV]'
# set yrange [6:23]
# p for [i=1:3] data[i] every 10 using 1:4 w l t sprintf('{/Symbol D}t = 10^{%d} ps', timesteps[i])


array data_long[2] = ['data/Euler_400ps_10-6ps.dat', 'data/Verlet_400ps_10-4ps.dat']
set xlabel 'Time [ps]'
set ylabel 'Total energy [meV]'
set key Left reverse
set key top left
p data_long[1] every 10 u 1:4 w l t 'Euler, {/Symbol D}t = 10^{-6} ps', data_long[2] every 10 u 1:4 w l t 'Verlet, {/Symbol D}t = 10^{-4} ps'

