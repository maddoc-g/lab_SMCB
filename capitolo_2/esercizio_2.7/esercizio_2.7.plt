array data[5] = ['data/output_100K_g0.5.dat', 'data/output_100K_g1.dat', 'data/output_100K_g5.dat', 'data/output_100K_g10.dat', 'data/output_300K_g1.dat']
T = 100.0
T_2 = 300.0

set xlabel 'Time [ps]'
set ylabel 'T_{m} - T [K]'
p data[5] u 1:($6-T_2) w l t 'T = 300K, {/Symbol g} = 1', \
    0. w l dt 2 lc rgb "red" notitle